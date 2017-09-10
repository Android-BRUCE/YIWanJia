package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbJoinMapper;
import com.yiwanjia.pojo.TbJoin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 加入我们服务
 */
@Service
public class JoinUsService {

    @Autowired
    private TbJoinMapper TbJoinMapper;

     public TbJoin getJoinUsContent(){
         TbJoin tbJoin = TbJoinMapper.selectByPrimaryKey(1L);
         return tbJoin;
     }
}
