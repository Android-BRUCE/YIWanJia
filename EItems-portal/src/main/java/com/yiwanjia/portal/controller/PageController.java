package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.portal.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PageController {

    @Autowired
    private BannerService bannerService;
    @RequestMapping("/index")
    public String showIndex(Model model) {
      //  String adJson = contentService.getContentList();
        //model.addAttribute("ad1", adJson);

        List<TbBanner> banner2 = bannerService.getBanner2();
        model.addAttribute("banner",banner2);
        return "index";
    }
}
