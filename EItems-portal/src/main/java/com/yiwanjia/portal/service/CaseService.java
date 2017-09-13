package com.yiwanjia.portal.service;

import com.yiwanjia.dao.TbCaseMapper;
import com.yiwanjia.pojo.TbCase;
import com.yiwanjia.pojo.TbCaseExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CaseService {
    @Autowired
    private TbCaseMapper TbCaseMapper;

    public List<TbCase> getCaseList(){
        TbCaseExample example = new TbCaseExample();
        List<TbCase> tbCases = TbCaseMapper.selectByExample(example);
        return tbCases;
    }
}
