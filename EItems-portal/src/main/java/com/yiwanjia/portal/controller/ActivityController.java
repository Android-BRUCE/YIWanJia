package com.yiwanjia.portal.controller;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.dao.TbActivityMapper;
import com.yiwanjia.pojo.TbActivity;
import com.yiwanjia.pojo.TbActivityExample;
import com.yiwanjia.pojo.TbNews;
import com.yiwanjia.pojo.TbNewsExample;
import com.yiwanjia.portal.pojo.PageSetting;
import com.yiwanjia.portal.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("activity")
public class ActivityController {
    @Autowired
    private TbActivityMapper tbActivityMapper;

    @Autowired
    private ActivityService activityService;

    @RequestMapping()
    public String getNewsToPage(@RequestParam(value = "page",defaultValue = "1") int page, Model model){
        TbActivityExample example = new TbActivityExample();


        long totalPage = (tbActivityMapper.countByExample(example)%5 == 0)?tbActivityMapper.countByExample(example)/5:tbActivityMapper.countByExample(example)/5 +1;
        //判断传递的page值是否超过总页数，否则设置为总页数大小
        if(page>totalPage){
            page = new Long(totalPage).intValue();
        }
//开始分页
        PageHelper.startPage(page,5);
        List<TbActivity> list = tbActivityMapper.selectByExample(example);
        PageSetting setting = new PageSetting();
        setting.setPage(page);


        setting.setTotalPage(totalPage);
        setting.setRows(list);
        model.addAttribute("paging",setting);

        return "activity";
    }

    @RequestMapping("activitydetail")
    public String jumpToNewspages(@RequestParam(value = "id" ) long id,Model model){

        TbActivity activity = activityService.getActivityById(id);

        Date createtime = activity.getCreatetime();

        SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd");

        String dateString = format.format(createtime);

        activity.setDateString(dateString);


        model.addAttribute("activity",activity);

        return "ActivityPages";
    }

}
