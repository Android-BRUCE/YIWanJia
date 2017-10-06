package com.yiwanjia.service;

import com.github.pagehelper.PageHelper;
import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbNewsMapper;
import com.yiwanjia.pojo.TbNews;
import com.yiwanjia.pojo.TbNewsExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class AboutNewsService {
    @Autowired
    private TbNewsMapper tbNewsMapper;

    /**
     * 增加新闻
     * @param tbNews
     * @return
     */
    public TaotaoResult addNews(TbNews tbNews){
        tbNews.setCreatetime(new Date());
        int result = tbNewsMapper.insert(tbNews);
        if(result == 0){
            return TaotaoResult.build(500,"新增新闻失败哦！");
        }
        return TaotaoResult.build(200,"新增新闻成功！");
    }

    /**
     * 删除新闻功能
     * @param ids
     * @return
     */
    public TaotaoResult deleteNews(int[] ids){
        int result = tbNewsMapper.deleteByIdList(ids);
        if(result == 0){
            return TaotaoResult.build(500,"删除新闻失败哦！");
        }
        return TaotaoResult.build(200,"删除新闻成功！");
    }

    /**
     * 获取news信息list
     * @param page
     * @param rows
     * @return
     */
    public EUDataGridResult getNewsList(int page,int rows){
        TbNewsExample example = new TbNewsExample();
        PageHelper.startPage(page,rows);
        List<TbNews> list = tbNewsMapper.selectByExample(example);
        EUDataGridResult gridResult = new EUDataGridResult();
        gridResult.setRows(list);
        gridResult.setTotal(tbNewsMapper.countByExample(example));
        return gridResult;
    }

    /**
     * 根据id获取信息
     * @param id
     * @return
     */
    public TbNews getNewsById(Long id){
        TbNews news = tbNewsMapper.selectByPrimaryKey(id);
        return news;
    }

    /**
     * 修改info
     * @param TbNews
     * @return
     */
    public TaotaoResult saveEditInfo(TbNews TbNews){
        //TbNews.setUpdatetime(new Date());
        if (TbNews.getContent()==""){TbNews.setContent(null );}
        if (TbNews.getImage()==""){TbNews.setImage(null);}
        if (TbNews.getNewstitle()==""){TbNews.setNewstitle(null);}
        if (TbNews.getPoint()==""){TbNews.setPoint(null);}
        int i = tbNewsMapper.updateByPrimaryKeySelective(TbNews);
        if (i == 0){
            return TaotaoResult.build(500,"修改新闻失败！");
        }
        return TaotaoResult.build(200,"修改新闻成功！");
    }
}
