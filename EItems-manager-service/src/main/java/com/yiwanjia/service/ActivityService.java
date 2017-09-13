package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbActivityMapper;
import com.yiwanjia.pojo.TbActivity;
import com.yiwanjia.pojo.TbActivityExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class ActivityService {
    @Autowired
    private TbActivityMapper activityMapper;

    public TaotaoResult addAcitivity(TbActivity tbActivity){
        tbActivity.setCreatetime(new Date());
        tbActivity.setUpdatetime(new Date());
        int result = activityMapper.insert(tbActivity);
        if(result == 0){
            return TaotaoResult.build(500,"活动添加失败！");
        }
        return TaotaoResult.build(200,"活动添加成功！");
    }

    public TaotaoResult deleteActivityByIds(int[] id){
        int result = activityMapper.deleteByIdList(id);
        if(result == 0){
            return TaotaoResult.build(500,"活动删除失败！");
        }
        return TaotaoResult.build(200,"活动删除成功！");
    }

    public EUDataGridResult queryActivityList(int page,int rows){
        TbActivityExample example = new TbActivityExample();
        PageHelper.startPage(page,rows);
        List<TbActivity> list = activityMapper.selectByExample(example);
        EUDataGridResult result = new EUDataGridResult();
        result.setRows(list);
        result.setTotal(activityMapper.countByExample(example));

        return result;
    }

    /**
     * 通过activity的id获取information
     * @param id
     * @return
     */
    public TbActivity getActivityByID(Long id){
        TbActivity tbActivity = activityMapper.selectByPrimaryKey(id);
        return tbActivity;
    }

    /**
     *
     * @param TbActivity
     * @return
     */
    public TaotaoResult saveEditInfo(TbActivity TbActivity){
        int i = activityMapper.updateByPrimaryKeySelective(TbActivity);
        if(i == 0){return TaotaoResult.build(500,"活动修改失败！");}
        return TaotaoResult.build(200,"活动修改成功！");
    }
}
