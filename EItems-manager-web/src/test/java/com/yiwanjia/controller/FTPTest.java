package com.yiwanjia.controller;

import com.jcraft.jsch.*;
import com.yiwanjia.common.utils.FtpUtil;
import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.testng.annotations.Test;

import java.io.*;
import java.util.*;

public class FTPTest {


	public void testFtpClient() throws Exception {
		//创建一个FtpClient对象
		FTPClient ftpClient = new FTPClient();
		JSch jSch = new JSch();

		//创建ftp连接。默认是21端口
		ftpClient.connect("118.178.253.131", 21);


		//登录ftp服务器，使用用户名和密码
		ftpClient.login("root", "#");
		//上传文件。
		//读取本地文件
		FileInputStream inputStream = new FileInputStream(new File("C:\\Users\\brucezheng\\Desktop\\banner03.jpg"));
		//设置上传的路径
		ftpClient.changeWorkingDirectory("/home/ftpuser/www/images");
		//修改上传文件的格式
		ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
		//第一个参数：服务器端文档名
		//第二个参数：上传文档的inputStream
		ftpClient.storeFile("hello1.jpg", inputStream);
		//关闭连接
		ftpClient.logout();
		
	}

	public void testFtpClient2() throws Exception {
		 Logger LOG = LoggerFactory.getLogger(FTPTest.class);
		listFileNames("118.178.253.131", 22, "root", "#", "/home/ftpuser/www/images");

	}
	private static List<String> listFileNames(String host, int port, String username, final String password, String dir) {
		List<String> list = new ArrayList<String>();
		ChannelSftp sftp = null;
		Channel channel = null;
		Session sshSession = null;
		try {
			JSch jsch = new JSch();
			jsch.getSession(username, host, port);
			sshSession = jsch.getSession(username, host, port);
			sshSession.setPassword(password);
			Properties sshConfig = new Properties();
			sshConfig.put("StrictHostKeyChecking", "no");
			sshSession.setConfig(sshConfig);
			sshSession.connect();
			//LOG.debug("Session connected!");
			channel = sshSession.openChannel("sftp");
			channel.connect();
			//LOG.debug("Channel connected!");
			sftp = (ChannelSftp) channel;
			Vector<?> vector = sftp.ls(dir);
			for (Object item:vector) {
				ChannelSftp.LsEntry entry = (ChannelSftp.LsEntry) item;
				System.out.println(entry.getFilename());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeChannel(sftp);
			closeChannel(channel);
			closeSession(sshSession);
		}
		return list;
	}
	private static void closeChannel(Channel channel) {
		if (channel != null) {
			if (channel.isConnected()) {
				channel.disconnect();
			}
		}
	}
	private static void closeSession(Session session) {
		if (session != null) {
			if (session.isConnected()) {
				session.disconnect();
			}
		}
	}


	public void testFtpUtil() throws Exception {
		FileInputStream inputStream = new FileInputStream(new File("C:\\Users\\brucezheng\\Desktop\\banner03.jpg"));
		boolean b = FtpUtil.uploadFile("118.178.253.131", 21, "root", "#", "/home/ftpuser/www/images", "/2017/09/12", "hello.jpg", inputStream);
		System.out.println(b);

	}


	public void jschSFTP(){
			ChannelSftp sftp = null;
			JSch jsch = new JSch();
			Session sshSession = null;
			InputStream is = null;
		try {
			sshSession = jsch.getSession("root", "118.178.253.131");
			sshSession.setPassword("#");
			sshSession.setConfig("StrictHostKeyChecking", "no");
			sshSession.connect();
			Channel channel = null;
			channel = sshSession.openChannel("sftp");
			channel.connect();
			sftp = (ChannelSftp) channel;
		}catch (Exception e) {
			e.printStackTrace();
		}
		BufferedReader reader = new BufferedReader(new InputStreamReader(is));
	}
}
