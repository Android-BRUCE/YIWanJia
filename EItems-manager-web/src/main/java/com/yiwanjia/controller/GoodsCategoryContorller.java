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
import org.springframework.web.bind.annotation.RequestParam;
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
        if (tbGoodsCategory.getStatus()==null){
            return TaotaoResult.build(500,"请选择开启状态！");
        }
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
        TaotaoResult result = null;
        for(int id:ids){
           long count =  goodsCategoryService.getCountByCID((long)id);
           if(count != 0){
               result = TaotaoResult.build(500,"无法删除已使用的分类！请删除或者修改相应产品的分类!");
               return result;
           }
        }
        result = goodsCategoryService.deleteGoodsCategory(ids);
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

    /**
     * 跳转至修改页面
     * @return
     */
    @RequestMapping("edit")
    public String jumpToGoodsCategoryPage(@RequestParam(value = "id") Long id,Model model){
        TbGoodsCategory category = goodsCategoryService.getGoodsCategory(id);
        model.addAttribute("category",category);
        return "goodsCategory-edit";
    }

    /**
     * 修改info
     * @param TbGoodsCategory
     * @return
     */
    @RequestMapping("SaveEdit")
    @ResponseBody
    public TaotaoResult updateCategoryInfo(TbGoodsCategory TbGoodsCategory){
        if (TbGoodsCategory.getName()==""){
            TbGoodsCategory.setName(null);
        }
        if (TbGoodsCategory.getStatus()==null){
            return TaotaoResult.build(500,"请选择开启状态！");
        }
        TaotaoResult taotaoResult = goodsCategoryService.updateCategoryInfo(TbGoodsCategory);
        return  taotaoResult;
    }
}
