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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 加载产品controller
 */
@Controller
public class PortfolioController {

    @Autowired
    private TbGoodsMapper tbGoodsMapper;

    @Autowired
    private TbGoodsCategoryMapper categoryMapper;

    /**
     * 获取产品和分类名称
     * @param model
     * @return
     */
    @RequestMapping("portfolio")
    public String jumpToPortfolio(Model model){

        TbGoodsExample tbGoodsExample = new TbGoodsExample();
        List<TbGoods> tbGoods = tbGoodsMapper.selectUnionCategory();//物品对应的分类应该为开启状态

        TbGoodsCategoryExample tbGoodsCategoryExample = new TbGoodsCategoryExample();
        TbGoodsCategoryExample.Criteria criteria = tbGoodsCategoryExample.createCriteria();
        criteria.andStatusEqualTo(1);//分类的状态为1 ： 开启
        List<TbGoodsCategory> categoryList = categoryMapper.selectByExample(tbGoodsCategoryExample);

        model.addAttribute("goods",tbGoods);
        model.addAttribute("category",categoryList);

        return "portfolio";
    }

    /**
     * 产品详情页面。
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("{id}/detilPortfolio")
    public String jumpToPortfolioDetil(@PathVariable double id,Model model){

        TbGoods goods = tbGoodsMapper.selectByPrimaryKey((long)id);
        if (goods==null){
            return "portfolioPage";
        }
        model.addAttribute("list",goods);

        return "portfolioPage";
    }
}
