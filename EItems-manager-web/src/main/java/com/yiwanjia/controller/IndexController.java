package com.yiwanjia.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
    @RequestMapping("/")
    public String showIndex(){ return "/WEB-INF/view/index.jsp"; }

    /**
     * 展示其他页面
     */
    @RequestMapping("/{page}")
    public String showPages(@PathVariable String page){return page;}
}
