package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbSupportMapper;
import com.yiwanjia.pojo.TbSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SupportService {

    @Autowired
    private TbSupportMapper tbSupportMapper;

    public TbSupport getTbSuport(){
        TbSupport tbSupport = tbSupportMapper.selectByPrimaryKey(1);
        return tbSupport;
    }
}
