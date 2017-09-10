package com.yiwanjia.service;

import com.yiwanjia.common.utils.IDUtils;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
@Service
public class PictureService  {

    @Value("${LOCAL_PICTURE_ADDRESS}")
    private String LOCAL_PICTURE_ADDRESS;
    public Map uploadPicture(MultipartFile uploadFile,String realPath ) {
        String separator = File.separator;
        Map resultMap = new HashMap<>();
        try {
            //生成一个新的文件名
            //取原始文件名
            String oldName = uploadFile.getOriginalFilename();
            //生成新文件名
            //UUID.randomUUID();
            String newName = IDUtils.genImageName();
            newName = newName + oldName.substring(oldName.lastIndexOf("."));
            //图片上传
            String y = new DateTime().toString("yyyy");
            String m = new DateTime().toString("MM");
            String d = new DateTime().toString("dd");
            String appenfPath = separator+"banner"+separator + y + separator + m + separator + d + separator + newName;
            File up = new File(realPath  + "public" + appenfPath);
            if(!up.exists()){
                up.mkdirs();
            }
          //  System.out.println(realPath  + "public" + appenfPath);
            uploadFile.transferTo(up);
            resultMap.put("error", 0);
            resultMap.put("url", LOCAL_PICTURE_ADDRESS+appenfPath);
            System.out.println("uploadFile = [" + LOCAL_PICTURE_ADDRESS+appenfPath+ "]");
            return resultMap;
        } catch (Exception e) {
            resultMap.put("error", 1);
            resultMap.put("message", "文件上传发生异常");
            return resultMap;
        }
    }
}
