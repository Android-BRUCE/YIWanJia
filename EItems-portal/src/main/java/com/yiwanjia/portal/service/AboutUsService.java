package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import com.yiwanjia.pojo.TbAboutExample;
import com.yiwanjia.pojo.TbAboutWithBLOBs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AboutUsService {
    @Autowired
    private TbAboutMapper tbAboutMapper;

//    public TbAboutWithBLOBs getRoadDevolopment(){
//        TbAboutWithBLOBs bs = tbAboutMapper.selectByPrimaryKey(1L);
//        return bs;
//    }

    /**
     *发展路程
     * @return
     */
    public TbAboutWithBLOBs getRoadDevolopment(){
        TbAboutWithBLOBs tbAbout = tbAboutMapper.seleteRoad();
        return tbAbout;
    }

    /**
     * 万家视频
     * @return
     */
    public TbAboutWithBLOBs getVideo(){
        TbAboutWithBLOBs tbAbout = tbAboutMapper.seleteVideo();
        return tbAbout;
    }

    /**
     * 万家介绍文字
     * @return
     */
    public TbAboutWithBLOBs getAboutUsContent(){
        TbAboutWithBLOBs tbAbout = tbAboutMapper.seleteAboutUsContent();
        return tbAbout;
    }

    /**
     * 荣耀展示图
     * @return
     */
    public TbAboutWithBLOBs getAboutUsPic(){
        TbAboutWithBLOBs tbAbout = tbAboutMapper.seleteAboutUsPic();
        return tbAbout;
    }

}
