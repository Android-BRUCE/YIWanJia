package com.yiwanjia.controller;


import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbIndexGoods;
import com.yiwanjia.service.IndexaGoodsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
@RequestMapping("indexGoods")
public class IndexGoodsController {

    @Autowired
    private IndexaGoodsService indexaGoodsService;

    @RequestMapping("save")
    @ResponseBody
    public TaotaoResult addIndexGoods(TbIndexGoods tbIndexGoods){
        tbIndexGoods.setCaretetime(new Date());
        tbIndexGoods.setUpdatetime(new Date());
        TaotaoResult result = indexaGoodsService.addIndexGoods(tbIndexGoods);
        return result;
    }

    @RequestMapping("list")
    @ResponseBody
    public EUDataGridResult getIndexGoodsList(Integer page,Integer rows){
        EUDataGridResult result = indexaGoodsService.getIndexGoodsList(page, rows);
        return result;
    }
}
