package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.ws.RequestWrapper;

@Controller
@RequestMapping("banner")
public class BannerController {

    @Autowired
    private BannerService bannerService;

    /**
     * 添加轮播图信息
     * @param banner
     * @return
     */
    @RequestMapping(value="save",method = RequestMethod.POST)
    @ResponseBody
    public TaotaoResult insertBanner(TbBanner banner){
        TaotaoResult result = bannerService.addBanner(banner);
        return TaotaoResult.ok();
    }

    @RequestMapping("list")
    @ResponseBody
    public EUDataGridResult getBannerList(Integer page,Integer rows){
        EUDataGridResult bannerList = bannerService.getBannerList(page, rows);
        return bannerList;
    }
    @RequestMapping("{id}/delete")
    @ResponseBody
    public TaotaoResult deleteBanner(@PathVariable int id){
        TaotaoResult result = bannerService.deleteBanner(id);
        return result;
    }
}
