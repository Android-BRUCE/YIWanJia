package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbSupport2;
import com.yiwanjia.portal.service.Solution2Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class Solution2Controller {

    @Autowired
    private Solution2Service solutionService;

    @RequestMapping("support")
    public String jumpToSolutionPage(Model model){
        List<TbSupport2> tbSupport2s = solutionService.junpToSolution();
        model.addAttribute("solution",tbSupport2s);
        return "support";
    }
    @RequestMapping("supportPages")
    public String jumpToSolutionDetilPage(@RequestParam(value = "id")Integer id,Model model){
        TbSupport2 solutionById = solutionService.getSolutionById(id);
        Date updatetime = solutionById.getUpdatetime();
        SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");

        String dateString = format.format(updatetime);
        solutionById.setUptime(dateString);
        model.addAttribute("solutionDetil",solutionById);
        return "supportPages";
    }
}
