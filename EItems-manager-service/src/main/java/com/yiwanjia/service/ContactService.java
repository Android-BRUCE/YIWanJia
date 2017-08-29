package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbContactMapper;
import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.pojo.TbContact;
import com.yiwanjia.pojo.TbContactExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ContactService {

    @Autowired
    private TbContactMapper tbContactMapper;

    public EUDataGridResult getCOntactList(int page, int rows) {
        TbContactExample example = new TbContactExample();

       PageHelper.startPage(page, rows);
        List<TbContact> contactList = tbContactMapper.selectByExample(example);

        EUDataGridResult dataGridResult = new EUDataGridResult();
        dataGridResult.setRows(contactList);

        PageInfo<TbContact> pageInfo = new PageInfo<>();

        dataGridResult.setTotal(tbContactMapper.countByExample(example));

        return dataGridResult;
    }

    public TaotaoResult addContact(TbContact tbContact) {
        tbContact.setContactcreate(new Date());
        tbContact.setContactupdate(new Date());

        int resout = tbContactMapper.insert(tbContact);
        if (resout == 0) {
            return TaotaoResult.build(500, "添加信息失败！");
        }
        return TaotaoResult.build(200, "添加信息成功！");
    }

    public TaotaoResult deleteContact( int id) {
        int resout = tbContactMapper.deleteByPrimaryKey(id);
        if (resout == 0) {
            return TaotaoResult.build(500, "删除联系方式失败！");
        }
        return TaotaoResult.build(200, "删除联系方式成功！");
    }

    public TaotaoResult deleteContactArray(int[] id) {
        int resout = tbContactMapper.deleteByIdList(id);
        if (resout == 0) {
            return TaotaoResult.build(500, "删除联系方式失败！");
        }
        return TaotaoResult.build(200, "删除联系方式成功！");
    }
}
