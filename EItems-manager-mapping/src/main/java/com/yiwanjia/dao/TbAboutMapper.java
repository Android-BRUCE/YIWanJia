package com.yiwanjia.dao;

import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.pojo.TbAboutExample;
import com.yiwanjia.pojo.TbAboutWithBLOBs;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbAboutMapper {
    long countByExample(TbAboutExample example);

    TbAboutWithBLOBs seleteRoad();
    TbAboutWithBLOBs seleteVideo();
    TbAboutWithBLOBs seleteAboutUsContent();
    TbAboutWithBLOBs seleteAboutUsPic();


    int deleteByExample(TbAboutExample example);

    int deleteByPrimaryKey(Long id);

    int insert(TbAboutWithBLOBs record);

    int insertSelective(TbAboutWithBLOBs record);

    List<TbAboutWithBLOBs> selectByExampleWithBLOBs(TbAboutExample example);

    List<TbAbout> selectByExample(TbAboutExample example);

    TbAboutWithBLOBs selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") TbAboutWithBLOBs record, @Param("example") TbAboutExample example);

    int updateByExampleWithBLOBs(@Param("record") TbAboutWithBLOBs record, @Param("example") TbAboutExample example);

    int updateByExample(@Param("record") TbAbout record, @Param("example") TbAboutExample example);

    int updateByPrimaryKeySelective(TbAboutWithBLOBs record);

    int updateByPrimaryKeyWithBLOBs(TbAboutWithBLOBs record);

    int updateByPrimaryKey(TbAbout record);
}