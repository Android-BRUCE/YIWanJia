package com.yiwanjia.portal.controller;

import com.yiwanjia.dao.TbContactMapper;
import com.yiwanjia.pojo.TbContact;
import com.yiwanjia.pojo.TbContactExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ContactController {
    @Autowired
    protected TbContactMapper tbContactMapper;

    @RequestMapping("contact")
    public String getContact(Model model){
        TbContactExample example = new TbContactExample();
        List<TbContact> list = tbContactMapper.selectByExample(example);
        model.addAttribute("contact",list);
        return "contact";
    }
}
