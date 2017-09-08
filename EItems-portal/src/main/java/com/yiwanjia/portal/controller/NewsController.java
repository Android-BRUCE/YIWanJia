package com.yiwanjia.portal.controller;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.dao.TbNewsMapper;
import com.yiwanjia.pojo.TbNews;
import com.yiwanjia.pojo.TbNewsExample;
import com.yiwanjia.portal.pojo.PageSetting;
import com.yiwanjia.portal.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("news")
public class NewsController {

    @Autowired
    private TbNewsMapper tbNewsMapper;

    @Autowired
    private NewsService newsService;

    @RequestMapping()
    public String getNewsToPage(@RequestParam(value = "page",defaultValue = "1") int page, Model model){
        TbNewsExample example = new TbNewsExample();
        TbNewsExample.Criteria criteria = example.createCriteria();
        //设置查询条件 status为1；
        criteria.andStatusEqualTo(1);
        long totalPage = (tbNewsMapper.countByExample(example)%5 == 0)?tbNewsMapper.countByExample(example)/5:tbNewsMapper.countByExample(example)/5 +1;
        //判断传递的page值是否超过总页数，否则设置为总页数大小
        if(page>totalPage){
            page = new Long(totalPage).intValue();
        }
//开始分页
        PageHelper.startPage(page,5);
        List<TbNews> list = tbNewsMapper.selectByExample(example);
        PageSetting setting = new PageSetting();
        setting.setPage(page);


        setting.setTotalPage(totalPage);
        setting.setRows(list);
        model.addAttribute("paging",setting);

        return "news";
    }


    @RequestMapping("newsdetail")
    public String jumpToNewspages(@RequestParam(value = "id" ) long id,Model model){

        TbNews newsDetail = newsService.getNewsDetail(id);

        Date createtime = newsDetail.getCreatetime();

        SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");

        String dateString = format.format(createtime);

        newsDetail.setDateString(dateString);


        model.addAttribute("news",newsDetail);

        return "newsPages";
    }

}
