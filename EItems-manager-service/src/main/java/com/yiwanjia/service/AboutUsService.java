package com.yiwanjia.service;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.pojo.TbAboutExample;
import com.yiwanjia.pojo.TbAboutWithBLOBs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class AboutUsService {

    @Autowired
    private TbAboutMapper tbAboutMapper;

    /**
     * 修改介绍（标题和介绍内容）
     * @return
     */
    public TaotaoResult updateIntroduction(String title,String content){
        TbAboutWithBLOBs bs = new TbAboutWithBLOBs();
        bs.setContent(content);
        bs.setUpdatetime(new Date());
        bs.setTitle(title);
        TbAboutExample example = new TbAboutExample();
        TbAboutExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(1L);
        int r1 = tbAboutMapper.updateByExampleSelective(bs,example);//可为空的修改。
       if( r1==0){
        return TaotaoResult.build(500,"修改介绍失败！");
       }
        return TaotaoResult.build(200,"修改介绍成功！");
    }

    /**
     * 修改荣誉展示图
     * @param image
     * @return
     */
    public TaotaoResult updateHonourPic(String image){
        TbAboutWithBLOBs bs = new TbAboutWithBLOBs();
        bs.setImage(image);
        bs.setUpdatetime(new Date());
        TbAboutExample example = new TbAboutExample();
        TbAboutExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(1L);
        int r1 = tbAboutMapper.updateByExampleSelective(bs,example);//可为空的修改。
        if( r1==0){
            return TaotaoResult.build(500,"修改荣誉展示失败！");
        }
           return TaotaoResult.build(200,"修改荣誉展示成功！");
    }

    /**
     * 修改企业发展历程文字
     * @return
     */
    public TaotaoResult updateRoad(String introduction){
        TbAboutWithBLOBs bs = new TbAboutWithBLOBs();
        bs.setIntroduction(introduction);
        bs.setUpdatetime(new Date());
        TbAboutExample example = new TbAboutExample();
        TbAboutExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(1L);
        int r1 = tbAboutMapper.updateByExampleSelective(bs,example);//可为空的修改。
        if( r1==0){
            return TaotaoResult.build(500,"修改发展历程展示失败！");
        }
        return TaotaoResult.build(200,"修改发展历程展示成功！");
    }

    public TaotaoResult updateVideo(String vodie){
        TbAboutWithBLOBs bs = new TbAboutWithBLOBs();
        bs.setVideo(vodie);
        bs.setUpdatetime(new Date());
        TbAboutExample example = new TbAboutExample();
        TbAboutExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(1L);
        int r1 = tbAboutMapper.updateByExampleSelective(bs,example);//可为空的修改。
        if( r1==0){
            return TaotaoResult.build(500,"修改视频展示失败！");
        }
        return TaotaoResult.build(200,"修改视频历程展示成功！");
    }
}
