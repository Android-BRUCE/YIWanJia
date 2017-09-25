package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbCase;
import com.yiwanjia.service.CaseService;
import org.apache.ibatis.annotations.Case;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("case")
public class CaseController {
    @Autowired
    private CaseService CaseService;

    /**
     * 多条数据上传功能
     *
     * @param image
     * @return
     */
    @RequestMapping(value = "adds", method = RequestMethod.POST)
    @ResponseBody
    public TaotaoResult addCase(String image) {
        if (image == "") {
            return TaotaoResult.build(500, "图片好像没有上传！");
        }
        TaotaoResult taotaoResult = CaseService.addCasesPic(image);
        return taotaoResult;
    }

    /**
     * 加载数据
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping("list")
    @ResponseBody
    public EUDataGridResult getCaseList(Integer page, Integer rows) {
        EUDataGridResult list = CaseService.getCasesList(page, rows);
        return list;
    }

    /**
     * 删除接口
     * @param id
     * @return
     */
    @RequestMapping("{id}/delete")
    @ResponseBody
    public TaotaoResult deleteCases(@PathVariable int[] id) {
        TaotaoResult result = CaseService.deleteById(id);
        return result;
    }

    /**
     * 修改接口
     * @param tbCase
     * @return
     */
    @ResponseBody
    @RequestMapping("edit")
    public TaotaoResult editCase(TbCase tbCase) {
        TaotaoResult result = CaseService.editCaseById(tbCase);
        return result;
    }

    /**
     * 跳转至修改页
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("case-edit")
    public String jumpToCaseEditPage(Long id, Model model) {
        TbCase caseById = CaseService.getCaseById(id);
        model.addAttribute("case1", caseById);
        return "case-edit";
    }
}
