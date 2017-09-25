package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.common.utils.ExceptionUtil;
import com.yiwanjia.pojo.TbUser;
import com.yiwanjia.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
    @Autowired
    private LoginService LoginService;

    /**
     * 用户登陆
     *
     * @return
     */
    @RequestMapping(value = "/user/login", method = RequestMethod.POST)
    @ResponseBody
    private TaotaoResult ChackLogin(String username, String password,
                                    HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        try {
            TaotaoResult result = LoginService.checkOutUserInfo(username, password, request, response, session);
            return result;
        } catch (Exception e) {
            e.printStackTrace();
            return TaotaoResult.build(500, ExceptionUtil.getStackTrace(e));
        }
    }

    /**
     * 退出
     */
    @RequestMapping("/user/exit")
    @ResponseBody
    public void exit(HttpServletRequest request) {
        LoginService.exit(request);
    }

    /**
     * 修改密码
     * @param tbUser
     * @param newPassword
     * @return
     */
    @RequestMapping(value = "/user/modify",method = RequestMethod.POST)
    @ResponseBody
    public TaotaoResult checkModify(TbUser tbUser,String newPassword,HttpServletRequest request){
        TaotaoResult result = LoginService.checkName(tbUser);
        if (result.getStatus()==500){return  result;}
        boolean b = LoginService.checkPasswordIsSameAsBefore(tbUser.getPassword(), tbUser.getId());
        if (!b){return TaotaoResult.build(500,"目前密码不正确！");}
        TaotaoResult taotaoResult = LoginService.resetPassword(tbUser.getId(), newPassword);
        if (taotaoResult.getStatus()==200){
            exit(request);
        }
        newPassword = null;
        return taotaoResult;
    }

}
