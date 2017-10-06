package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbJoin;
import com.yiwanjia.service.JoinUsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 加入我们
 */
@Controller
public class JoinUsController {
    @Autowired
    private JoinUsService JoinUsService;

    /**
     * 修改加入我们（设置总是对第一条数据进行取值和修改，故数据库join表只有一条数据）
     * @param TbJoin
     * @return
     */
    @RequestMapping("join/updateJoin")
    @ResponseBody
    public TaotaoResult updateJoinUs(TbJoin TbJoin){
        TbJoin.setId(1L);
        TaotaoResult result = JoinUsService.updateJoinUs(TbJoin);
        return result;
    }
    @RequestMapping("joinUs")
    public String jumptoPage(Model model){
        TbJoin tbJoin = JoinUsService.getTbJoin(1L);
        model.addAttribute("join",tbJoin);
        return "joinUs";
    }
}
