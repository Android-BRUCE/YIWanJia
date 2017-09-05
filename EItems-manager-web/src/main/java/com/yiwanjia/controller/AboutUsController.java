package com.yiwanjia.controller;

import com.yiwanjia.dao.TbAboutMapper;
import com.yiwanjia.pojo.TbAbout;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * 公司介绍管理
 */
@Controller
public class AboutUsController {
    @Autowired
    private TbAboutMapper tbAboutMapper;


}
