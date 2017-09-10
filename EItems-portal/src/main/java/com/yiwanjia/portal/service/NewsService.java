package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbNewsMapper;
import com.yiwanjia.pojo.TbNews;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {

    @Autowired
    private TbNewsMapper tbNewsMapper;

    /**
     * 根据id获取新闻
     * @param id
     * @return
     */
    public TbNews getNewsDetail(long id){
        TbNews tbNews = tbNewsMapper.selectByPrimaryKey(id);
        return tbNews;
    }
}
