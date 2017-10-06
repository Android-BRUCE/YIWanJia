package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbNews;
import com.yiwanjia.service.AboutNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("about")
public class AboutNewsController {

    @Autowired
    private AboutNewsService aboutNewsService;

    @ResponseBody
    @RequestMapping("saveNews")
    public TaotaoResult addNews(TbNews tbNews){
        TaotaoResult result = aboutNewsService.addNews(tbNews);
        return result;
    }
    @ResponseBody
    @RequestMapping("/delete/{id}/deleteNews")
    public TaotaoResult deleteNews(@PathVariable int[] id){
        TaotaoResult result = aboutNewsService.deleteNews(id);
        return result;
    }
    @ResponseBody
    @RequestMapping("query/newsList")
    public EUDataGridResult getNewsList(int page,int rows){
        EUDataGridResult list = aboutNewsService.getNewsList(page, rows);
        return list;
    }

    /**
     * 跳转至编辑页面
     * @param id
     * @param Model
     * @return
     */
    @RequestMapping("edit")
    public String getNewsById(@RequestParam(value = "id") Long id, Model Model){
        TbNews newsById = aboutNewsService.getNewsById(id);
        Model.addAttribute("news",newsById);
        return "about_news_edit";
    }

    /**
     * 修改动作
     * @param TbNews
     * @return
     */
    @RequestMapping("saveEdit")
    @ResponseBody
    public TaotaoResult editSave(TbNews TbNews){
        if (TbNews.getStatus()==null){return TaotaoResult.build(500,"请选择设置状态喔~");}
        TaotaoResult result = aboutNewsService.saveEditInfo(TbNews);
        return result;
    }
}


