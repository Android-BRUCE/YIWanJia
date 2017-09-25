package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbSupport;
import com.yiwanjia.service.SupportService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


public class SupportController {

 
    private SupportService supportService;

    @RequestMapping("updateContent")
    @ResponseBody
    public TaotaoResult updateContent(TbSupport tbSupport){
        com.yiwanjia.common.pojo.TaotaoResult result = supportService.addSupportContent(tbSupport);
        return result;
    }
}

