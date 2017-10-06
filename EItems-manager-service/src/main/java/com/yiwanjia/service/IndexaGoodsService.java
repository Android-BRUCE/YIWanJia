package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbIndexGoodsMapper;
import com.yiwanjia.pojo.TbIndexGoods;
import com.yiwanjia.pojo.TbIndexGoodsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class IndexaGoodsService {

    @Autowired
    private TbIndexGoodsMapper tbIndexGoodsMapper;

    /**
     * 添加主页产品轮播展示信息
     * @param tbIndexGoods
     * @return TaotaoResult
     */
    public TaotaoResult addIndexGoods(TbIndexGoods tbIndexGoods){
        int resoutCode = tbIndexGoodsMapper.insert(tbIndexGoods);
        if(resoutCode == 0){
            return TaotaoResult.build(500,"添加失败！");
        }
        return TaotaoResult.build(200,"添加成功！");
    }

    public TaotaoResult deleteIndexGoods(long id){
        TbIndexGoodsExample example = new TbIndexGoodsExample();
        TbIndexGoodsExample.Criteria criteria = example.createCriteria();
        criteria.andIdEqualTo(id);
        int resoutCode = tbIndexGoodsMapper.deleteByExample(example);
        if(resoutCode == 0){
            return TaotaoResult.build(500,"删除失败！");
        }
        return TaotaoResult.build(200,"删除成功！");
    }

    /**
     * 修改信息
     * @return
     */
    public TaotaoResult updateIndexGoods(TbIndexGoods tbIndexGoods){
//        TbIndexGoodsExample example = new TbIndexGoodsExample();
//        TbIndexGoodsExample.Criteria criteria = example.createCriteria();
//        criteria.andIdEqualTo(tbIndexGoods.getId());
        //
        tbIndexGoods.setUpdatetime(new Date());

       int resoutCode = tbIndexGoodsMapper.updateByPrimaryKeySelective(tbIndexGoods);
        if(resoutCode == 0){
            return TaotaoResult.build(500,"更新失败！");
        }
        return TaotaoResult.build(200,"更新成功！");
    }

    /**
     * 获取indexGoods List集合
     * @return
     */
    public EUDataGridResult getIndexGoodsList(int page,int rows){
        TbIndexGoodsExample example = new TbIndexGoodsExample();
        //开始分页
        PageHelper.startPage(page,rows);

        List<TbIndexGoods> tbIndexGoods = tbIndexGoodsMapper.selectByExample(example);
        EUDataGridResult euDataGridResult = new EUDataGridResult();
        euDataGridResult.setRows(tbIndexGoods);
        //获取分页信息
  //      PageInfo<TbIndexGoods> pageInfo = new PageInfo<>();
        //设置总记录数
        euDataGridResult.setTotal(tbIndexGoodsMapper.countByExample(example));

        return euDataGridResult;
    }
}
