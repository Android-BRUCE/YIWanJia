package com.yiwanjia.controller;


import com.yiwanjia.dao.TbSupportMapper;
import com.yiwanjia.pojo.TbActivity;
import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.pojo.TbSupport;
import com.yiwanjia.service.ActivityService;
import com.yiwanjia.service.GoodsCategoryService;
import com.yiwanjia.service.GoodsService;
import com.yiwanjia.service.SupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class IndexController {
    @Autowired
    private GoodsService GoodsService;
    @Autowired
    private GoodsCategoryService goodsCategoryService;
    @Autowired
    private SupportService SupportService;
    @Autowired
    private ActivityService activityService;
    @RequestMapping("/")
    public String showIndex(){ return "/WEB-INF/view/index.jsp"; }

    /**
     * 展示其他页面
     */
    @RequestMapping("/{page}")
    public String showPages(@PathVariable String page){return page;}

    @RequestMapping("ServerAndSupport")
    public String getSuportInfo(@RequestParam(value = "id") Integer id,Model Model){
    TbSupport info = SupportService.getSupportInfo(id);
    Model.addAttribute("support",info);
    return "ServerAndSupport";
}
    /**
     * 携带数据跳转至编辑页面
     * @param id
     * @param Model
     * @return
     */
    @RequestMapping("about_activity_edit")
    public String jumpToActivity(@RequestParam(value = "id") Long id, Model Model){
        TbActivity activity = activityService.getActivityByID(id);
        Model.addAttribute("activity",activity);
        return "about_activity_edit";
    }

}
