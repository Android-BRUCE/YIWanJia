package com.yiwanjia.controller;

import com.yiwanjia.common.utils.JsonUtils;
import com.yiwanjia.service.PictureService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("pic")
public class PictureController {

    @Autowired
    private PictureService pictureService;
    @RequestMapping("upload")
    @ResponseBody
    public String pictureUpload(MultipartFile uploadFile,HttpServletRequest request){
        //项目在容器中实际发布运行的根路径
        String realPath = request.getSession().getServletContext().getRealPath("/");
        Map map = pictureService.uploadPicture(uploadFile,realPath);
        //为了保证功能的兼容性，需要把Result转换成json格式的字符串。
        String json = JsonUtils.objectToJson(map);
        return json;
    }
}
