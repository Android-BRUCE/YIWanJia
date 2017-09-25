package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbSupport2Mapper;
import com.yiwanjia.pojo.TbSupport2;
import com.yiwanjia.pojo.TbSupport2Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * 解决方案
 */
@Service
public class Solution2Service {
    @Autowired
    private TbSupport2Mapper tbSupport2Mapper;

    /**
     * 带数据跳转solution,jsp页面
     *
     * @param model
     * @return
     */
    public List<TbSupport2> junpToSolution() {
        TbSupport2Example example = new TbSupport2Example();
        List<TbSupport2> list = tbSupport2Mapper.selectByExampleWithBLOBs(example);
        //model.addAttribute("solution", list);
        return list;
    }

    /**
     * 根据id返回信息
     *
     * @param id
     * @return
     */
    public TbSupport2 getSolutionById(Integer id) {
        TbSupport2 tbSupport2 = tbSupport2Mapper.selectByPrimaryKey(id);
        return tbSupport2;
    }
}
