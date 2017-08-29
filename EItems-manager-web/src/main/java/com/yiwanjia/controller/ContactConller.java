package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbContact;
import com.yiwanjia.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("contact")
public class ContactConller {
    @Autowired
    private ContactService contactService;


    @ResponseBody
    @RequestMapping("addContact")
    public TaotaoResult addContact(TbContact tbContact){
        TaotaoResult result = contactService.addContact(tbContact);
        return result;
    }
/*
    分页获取
 */
    @ResponseBody
    @RequestMapping("contactList")
    public EUDataGridResult getContactList(int page,int rows){
        EUDataGridResult list = contactService.getCOntactList(page, rows);
        return list;
    }

    /**
     * 删除
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("{id}/deleteContact")
    public TaotaoResult deleteContact(@PathVariable int id){


        TaotaoResult result = contactService.deleteContact(id);
        return result;
    }


    @ResponseBody
    @RequestMapping("{id}/deleteContactArray")
    public TaotaoResult deleteContact(@PathVariable int[] id){
        TaotaoResult result = contactService.deleteContactArray(id);
        return result;
    }
}
