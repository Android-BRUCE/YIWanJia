package com.yiwanjia.service;


import com.jcraft.jsch.ChannelSftp;
import com.jcraft.jsch.JSchException;
import com.jcraft.jsch.SftpATTRS;
import com.yiwanjia.common.utils.IDUtils;
import com.yiwanjia.common.utils.SFTPChannel;
import com.yiwanjia.common.utils.SFTPConstants;
import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * 图片上传服务
 */
@Service
public class PictureServiceSFTP {

    @Value("${FTP_ADDRESS}")
    private String FTP_ADDRESS;
    @Value("${FTP_PORT}")
    private Integer FTP_PORT;
    @Value("${FTP_USERNAME}")
    private String FTP_USERNAME;
    @Value("${FTP_PASSWORD}")
    private String FTP_PASSWORD;
    @Value("${FTP_BASE_PATH}")
    private String FTP_BASE_PATH;
    @Value("${IMAGE_BASE_URL}")
    private String IMAGE_BASE_URL;

    public SFTPChannel getSFTPChannel() {
        return new SFTPChannel();
    }

    public Map uploadPicture(MultipartFile uploadFile) {
        Map resultMap = new HashMap<>();
        try {
            InputStream inputStream = uploadFile.getInputStream();
            String separator = File.separator;
            //生成一个新的文件名
            //取原始文件名
            String oldName = uploadFile.getOriginalFilename();
            //生成新文件名
            //UUID.randomUUID();
            String newName = IDUtils.genImageName();
            newName = newName + oldName.substring(oldName.lastIndexOf("."));
            //图片上传
            String imagePath = new DateTime().toString("/yyyy/MM/dd");
//			boolean result = FtpUtil.uploadFile(FTP_ADDRESS, FTP_PORT, FTP_USERNAME, FTP_PASSWORD,
//					FTP_BASE_PATH, imagePath, newName, uploadFile.getInputStream());


            PictureServiceSFTP test = new PictureServiceSFTP();

            Map<String, String> sftpDetails = new HashMap<String, String>();
            // 设置主机ip，端口，用户名，密码
            sftpDetails.put(SFTPConstants.SFTP_REQ_HOST, FTP_ADDRESS);
            sftpDetails.put(SFTPConstants.SFTP_REQ_USERNAME, FTP_USERNAME);
            sftpDetails.put(SFTPConstants.SFTP_REQ_PASSWORD, FTP_PASSWORD);
            sftpDetails.put(SFTPConstants.SFTP_REQ_PORT, String.valueOf(FTP_PORT));

            //String src = "C:\\Users\\brucezheng\\Desktop\\banner03.jpg"; // 本地文件名
            String dst = FTP_BASE_PATH + "/" + newName; // 目标文件名

            SFTPChannel channel = test.getSFTPChannel();
            ChannelSftp chSftp = null;
            try {
                chSftp = channel.getChannel(sftpDetails, 60000);
            } catch (JSchException e) {
                e.printStackTrace();
                resultMap.put("error", 1);
                resultMap.put("message", "文件上传发生异常");
                return resultMap;
            }

            /**
             * 代码段1
             OutputStream out = chSftp.put(dst, ChannelSftp.OVERWRITE); // 使用OVERWRITE模式
             byte[] buff = new byte[1024 * 256]; // 设定每次传输的数据块大小为256KB
             int read;
             if (out != null) {
             System.out.println("Start to read input stream");
             InputStream is = new FileInputStream(src);
             do {
             read = is.read(buff, 0, buff.length);
             if (read > 0) {
             out.write(buff, 0, read);
             }
             out.flush();
             } while (read >= 0);
             System.out.println("input stream read done.");
             }
             **/

//			try {
//				chSftp.put(src, dst, ChannelSftp.OVERWRITE); // 代码段2
//			} catch (SftpException e) {
//				e.printStackTrace();
//				resultMap.put("error", 1);
//				resultMap.put("message", "文件上传失败");
//				return resultMap;
//			}

            //chSftp.put(new FileInputStream(src), dst, ChannelSftp.OVERWRITE); // 代码段3
            chSftp.put(inputStream, dst, ChannelSftp.OVERWRITE); // 代码段3

            chSftp.quit();
            channel.closeChannel();


            //返回结果
//			if(!result) {
//				resultMap.put("error", 1);
//				resultMap.put("message", "文件上传失败");
//				return resultMap;
//			}
            resultMap.put("error", 0);
            resultMap.put("url", IMAGE_BASE_URL + "/" + newName);
            return resultMap;

        } catch (Exception e) {
            resultMap.put("error", 1);
            resultMap.put("message", "文件上传发生异常");
            return resultMap;
        }
    }
}
