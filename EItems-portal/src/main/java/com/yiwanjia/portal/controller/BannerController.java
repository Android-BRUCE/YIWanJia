package com.yiwanjia.portal.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.portal.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Administrator on 2017/8/25.
 */
@Controller
public class BannerController {

    @Autowired
    private BannerService bannerService;

    @RequestMapping("/portal/banner/getBanner")
    @ResponseBody
    public TaotaoResult getBanner(){
        TaotaoResult banner = bannerService.getBanner();
        return banner;
    }
}
