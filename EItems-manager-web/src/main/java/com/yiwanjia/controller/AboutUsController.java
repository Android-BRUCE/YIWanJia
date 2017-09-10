package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.service.AboutUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 公司介绍管理
 */
@Controller
@RequestMapping("company")
public class AboutUsController {
    @Autowired
    private TbAboutMapper tbAboutMapper;

    @Autowired
    private AboutUsService aboutUsService;

    /**
     * 介绍
     * @param title
     * @param content
     * @return
     */
    @RequestMapping("introduction")
    @ResponseBody
    public TaotaoResult updateIntrodution(String title,String content){
        TaotaoResult result = aboutUsService.updateIntroduction(title, content);
        return result;
    }

    /**
     * 荣耀
     * @param image
     * @return
     */
    @RequestMapping("honourPic")
    @ResponseBody
    public TaotaoResult updateHonourPic(String image){
        TaotaoResult result = aboutUsService.updateHonourPic(image);
        return result;
    }

    /**
     * 发展历程
     * @param introduction
     * @return
     */
    @RequestMapping("road")
    @ResponseBody
    public TaotaoResult updateRoad(String introduction){
        TaotaoResult result = aboutUsService.updateRoad(introduction);
        return result;
    }

    /**
     * 展示视频
     * @param video
     * @return
     */
    @RequestMapping("video")
    @ResponseBody
    public TaotaoResult updateVideo(String video){
        return aboutUsService.updateVideo(video);
    }
}
