package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbGoodsCategory;
import com.yiwanjia.pojo.TbGoodsCategoryExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbGoodsCategoryMapper {
    long countByExample(TbGoodsCategoryExample example);

    int deleteByExample(TbGoodsCategoryExample example);

    int deleteByGoodsCategoryIds(int[] ids);

    int deleteByPrimaryKey(Long id);

    int insert(TbGoodsCategory record);

    int insertSelective(TbGoodsCategory record);

    List<TbGoodsCategory> selectByExample(TbGoodsCategoryExample example);

    TbGoodsCategory selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbGoodsCategory record, @Param("example") TbGoodsCategoryExample example);

    int updateByExample(@Param("record") TbGoodsCategory record, @Param("example") TbGoodsCategoryExample example);

    int updateByPrimaryKeySelective(TbGoodsCategory record);

    int updateByPrimaryKey(TbGoodsCategory record);
}