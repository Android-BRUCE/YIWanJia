package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbActivity;
import com.yiwanjia.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.jws.WebParam;

@Controller
@RequestMapping("aboutActivity")
public class ActivityController {

    @Autowired
    private ActivityService activityService;

    @RequestMapping("save")
    @ResponseBody
    public TaotaoResult addActivity(TbActivity tbActivity){
        TaotaoResult result = activityService.addAcitivity(tbActivity);
        return result;
    }

    @RequestMapping("getActivityList")
    @ResponseBody
    public EUDataGridResult getActivityList(int page,int rows){
        EUDataGridResult result = activityService.queryActivityList(page, rows);
        return result;
    }

    @RequestMapping("delete/{id}/deleteActivity")
    @ResponseBody
    public TaotaoResult deleteActivity(@PathVariable int[] id){
        TaotaoResult result = activityService.deleteActivityByIds(id);
        return result;
    }

    /**
     * 保存编辑
     * @param TbActivity
     * @return
     */
    @RequestMapping("saveEdit")
    @ResponseBody
    public TaotaoResult saveEditActivityPage(TbActivity TbActivity){
        TaotaoResult result = activityService.saveEditInfo(TbActivity);
        return result;
    }

    /**
     * 携带数据跳转至编辑页面
     * @param id
     * @param Model
     * @return
     */
    @RequestMapping("about_activity_edit")
    public String jumpToActivity(@RequestParam(value = "id") Long id, Model Model){
        TbActivity activity = activityService.getActivityByID(id);
        Model.addAttribute("activity",activity);
        return "about_activity_edit";
    }
}
