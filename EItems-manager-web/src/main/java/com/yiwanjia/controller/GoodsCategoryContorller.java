package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.service.GoodsCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 产品分类
 */
@Controller
@RequestMapping("goodsCategory")
public class GoodsCategoryContorller {

    @Autowired
    private GoodsCategoryService goodsCategoryService;

    /**
     * 添加分类
     * @param tbGoodsCategory
     * @return
     */
    @ResponseBody
    @RequestMapping("save")
    public TaotaoResult addGoodsCategory(TbGoodsCategory tbGoodsCategory){
        TaotaoResult result = goodsCategoryService.addGoodsCategory(tbGoodsCategory);
        return result;
    }

    /**
     * 删除分类
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping("{ids}/delete")
    public TaotaoResult deleteGoodsCategory(@PathVariable int[] ids){
        TaotaoResult result = goodsCategoryService.deleteGoodsCategory(ids);
        return result;
    }

    /**
     * 获取分类信息
     * @return
     */
    @ResponseBody
    @RequestMapping("getGoodsCategory")
    public EUDataGridResult getGoodsCategoryList(int page,int rows){
        EUDataGridResult list = goodsCategoryService.getGoodsCategoryList(page, rows);
        return list;
    }

    /**
     * ajax获取category信息
     * @return
     */
    @ResponseBody
    @RequestMapping("ajax/query/list")
    public List<TbGoodsCategory> getCategoryList(){
        List<TbGoodsCategory> list = goodsCategoryService.getCategoryList();
        return list;
    }


}
