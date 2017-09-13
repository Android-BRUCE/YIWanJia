package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbCase;
import com.yiwanjia.portal.service.CaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class CaseController {
    @Autowired
    private CaseService CaseService;

    @RequestMapping("case")
    public String jumpToPage(Model model){
        List<TbCase> caseList = CaseService.getCaseList();
        model.addAttribute("caseList",caseList);
        return "case";
    }
}
