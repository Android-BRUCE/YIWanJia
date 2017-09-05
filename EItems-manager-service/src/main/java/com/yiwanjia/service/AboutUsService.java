package com.yiwanjia.service;

import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AboutUsService {

    @Autowired
    private TbAboutMapper tbAboutMapper;


}
