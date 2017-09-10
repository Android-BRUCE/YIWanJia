package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbSupport;
import com.yiwanjia.pojo.TbSupportExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbSupportMapper {
    long countByExample(TbSupportExample example);

    int deleteByExample(TbSupportExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbSupport record);

    int insertSelective(TbSupport record);

    List<TbSupport> selectByExampleWithBLOBs(TbSupportExample example);

    List<TbSupport> selectByExample(TbSupportExample example);

    TbSupport selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbSupport record, @Param("example") TbSupportExample example);

    int updateByExampleWithBLOBs(@Param("record") TbSupport record, @Param("example") TbSupportExample example);

    int updateByExample(@Param("record") TbSupport record, @Param("example") TbSupportExample example);

    int updateByPrimaryKeySelective(TbSupport record);

    int updateByPrimaryKeyWithBLOBs(TbSupport record);
}