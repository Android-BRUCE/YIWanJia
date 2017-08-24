package com.yiwanjia.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping("/index")
    public String showIndex(Model model) {
      //  String adJson = contentService.getContentList();
        //model.addAttribute("ad1", adJson);

        return "index";
    }
}
