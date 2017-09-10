package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

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
        return result;
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

    /**
     * 获取banner信息跳转到修改页面
     * @param id
     * @param Model
     * @return
     */
    @RequestMapping("edit")
    public String getBnanerById(@RequestParam(value = "id") int id, Model Model){
        TbBanner banner = bannerService.getBannerById(id);
        Model.addAttribute("banner",banner);
        return "banner-edit";
    }

    /**
     * 修改banner
     * @return
     */
    @RequestMapping("saveEdit")
    @ResponseBody
    public TaotaoResult editBanner(TbBanner TbBanner){
        TaotaoResult taotaoResult = bannerService.updateBanner(TbBanner);
        return taotaoResult;
    }
}
