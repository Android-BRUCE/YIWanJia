package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbJoin;
import com.yiwanjia.portal.service.JoinUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 加入我们请求
 */
@Controller
public class JoinUsController {
    @Autowired
private JoinUsService JoinUsService;

    @RequestMapping("joinUs")
    public String getJoinUsContent(Model Model){
        TbJoin content = JoinUsService.getJoinUsContent();
        if (content.getContent() == null || content.getContent() == ""){ content.setContent("糟糕！！！服务出错，稍后再试！或者联系网站！");return "joinUs";}
        Model.addAttribute("content",content);
        return "joinUs";
    }
}
