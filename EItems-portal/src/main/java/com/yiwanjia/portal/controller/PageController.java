package com.yiwanjia.portal.controller;

import com.yiwanjia.dao.TbGoodsCategoryMapper;
import com.yiwanjia.dao.TbGoodsMapper;
import com.yiwanjia.pojo.*;
import com.yiwanjia.portal.service.BannerGoodsService;
import com.yiwanjia.portal.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PageController {

    @Autowired
    private BannerService bannerService;

    @Autowired
    private BannerGoodsService bannerGoodsService;

    @Autowired
    private TbGoodsMapper tbGoodsMapper;

    @RequestMapping("/index")
    public String showIndex(Model model) {
      //  String adJson = contentService.getContentList();
        //model.addAttribute("ad1", adJson);

        List<TbBanner> banner2 = bannerService.getBanner2();
        model.addAttribute("banner",banner2);
        List<TbIndexGoods> indexGoods = bannerGoodsService.getIndexGoodsList();
        model.addAttribute("bannerGoods",indexGoods);


        TbGoodsExample tbGoodsExample = new TbGoodsExample();
        List<TbGoods> tbGoods = tbGoodsMapper.selectUnionCategory();
        model.addAttribute("goods",tbGoods);



        return "index";
    }

    @RequestMapping("/{page}")
    public String showOther(@PathVariable  String page){
        return page;
    }
}
