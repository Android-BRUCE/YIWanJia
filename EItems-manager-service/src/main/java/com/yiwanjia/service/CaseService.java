package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbCaseMapper;
import com.yiwanjia.pojo.TbCase;
import com.yiwanjia.pojo.TbCase2;
import com.yiwanjia.pojo.TbCaseExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class CaseService {
    @Autowired
    private TbCaseMapper TbCaseMapper;

    /**
     * 获取list
     * @param page
     * @param rows
     * @return
     */
    public EUDataGridResult getCasesList(int page,int rows){
        TbCaseExample example = new TbCaseExample();
        PageHelper.startPage(page,rows);
        List<TbCase> cases = TbCaseMapper.selectByExample(example);

        EUDataGridResult euDataGridResult = new EUDataGridResult();
        euDataGridResult.setTotal(TbCaseMapper.countByExample(example));
        euDataGridResult.setRows(cases);
        return euDataGridResult;
    }

    /**
     * 保存
     * @return
     */
    public TaotaoResult addCasePic(TbCase TbCase){
        int i = TbCaseMapper.insert(TbCase);
        if(i == 0){return TaotaoResult.build(500,"啊哈哈失败了");}
        return TaotaoResult.build(200,"恭喜恭喜成功啦");
    }
    /**
     * 多图保存
     * @return
     */
    public TaotaoResult addCasesPic(String image){

        String[] split = image.split(",");
        List ss =  new ArrayList();
        for (int i=0;i<split.length;i++){
            TbCase tbCase = new TbCase();
            tbCase.setCreatetime(new Date());
            tbCase.setUpdatetime(new Date());
            tbCase.setImage(split[i]);
            ss.add(tbCase);
        }
        if (ss==null){return  TaotaoResult.build(500,"添加失败");}
        int i = TbCaseMapper.addMuchCases(ss);
        if(i == 0){return TaotaoResult.build(500,"啊哈哈失败了");}
        return TaotaoResult.build(200,"恭喜恭喜成功啦");
    }
    /**
     * 批量删除
     * @param id
     * @return
     */
    public TaotaoResult deleteById(int[] id){
        int i = TbCaseMapper.deleteByCaseIds(id);
        if(i == 0){return TaotaoResult.build(500,"啊哈哈删除失败了");}
        return TaotaoResult.build(200,"恭喜恭喜删除成功啦");
    }

}
