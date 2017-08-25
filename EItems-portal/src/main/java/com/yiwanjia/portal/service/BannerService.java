package com.yiwanjia.portal.service;

/**
 * Created by Administrator on 2017/8/25.
 */

import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.dao.TbBannerMapper;
import com.yiwanjia.pojo.TbBanner;
import com.yiwanjia.pojo.TbBannerExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BannerService {

    @Autowired
    private TbBannerMapper tbBannerMapper;

    /**
     * 获取status为1的banner信息
     * @return
     */
    public TaotaoResult getBanner(){
        TbBannerExample example = new TbBannerExample();
        example.createCriteria().andStatusEqualTo(1);
        List<TbBanner> bannerList = tbBannerMapper.selectByExample(example);
        if(bannerList==null){
            return TaotaoResult.ok();
        }
        return TaotaoResult.ok(bannerList);
    }
}
