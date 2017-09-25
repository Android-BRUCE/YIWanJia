package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbSupport2Mapper;
import com.yiwanjia.pojo.TbSupport2;
import com.yiwanjia.pojo.TbSupport2Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 解决方案
 */
@Service
public class SolutionService {
    @Autowired
    private TbSupport2Mapper tbSupport2Mapper;

    /**
     * 获取解决方案数据
     *
     * @return
     */
    public EUDataGridResult getSolutionList() {

        TbSupport2Example example = new TbSupport2Example();
        PageHelper.startPage(1, 5);
        List<TbSupport2> list = tbSupport2Mapper.selectByExample(example);

        EUDataGridResult dataGridResult = new EUDataGridResult();
        dataGridResult.setRows(list);
        dataGridResult.setTotal(3);

        return dataGridResult;
    }

    /**
     * 修改解决方案
     * @param tbSupport2
     * @return
     */
    public TaotaoResult modifySolution(TbSupport2 tbSupport2) {
        if (tbSupport2.getTitle()==""){tbSupport2.setTitle(null);}
        if ((tbSupport2.getContent()=="")){tbSupport2.setContent(null);}
        if (tbSupport2.getImage()==""){tbSupport2.setImage(null);}
        if (tbSupport2.getPoint()==""){tbSupport2.setPoint(null);}

        tbSupport2.setUpdatetime(new Date());
        int i = tbSupport2Mapper.updateByPrimaryKeySelective(tbSupport2);
        if (i == 0) {
            return TaotaoResult.build(500, "修改解决方案失败！");
        }
        return TaotaoResult.build(200, " 修改解决方案成功！");
    }

    public TbSupport2 getSolutionById(Integer id){
        TbSupport2 tbSupport2 = tbSupport2Mapper.selectByPrimaryKey(id);
        return tbSupport2;
    }
}
