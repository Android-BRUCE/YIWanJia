package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbIndexGoods;
import com.yiwanjia.pojo.TbIndexGoodsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbIndexGoodsMapper {
    long countByExample(TbIndexGoodsExample example);

    int deleteByExample(TbIndexGoodsExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbIndexGoods record);

    int insertSelective(TbIndexGoods record);

    List<TbIndexGoods> selectByExample(TbIndexGoodsExample example);

    TbIndexGoods selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbIndexGoods record, @Param("example") TbIndexGoodsExample example);

    int updateByExample(@Param("record") TbIndexGoods record, @Param("example") TbIndexGoodsExample example);

    int updateByPrimaryKeySelective(TbIndexGoods record);

    int updateByPrimaryKey(TbIndexGoods record);
}