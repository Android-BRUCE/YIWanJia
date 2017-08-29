package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbGoodsCategoryMapper;
import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.pojo.TbGoodsCategoryExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 产品分类
 */
@Service
public class GoodsCategoryService {
    @Autowired
    private TbGoodsCategoryMapper tbGoodsCategoryMapper;

    public TaotaoResult addGoodsCategory(TbGoodsCategory tbGoodsCategory){

        tbGoodsCategory.setCreatetime(new Date());
        tbGoodsCategory.setUpdatetime(new Date());
        int resout = tbGoodsCategoryMapper.insert(tbGoodsCategory);
        if(resout == 0){
            return TaotaoResult.build(500,"分类添加失败！");
        }
        return TaotaoResult.build(200,"产品分类添加成功！");
    }

    public TaotaoResult deleteGoodsCategory(int[] ids){
        int resout = tbGoodsCategoryMapper.deleteByGoodsCategoryIds(ids);
        if(resout == 0){
            return TaotaoResult.build(500,"删除分类失败！");
        }
        return TaotaoResult.build(200,"删除分类成功！");
    }

    /**
     * 获取分类信息
     * @return
     */
    public EUDataGridResult getGoodsCategoryList(int page , int rows){

        TbGoodsCategoryExample example = new TbGoodsCategoryExample();
        PageHelper.startPage(page, rows);
        List<TbGoodsCategory> categoryList = tbGoodsCategoryMapper.selectByExample(example);

        EUDataGridResult euDataGridResult = new EUDataGridResult();
        euDataGridResult.setRows(categoryList);
        euDataGridResult.setTotal(tbGoodsCategoryMapper.countByExample(example));

        return euDataGridResult;
    }

    /**
     * ajax请求服务
     * @return
     */
    public List<TbGoodsCategory> getCategoryList(){
        TbGoodsCategoryExample example = new TbGoodsCategoryExample();
        TbGoodsCategoryExample.Criteria criteria = example.createCriteria();
        criteria.andStatusEqualTo(1);
         List<TbGoodsCategory> list = tbGoodsCategoryMapper.selectByExample(example);
        return list;
    }
}

