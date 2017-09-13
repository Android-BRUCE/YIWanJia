package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbAboutWithBLOBs;
import com.yiwanjia.portal.service.AboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AboutUsController {

    @Autowired
    private AboutUsService aboutUsService;

//    @RequestMapping("road")
//    @ResponseBody
//    public TbAboutWithBLOBs getRoad(){
//       TbAboutWithBLOBs bs = aboutUsService.getRoadDevolopment();
//        return bs;
//    }

//        @RequestMapping("road")
//        @ResponseBody
//        public TbAboutWithBLOBs getRoad(){
//            TbAbout roadDevolopment = aboutUsService.getRoadDevolopment();
//            return roadDevolopment;
//        }

    @RequestMapping("aboutDevelopment")
    public String getRoad(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getRoadDevolopment();
        model.addAttribute("road",roadDevolopment);
        return "/WEB-INF/view/aboutDevelopment.bak";
    }

    @RequestMapping("aboutPropaganda")
    public String getVideoPath(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getVideo();
        model.addAttribute("videoPath",roadDevolopment);
        return "/WEB-INF/view/aboutPropaganda.bak";
    }

    @RequestMapping("about")
    public String getAboutUs(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getAboutUsContent();
        model.addAttribute("aboutUsContent",roadDevolopment);
        return "/WEB-INF/view/about.bak";
    }

    @RequestMapping("aboutHonour")
    public String getaboutUsPic(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getAboutUsPic();
        model.addAttribute("aboutUsPic",roadDevolopment);
        return "/WEB-INF/view/aboutHonour.bak";
    }

}
