package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbActivityMapper;
import com.yiwanjia.pojo.TbActivity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ActivityService {

    @Autowired
    private TbActivityMapper tbActivityMapper;

    public TbActivity getActivityById(long id){

        TbActivity tbActivity = tbActivityMapper.selectByPrimaryKey(id);

        return tbActivity;
    }
}
