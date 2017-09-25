package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbSupport2;
import com.yiwanjia.pojo.TbSupport2Example;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface TbSupport2Mapper {
    int countByExample(TbSupport2Example example);

    int deleteByExample(TbSupport2Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbSupport2 record);

    int insertSelective(TbSupport2 record);

    List<TbSupport2> selectByExampleWithBLOBs(TbSupport2Example example);

    List<TbSupport2> selectByExample(TbSupport2Example example);

    TbSupport2 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbSupport2 record, @Param("example") TbSupport2Example example);

    int updateByExampleWithBLOBs(@Param("record") TbSupport2 record, @Param("example") TbSupport2Example example);

    int updateByExample(@Param("record") TbSupport2 record, @Param("example") TbSupport2Example example);

    int updateByPrimaryKeySelective(TbSupport2 record);

    int updateByPrimaryKeyWithBLOBs(TbSupport2 record);

    int updateByPrimaryKey(TbSupport2 record);
}