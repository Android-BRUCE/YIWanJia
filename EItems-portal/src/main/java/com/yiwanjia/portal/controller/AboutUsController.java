package com.yiwanjia.portal.controller;

import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.pojo.TbAboutWithBLOBs;
import com.yiwanjia.portal.service.AboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
        return "aboutDevelopment";
    }

    @RequestMapping("aboutPropaganda")
    public String getVideoPath(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getVideo();
        model.addAttribute("videoPath",roadDevolopment);
        return "aboutPropaganda";
    }

    @RequestMapping("about")
    public String getAboutUs(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getAboutUsContent();
        model.addAttribute("aboutUsContent",roadDevolopment);
        return "about";
    }

    @RequestMapping("aboutHonour")
    public String getaboutUsPic(Model model){
        TbAboutWithBLOBs roadDevolopment = aboutUsService.getAboutUsPic();
        model.addAttribute("aboutUsPic",roadDevolopment);
        return "aboutHonour";
    }

}
