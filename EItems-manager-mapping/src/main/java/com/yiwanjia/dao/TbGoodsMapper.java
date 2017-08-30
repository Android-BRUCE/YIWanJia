package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbGoods;
import com.yiwanjia.pojo.TbGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbGoodsMapper {
    long countByExample(TbGoodsExample example);

    List<TbGoods> selectUnionCategory();

    int deleteByExample(TbGoodsExample example);

    int deleteByPrimaryKey(Long id);

    int deleteByGoodsIds(int[] ids);

    int insert(TbGoods record);

    int insertSelective(TbGoods record);

    List<TbGoods> selectByExampleWithBLOBs(TbGoodsExample example);

    List<TbGoods> selectByExample(TbGoodsExample example);

    TbGoods selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByExampleWithBLOBs(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByExample(@Param("record") TbGoods record, @Param("example") TbGoodsExample example);

    int updateByPrimaryKeySelective(TbGoods record);

    int updateByPrimaryKeyWithBLOBs(TbGoods record);

    int updateByPrimaryKey(TbGoods record);
}