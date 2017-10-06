package com.yiwanjia.service;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.common.utils.JsonUtils;
import com.yiwanjia.dao.JedisClientReName;
import com.yiwanjia.dao.TbUserMapper;
import com.yiwanjia.pojo.TbUser;
import com.yiwanjia.pojo.TbUserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;
import org.springframework.util.StringUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
public class LoginService {

    @Value("${DOMAIN_BASE_USRL}")
    public String DOMAIN_BASE_USRL;

    @Value("${PAGE_LOGIN}")
    public String PAGE_LOGIN;

    @Value("${COOKIE_NAME}")
    public String COOKIE_NAME;

    @Value("${COOKIE_NAME_BEFORE}")
    public String COOKIE_NAME_BEFORE;

    @Value("${USER__COOKIE_KEY}")
    public String USER__COOKIE_KEY;

    @Autowired
    private TbUserMapper TbUserMapper;

    @Autowired
    private JedisClientReName jedisClient2;

    /**
     * 验证登陆
     *
     * @param username
     * @param password
     * @param request
     * @param response
     * @return
     */
    public TaotaoResult checkOutUserInfo(String username, String password,
                                         HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        TbUserExample example = new TbUserExample();
        TbUserExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(username);
        List<TbUser> list = TbUserMapper.selectByExample(example);
        //如果无此用户
        if (list == null || list.size() == 0) {
            return TaotaoResult.build(500, "用户名或密码错误");
        }
        TbUser user = list.get(0);
        //比对密码
        if (!DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())) {
            return TaotaoResult.build(500, "用户名或密码错误");
        }
        TbUser tbUser1 = new TbUser();
        tbUser1.setId(user.getId());
        tbUser1.setStatus(1);
        int i = TbUserMapper.updateByPrimaryKeySelective(tbUser1);
        if (i == 0) {
            return TaotaoResult.build(500, "账号异常，请联系管理员！");
        }
        password = null;
        //生成token
        String toke = UUID.randomUUID().toString();
        //写入将用户信息写入jedis，设置过期时间 ，目前写入session中
        // session.setAttribute(toke,user);


        String marking = "";//标记是否已经在服务器存在信息


        try {
try{

    if (jedisClient2.get(USER__COOKIE_KEY + COOKIE_NAME + user.getName()) != null) {
        String nono = jedisClient2.get(USER__COOKIE_KEY + COOKIE_NAME + user.getName());//上次登陆的信息
        TbUser tbUser = JsonUtils.jsonToPojo(nono, TbUser.class);//转成TbUser
        marking = "上次登陆时间：" + tbUser.getLoginTime();
    }

}catch (Exception e){
    e.printStackTrace();
    System.out.println("未从redis获取到");
}

            user.setCookie(COOKIE_NAME_BEFORE + toke);//将目前cookie设置到user中，用于识别是否当前登录人是否同一处。

            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH时mm分ss秒");
            String time = simpleDateFormat.format(new Date());
            user.setLoginTime(time);//将现在的登陆时间记录。
            jedisClient2.set(USER__COOKIE_KEY + COOKIE_NAME + user.getName(), JsonUtils.objectToJson(user));//将信息存入redis中
            jedisClient2.expire(USER__COOKIE_KEY + COOKIE_NAME + user.getName(), 86400);//12小时过期删除
        } catch (Exception e) {
            return TaotaoResult.build(500, "cookie服务异常，请联系管理员！");
        }

        //id和name重新放入一个session中。
        TbUser tbUser = new TbUser();
        tbUser.setId(user.getId());
        tbUser.setName(user.getName());
        session.setAttribute("user", tbUser);

        //添加写cookie的逻辑，cookie的有效期是关闭浏览器就失效
        //  CookieUtils.setCookie(request,response,"WANJIAKEJI_wanjiakejia",toke);
        try {
            toke = URLEncoder.encode(toke, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return TaotaoResult.build(500, "异常，请联系管理员！");
        }
        Cookie cookie = new Cookie(COOKIE_NAME, toke + "_" + username);
        cookie.setMaxAge(-1);
        cookie.setPath("/");//必须设置路径，否则addCookie会失败！
        response.addCookie(cookie);
        //返回token
        if (marking == null) {
            return TaotaoResult.build(200, "登陆成功");
        }
        return TaotaoResult.build(200, "登陆成功！ " + marking);
    }

    /**
     * 根据kookieVlue值从session中获取user信息。
     *
     * @param request
     * @param cookie
     * @return
     */
    public TaotaoResult getUserByCookie(HttpServletRequest request, String cookie) {
        //TbUser attribute = (TbUser) request.getSession().getAttribute(cookie);

        int i = cookie.indexOf("_") + 1;
        int ii = cookie.length();
        String loginName = cookie.substring(i, ii);//获取当前用户名字
        String loginToken = cookie.substring(0, i - 1);//获取当前token值
        String serviceUserInfo = jedisClient2.get(USER__COOKIE_KEY + COOKIE_NAME + loginName);//获取redis的user信息
        if (StringUtils.isEmpty(serviceUserInfo)) {
            return TaotaoResult.build(500, "未登陆！");
        }
        TbUser tbUser = JsonUtils.jsonToPojo(serviceUserInfo, TbUser.class);
        if (tbUser.getCookie().equals(COOKIE_NAME_BEFORE + loginToken)) {//比对当前用户的cookie和服务器上的cookie是否一样
            return TaotaoResult.build(200, "登陆成功！", tbUser);
        }
        //不同则返回登陆界面。
        return TaotaoResult.build(500, "此用户已经登陆！");
    }

    //退出
    public void exit(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();//获取所有kookie值
        String cookie = null;
        //寻找匹配cookie值
        if (cookies.length > 0) {
            for (int i = 0; i < cookies.length; i++) {
                if (cookies[i].getName().equals(COOKIE_NAME)) {
                    // cookieVaule= URLDecoder.decode(cookies[i].getValue(), "UTF-8");//也能取到cookie值。
                    String value = cookies[i].getValue();
                    cookie = value;
                }
            }
        }
        int i = cookie.indexOf("_") + 1;
        int ii = cookie.length();
        String loginName = cookie.substring(i, ii);//获取当前用户名字
        String loginToken = cookie.substring(0, i - 1);//获取当前token值
        jedisClient2.del(USER__COOKIE_KEY + COOKIE_NAME + loginName);//删除key；
        //String serviceUserInfo = jedisClient2.get(USER__COOKIE_KEY + COOKIE_NAME + loginName);//获取redis的user信息
    }

    //修改密码
    public TaotaoResult resetPassword(Long id, String newPassword) {
//生成新的MD5
        String s = DigestUtils.md5DigestAsHex(newPassword.getBytes());
        newPassword = null;//置空
        TbUser tbUser = new TbUser();
        tbUser.setId(id);
        tbUser.setPassword(s);
        tbUser.setUpdatetime(new Date());
        int i = TbUserMapper.updateByPrimaryKeySelective(tbUser);
        if (i == 0) {
            return TaotaoResult.build(400, "密码修改失败！");
        }
        return TaotaoResult.build(200, "密码修改成功！");
    }
    //创建用户

    //重名检查//return false is same as before;
    public TaotaoResult checkName(TbUser tbUser) {
        TbUserExample tbUserExample = new TbUserExample();
        TbUserExample.Criteria criteria = tbUserExample.createCriteria();
        criteria.andNameEqualTo(tbUser.getName());
        List<TbUser> tbUsers = TbUserMapper.selectByExample(tbUserExample);
        if (tbUsers != null && tbUsers.size() != 0) {
            for (int i = 0; i < tbUsers.size(); i++) {
                if (tbUsers.get(i).getId() != tbUser.getId() && tbUsers.get(i).getName().equals(tbUser.getName())) {//id不同，但是name相同
                    return TaotaoResult.build(500, "已经有相同的名字了！");
                }
            }
        }
        return TaotaoResult.build(200, "ok!");
    }

    //检查是否与之前密码相同
    public boolean checkPasswordIsSameAsBefore(String password, Long id) {

        TbUser tbUser = TbUserMapper.selectByPrimaryKey(id);

        if (!tbUser.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))) {//不同 返回false;
            return false;
        }
        return true;
    }
}
