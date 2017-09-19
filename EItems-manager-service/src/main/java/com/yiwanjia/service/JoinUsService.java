package com.yiwanjia.service;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbJoinMapper;
import com.yiwanjia.pojo.TbJoin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 加入我们
 */
@Service
public class JoinUsService {

    @Autowired
    private TbJoinMapper tbJoinMapper;

    public TaotaoResult updateJoinUs(TbJoin tbJoin){
        int i = tbJoinMapper.updateByPrimaryKeyWithBLOBs(tbJoin);
        if(i == 0){
            return TaotaoResult.build(500,"修改失败！");
        }
        return TaotaoResult.build(200,"修改成功！");
    }
    public TbJoin getTbJoin(Long id){
        TbJoin tbJoin = tbJoinMapper.selectByPrimaryKey(id);
        return tbJoin;
    }
}
