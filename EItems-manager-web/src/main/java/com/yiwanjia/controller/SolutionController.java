package com.yiwanjia.controller;

import com.yiwanjia.common.pojo.EUDataGridResult;
import com.yiwanjia.common.pojo.TaotaoResult;
import com.yiwanjia.pojo.TbSupport2;
import com.yiwanjia.service.SolutionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.ui.Model;
@Controller
public class SolutionController {
    @Autowired
    private SolutionService solutionService;

    @RequestMapping("solutionlist")
    @ResponseBody
    public EUDataGridResult getSolutionList(){
        EUDataGridResult list = solutionService.getSolutionList();
        return list;
    }

    /**
     * 提交修改
     * @param tbSupport2
     * @return
     */
    @RequestMapping("solution/modify")
    @ResponseBody
    public TaotaoResult modifySolution(TbSupport2 tbSupport2){

        TaotaoResult result = solutionService.modifySolution(tbSupport2);
        return result;
    }

    /**
     * 跳转至修改页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("solutionToPage")
    public String jumpToEditPage(@RequestParam(value = "id") Integer id, Model model){
        TbSupport2 solutionById = solutionService.getSolutionById(id);
        model.addAttribute("solution",solutionById);
        return "solution_edit";
    }
}
