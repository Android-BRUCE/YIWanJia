package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbIndexGoodsMapper;
import com.yiwanjia.pojo.TbGoodsExample;
import com.yiwanjia.pojo.TbIndexGoods;
import com.yiwanjia.pojo.TbIndexGoodsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerGoodsService {

    @Autowired
    private TbIndexGoodsMapper tbIndexGoodsMapper;


    /**
     * 获取首页中部轮播图
     * @return
     */
    public List<TbIndexGoods> getIndexGoodsList(){
        TbIndexGoodsExample example = new TbIndexGoodsExample();
        List<TbIndexGoods> tbIndexGoodsList = tbIndexGoodsMapper.selectByExample(example);
        return tbIndexGoodsList;
    }
}
