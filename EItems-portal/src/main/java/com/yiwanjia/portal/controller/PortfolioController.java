package com.yiwanjia.portal.controller;

import com.yiwanjia.dao.TbGoodsCategoryMapper;
import com.yiwanjia.dao.TbGoodsMapper;
import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.pojo.TbGoodsCategoryExample;
import com.yiwanjia.pojo.TbGoodsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class PortfolioController {

    @Autowired
    private TbGoodsMapper tbGoodsMapper;

    @Autowired
    private TbGoodsCategoryMapper categoryMapper;


    @RequestMapping("portfolio")
    public String jumpToPortfolio(Model model){

        TbGoodsExample tbGoodsExample = new TbGoodsExample();
        List<TbGoods> tbGoods = tbGoodsMapper.selectByExample(tbGoodsExample);

        TbGoodsCategoryExample tbGoodsCategoryExample = new TbGoodsCategoryExample();
        List<TbGoodsCategory> categoryList = categoryMapper.selectByExample(tbGoodsCategoryExample);

        model.addAttribute("goods",tbGoods);
        model.addAttribute("category",categoryList);

        return "portfolio";
    }
}
