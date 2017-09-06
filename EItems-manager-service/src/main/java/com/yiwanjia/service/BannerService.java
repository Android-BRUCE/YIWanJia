package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;

import com.yiwanjia.dao.TbBannerMapper;
import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.pojo.TbBannerExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Service
public class BannerService{
    @Autowired
    private TbBannerMapper tbBannerMapper;

    /**
     * 添加轮播图信息
     * @param banner
     * @return
     */
    public TaotaoResult addBanner(TbBanner banner) {
        banner.setCreatetime(new Date());
        banner.setUpdatetime(new Date());
       // banner.setStatus(1);
        tbBannerMapper.insert(banner);
        return TaotaoResult.build(200,"新增轮播图成功啦！");
    }

    /**
     * 分页获取轮播图信息
     * @param page 页码
     * @param rows 数据行数
     * @return EUDataGridResult
     */
    public EUDataGridResult getBannerList(int page,int rows){
        //创建查询条件
        TbBannerExample tbBannerExample = new TbBannerExample();
        //分页处理
        PageHelper.startPage(page,rows);
        List<TbBanner> list = tbBannerMapper.selectByExample(tbBannerExample);
        //创建返回值对象
        EUDataGridResult euDataGridResult = new EUDataGridResult();
        euDataGridResult.setRows(list);
        //取记录总条数
     //   PageInfo<TbBanner> pageInfo = new PageInfo<>();
        euDataGridResult.setTotal(tbBannerMapper.countByExample(tbBannerExample));
        //返回查询结果
        return euDataGridResult;
    }

    /**
     * 根据删除banner信息
     * @param id
     * @return
     */
    public TaotaoResult deleteBanner( int id ){
        int sout = tbBannerMapper.deleteByPrimaryKey(id);
        if(sout==0){
            return TaotaoResult.build(500,"删除失败！");
        }
        return TaotaoResult.build(200,"删除成功！");
    }

    /**
     * 更新banner信息
     * @param tbBanner
     * @return TaotaoResult 返回更新是否成功
     */
    public TaotaoResult updateBanner(TbBanner tbBanner){

        //设置更新时间
        tbBanner.setUpdatetime(new Date());
//        int id = tbBanner.getId();
//        TbBannerExample example = new TbBannerExample();
//        TbBannerExample.Criteria criteria = example.createCriteria();
//        criteria.andIdEqualTo(id);
        int resultCode = tbBannerMapper.updateByPrimaryKeySelective(tbBanner);
        /**
         * 判断返回值 返回更新是否成功信息
         */
        if(resultCode == 0){
            return TaotaoResult.build(500,"更新失败！");
        }
        return TaotaoResult.build(200,"更新成功!");
    }

}
