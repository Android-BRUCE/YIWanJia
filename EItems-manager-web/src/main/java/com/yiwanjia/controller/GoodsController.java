package com.yiwanjia.controller;


import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("goods")
public class GoodsController {


    @Autowired
    private GoodsCategoryService goodsCategoryService;


    /**
     * ajax在分类页面无法使用？解决：跳转携带数据；
     * @return
     */
    @RequestMapping("jump/goodsAddPage")
    public String jumpToGoodsCategoryPage(Model model){
        List<TbGoodsCategory> list = goodsCategoryService.getCategoryList();
        model.addAttribute("goodsCategory",list);
        return "goods-add";
    }

    @RequestMapping("save")
    @ResponseBody
    public TaotaoResult addGoods(TbGoods tbGoods){
        System.out.println("tbGoods = [" + tbGoods + "]");
        return TaotaoResult.ok();
    }
}
