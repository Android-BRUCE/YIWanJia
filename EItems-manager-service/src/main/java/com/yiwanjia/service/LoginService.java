package com.yiwanjia.service;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.common.utils.CookieUtils;
import com.yiwanjia.dao.TbUserMapper;
import com.yiwanjia.pojo.TbUser;
import com.yiwanjia.pojo.TbUserExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
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

    @Autowired
    private TbUserMapper TbUserMapper;

    /**
     * 验证登陆
     * @param username
     * @param password
     * @param request
     * @param response
     * @return
     */
    public TaotaoResult checkOutUserInfo(String username, String password,
                                           HttpServletRequest request, HttpServletResponse response,HttpSession session){
        TbUserExample example = new TbUserExample();
        TbUserExample.Criteria criteria = example.createCriteria();
        criteria.andNameEqualTo(username);
        List<TbUser> list = TbUserMapper.selectByExample(example);
        //如果无此用户
        if(list == null || list.size() == 0){
            return TaotaoResult.build(400,"用户名或密码错误");
        }
        TbUser user = list.get(0);
        //比对密码
        if(!DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())){
            return TaotaoResult.build(400,"用户名或密码错误");
        }
        password = null;
        //生成token
        String toke = UUID.randomUUID().toString();
        //写入将用户信息写入jedis，设置session的过期时间 ，目前写入session中
        session.setAttribute(toke,user);
//id和name重新放入一个session中。
        TbUser tbUser = new TbUser();
        tbUser.setId(user.getId());
        tbUser.setName(user.getName());
        session.setAttribute("user",tbUser);

        //添加写cookie的逻辑，cookie的有效期是关闭浏览器就失效
      //  CookieUtils.setCookie(request,response,"WANJIAKEJI_wanjiakejia",toke);
        try {
            toke = URLEncoder.encode(toke, "utf-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        Cookie cookie = new Cookie(COOKIE_NAME,toke);
       cookie.setMaxAge(-1);
        cookie.setPath("/");//必须设置路径，否则addCookie会失败！
       response.addCookie(cookie);
        //返回token
        return TaotaoResult.ok();
    }

    /**
     * 根据kookieVlue值从session中获取user信息。
     * @param request
     * @param cookie
     * @return
     */
    public TbUser getUserByCookie(HttpServletRequest request,String cookie){
      //  String cookieValue = CookieUtils.getCookieValue(request, cookie);
        TbUser attribute = (TbUser) request.getSession().getAttribute(cookie);
        return attribute;
    }

    //退出
    public void exit( HttpServletRequest request){
        Cookie[] cookies = request.getCookies();//获取所有kookie值
        String cookieVaule = null;
        //寻找匹配cookie值
        if (cookies.length > 0){
            for(int i= 0;i<cookies.length; i++){
                if (cookies[i].getName().equals(COOKIE_NAME)){
                    // cookieVaule= URLDecoder.decode(cookies[i].getValue(), "UTF-8");//也能取到cookie值。
                    String value = cookies[i].getValue();
                    cookieVaule = value;
                }
            }
        }
        request.getSession().removeAttribute(cookieVaule);
    }
    //修改密码
    public TaotaoResult resetPassword(Long id,String newPassword){
//生成新的MD5
        String s = DigestUtils.md5DigestAsHex(newPassword.getBytes());
        newPassword = null;//置空
        TbUser tbUser = new TbUser();
        tbUser.setId(id);
        tbUser.setPassword(s);
        tbUser.setUpdatetime(new Date());
        int i = TbUserMapper.updateByPrimaryKeySelective(tbUser);
        if(i == 0){return TaotaoResult.build(400,"密码修改失败！");}
        return TaotaoResult.build(200,"密码修改成功！");
    }
    //创建用户

    //重名检查//return false is same as before;
    public TaotaoResult checkName(TbUser tbUser){
        TbUserExample tbUserExample = new TbUserExample();
        TbUserExample.Criteria criteria = tbUserExample.createCriteria();
        criteria.andNameEqualTo(tbUser.getName());
        List<TbUser> tbUsers = TbUserMapper.selectByExample(tbUserExample);
        if (tbUsers != null&&tbUsers.size()!=0){
            for (int i = 0;i<tbUsers.size();i++){
                if (tbUsers.get(i).getId() != tbUser.getId() && tbUsers.get(i).getName().equals(tbUser.getName())){//id不同，但是name相同
                    return TaotaoResult.build(500,"已经有相同的名字了！");
                }
            }
        }
        return TaotaoResult.build(200,"ok!");
    }
    //检查是否与之前密码相同
    public boolean checkPasswordIsSameAsBefore(String password,Long id){

        TbUser tbUser = TbUserMapper.selectByPrimaryKey(id);

        if (!tbUser.getPassword().equals(DigestUtils.md5DigestAsHex(password.getBytes()))){//不同 返回false;
            return false;
        }
        return true;
    }
}
