package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbNews;
import com.yiwanjia.service.AboutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("about")
public class AboutController {

    @Autowired
    private AboutService aboutService;

    @ResponseBody
    @RequestMapping("saveNews")
    public TaotaoResult addNews(TbNews tbNews){
        TaotaoResult result = aboutService.addNews(tbNews);
        return result;
    }
    @ResponseBody
    @RequestMapping("/delete/{id}/deleteNews")
    public TaotaoResult deleteNews(@PathVariable int[] id){
        TaotaoResult result = aboutService.deleteNews(id);
        return result;
    }
    @ResponseBody
    @RequestMapping("query/newsList")
    public EUDataGridResult getNewsList(int page,int rows){
        EUDataGridResult list = aboutService.getNewsList(page, rows);
        return list;
    }
}


