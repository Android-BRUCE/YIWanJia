package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbGoodsCategoryMapper;
import com.yiwanjia.dao.TbGoodsMapper;
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
    @Autowired
    private TbGoodsMapper tbGoodsMapper;

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

    /**
     * 根据分类id号查询是否有产品在使用这个分类名称
     * @param id
     * @return
     */
    public long getCountByCID(long id){
        long count = tbGoodsMapper.countByCID(id);
        return count;
    }

    /**
     * 根据id获取分类信息
     * @param id
     * @return
     */
    public TbGoodsCategory getGoodsCategory(long id){
        TbGoodsCategory tbGoodsCategory = tbGoodsCategoryMapper.selectByPrimaryKey(id);
        return tbGoodsCategory;
    }

    /**
     * 修改信息
     * @param TbGoodsCategory
     * @return
     */
    public TaotaoResult updateCategoryInfo(TbGoodsCategory TbGoodsCategory){
        TbGoodsCategory.setUpdatetime(new Date());
        int result = tbGoodsCategoryMapper.updateByPrimaryKeySelective(TbGoodsCategory);
        if(result==0){
            return TaotaoResult.build(500,"修改分类信息失败！");
        }
        return TaotaoResult.build(200,"修改信息成功！");
    }
}

