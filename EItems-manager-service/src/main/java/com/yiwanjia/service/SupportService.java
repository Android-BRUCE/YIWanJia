package com.yiwanjia.service;

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbSupportMapper;
import com.yiwanjia.pojo.TbSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SupportService {
    @Autowired
    private TbSupportMapper tbSupportMapper;

    public TaotaoResult addSupportContent(TbSupport tbSupport){
        tbSupport.setId(1);
       int result = tbSupportMapper.updateByPrimaryKeySelective(tbSupport);
       if(result == 0){
           return TaotaoResult.build(500,"失败");
       }
return TaotaoResult.build(200,"success!");
    }

    public TbSupport getSupportInfo(Integer id){
        TbSupport tbSupport = tbSupportMapper.selectByPrimaryKey(id);
        return  tbSupport;
    }
}
