package com.yiwanjia.intercepter;

import com.yiwanjia.pojo.TbUser;
import com.yiwanjia.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginIntercepter implements HandlerInterceptor {

    @Autowired
    private LoginService LoginService;
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        //获取从kookie中的tokenTT_TOKEN，有问题
      // String token = CookieUtils.getCookieValue(request, "WANJIAKEJI_wanjiakejia");
      try{
        Cookie[] cookies = request.getCookies();//获取所有kookie值
          if(cookies.length<=0){ response.sendRedirect("login.html"+"");return false;}
        String cookieVaule = null;
        //寻找匹配cookie值
        if (cookies.length > 0){
            for(int i= 0;i<cookies.length; i++){
                if (cookies[i].getName().equals("WANJIAKEJI_wanjiakejia")){
                   // cookieVaule= URLDecoder.decode(cookies[i].getValue(), "UTF-8");//也能取到cookie值。
                   String value = cookies[i].getValue();
                   cookieVaule = value;
                }
            }
        }


    //判断cookie是否取到值。
        if (cookieVaule == null ||cookieVaule==""){
            //跳转到登录页面，把用户请求的url作为参数传递给登录页面。
//            response.sendRedirect(CaseService.login_DOMAIN_BASE_USRL + CaseService.login_PAGE_LOGIN
//                    + "?redirect=" + request.getRequestURL());redirect=" + request.getRequestURL()需要跳转的地址如成功
           // response.sendRedirect("http://192.168.1.109:8080");
            response.sendRedirect("login.html"+"");
            return false;
        }

        //根据token换取用户信息
        TbUser user = LoginService.getUserByCookie(request, cookieVaule);
        if(user.getName()==""||user == null||user.getName()==null){
            response.sendRedirect("login.html"+"");
            return false;
        }
        request.setAttribute("user", user);
        return true;
      }catch (Exception e){
          response.sendRedirect("login.html"+"");
          return false;
      }
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
    //handler执行之后，ModelAndView之前

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
