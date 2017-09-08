package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbSupport;
import com.yiwanjia.portal.service.SupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SupportController {
    @Autowired
    private SupportService supportService;

    @RequestMapping("support")
    public String getSupportContent(Model model){
        TbSupport suport = supportService.getTbSuport();
        model.addAttribute("support",suport);
        return "support";
    }
}
