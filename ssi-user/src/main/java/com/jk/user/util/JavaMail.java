/** 
 * <pre>项目名称:ssh-book-chenk 
 * 文件名称:JavaMail.java 
 * 包名:com.jk.bookmanager.chenk.util 
 * 创建日期:2016年10月20日下午7:14:31 
 * Copyright (c) 2016, myangsh@sina.com All Rights Reserved.</pre> 
 */  
package com.jk.user.util;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

import org.apache.commons.lang.StringUtils;

/** 
 * <pre>项目名称：ssh-book-chenk    
 * 类名称：JavaMail    
 * 类描述：    
 * 创建人：陈珂 kekelovekiss@@qq.com    
 * 创建时间：2016年10月20日 下午7:14:31    
 * 修改人：陈珂 kekelovekiss@@qq.com     
 * 修改时间：2016年10月20日 下午7:14:31    
 * 修改备注：       
 * @version </pre>    
 */
public class JavaMail {
	/**
	 * <pre>sendNOAttachFileMail(注册成功发送邮件不含附件)   
	 * 创建人：陈珂 kekelovekiss@@qq.com   
	 * 创建时间：2016年10月12日 下午9:19:21    
	 * 修改人：陈珂 kekelovekiss@@qq.com    
	 * 修改时间：2016年10月12日 下午9:19:21    
	 * 修改备注： 
	 * @param to
	 * @param subject
	 * @param body</pre>
	 */
	public static void sendNOAttachFileMail(String to,String subject,String body) {
		
        try {
        	MimeMessage message=getEmailMessage(to,subject,body);
            //设置邮件内容
            message.setContent(body, "text/html;charset=utf-8");
            // 发送邮件
            Transport.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
	
	/**
	 * <pre>getEmailMessage(身份验证)   
	 * 创建人：陈珂 kekelovekiss@@qq.com   
	 * 创建时间：2016年10月12日 下午8:51:57    
	 * 修改人：陈珂 kekelovekiss@@qq.com    
	 * 修改时间：2016年10月12日 下午8:51:57    
	 * 修改备注： 
	 * @param to
	 * @param subject
	 * @return
	 * @throws MessagingException</pre>
	 */
	public static MimeMessage getEmailMessage(String to,String subject,String body) throws MessagingException{
		//发件人邮箱
		final String userEmail = "m13810243661@163.com";
		//此处不是邮箱密码 是一个客户端的密码
		final String userPwd = "whn792699";
		//发送邮件的props文件
		Properties props = new Properties();
		//初始化Properties
		props.put("mail.smtp.host", "smtp.163.com");
		//认证用户
		props.put("mail.smtp.auth", "true");
		//进行邮件服务用户认证，重写getPasswordAuthentication()方法
		//创建session和邮件服务器进行通讯
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			public PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(userEmail, userPwd);
			}
		});
		//创建mime类型邮件
		MimeMessage message = new MimeMessage(session);
		//设置主题
		message.setSubject(subject);
		message.setText(body);
		//创建地址
		Address address = new InternetAddress(userEmail);
		//设置邮件发送者的地址
		message.setFrom(address);
		//设置邮件接收者的地址
		Address toAddress = new InternetAddress(to);
		//设置收件人
		message.addRecipient(Message.RecipientType.TO, toAddress);
		return message;
	}
	
	/**
	 * <pre>sendAttachFileEmail(发送邮件)   
	 * 创建人：陈珂 kekelovekiss@@qq.com   
	 * 创建时间：2016年10月12日 下午9:17:46    
	 * 修改人：陈珂 kekelovekiss@@qq.com    
	 * 修改时间：2016年10月12日 下午9:17:46    
	 * 修改备注： 
	 * @param emailTo
	 * @param emailSubject
	 * @param emailBody
	 * @param userAttachFilePaths
	 * @param deleteAttachFiles
	 * @param userAttachFileNames
	 * @throws UnsupportedEncodingException</pre>
	 */
	public static void sendAttachFileEmail(String emailTo,
			String emailSubject,
			String emailBody,
			String userAttachFilePaths,
			String deleteAttachFiles,String userAttachFileNames) throws UnsupportedEncodingException{
		List<String> fileList = new ArrayList<>();
		List<String> fileNameList = new ArrayList<>();
		if(StringUtils.isNotEmpty(userAttachFilePaths)){
			String[] splitAttachFilePathsArr = userAttachFilePaths.substring(1).split(",");
			String[] splitAttachFileNamesArr = userAttachFileNames.substring(1).split(",");
			if(StringUtils.isNotEmpty(deleteAttachFiles)){
				String[] splitDeleteAttachFilesArr = deleteAttachFiles.substring(1).split(",");
				for(int i=0;i<splitAttachFilePathsArr.length;i++){
					if(!isDeleteAttachFile(splitDeleteAttachFilesArr,splitAttachFilePathsArr[i])){
						fileList.add(splitAttachFilePathsArr[i]);
						fileNameList.add(splitAttachFileNamesArr[i]);
					}
				}
				for(int j=0;j<splitDeleteAttachFilesArr.length;j++){
					String deleteAttachFilePath=splitDeleteAttachFilesArr[j];
					File file=new File(deleteAttachFilePath);
					if(file.exists()){
						file.delete();
					}
				}
			}else{
				for(int i=0;i<splitAttachFilePathsArr.length;i++){
					fileList.add(splitAttachFilePathsArr[i]);
					fileNameList.add(splitAttachFileNamesArr[i]);
				}
			}
		}
		sendAttachFileMail(emailTo,emailSubject,emailBody,fileList,fileNameList);
	}
	
	/** <pre>sendAttachFileMail(发送带附件的邮件)   
	 * 创建人：陈珂 kekelovekiss@@qq.com   
	 * 创建时间：2016年10月12日 下午9:02:15    
	 * 修改人：陈珂 kekelovekiss@@qq.com    
	 * 修改时间：2016年10月12日 下午9:02:15    
	 * 修改备注： 
	 * @param to
	 * @param subject
	 * @param body
	 * @param files
	 * @param fileNameList</pre>    
	 */
	public static void sendAttachFileMail(String to, String subject, String body, List<String> files,
			List<String> fileNameList) throws UnsupportedEncodingException {
		try {
			MimeMessage message = getEmailMessage(to, subject, body);
			//=============添加附件==============
			//MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象
			Multipart multipart = new MimeMultipart();
			//创建一个包含HTML 内容的MimeBodyPart
			MimeBodyPart mimeBodyPart = new MimeBodyPart();    
            // 设置HTML内容    
            mimeBodyPart.setContent(body, "text/html;charset=utf-8");   
            //把内容加入到multipart
            multipart.addBodyPart(mimeBodyPart);
            //添加多个附件
			if(null !=files && files.size()>0){
				for(int i=0;i<files.size();i++){
      			  File usFile = new File(files.get(i));
		                 // 创建一新的MimeBodyPart 存放附件 
		                 MimeBodyPart fileBody = new MimeBodyPart();  
		                 //得到文件数据源  建立FileDataSource类型的附件数据源对象  
		                 DataSource source = new FileDataSource(usFile);  
		                 //得到附件本身并至入BodyPart
		                 fileBody.setDataHandler(new DataHandler(source));  
		                 //解决乱码问题
		                 //sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();  
		                // fileBody.setFileName(MimeUtility.encodeText(usFile.getName()));  
		                 fileBody.setFileName(MimeUtility.encodeText(fileNameList.get(i)));
		               //将附件添加到multipart对象中
		                 multipart.addBodyPart(fileBody);  
      		 }
			}
			 // 将MiniMultipart对象设置为邮件内容    
            message.setContent(multipart);
            //========================================添加附件结束=========================================
            // 发送邮件    
            Transport.send(message); 
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

	/**
	 * <pre>isDeleteAttachFile(判断是不是删除的附件)   
	 * 创建人：陈珂 kekelovekiss@@qq.com   
	 * 创建时间：2016年10月12日 下午9:00:32    
	 * 修改人：陈珂 kekelovekiss@@qq.com    
	 * 修改时间：2016年10月12日 下午9:00:32    
	 * 修改备注： 
	 * @param splitAttachFilePathsArr
	 * @param userAttachPath
	 * @return</pre>
	 */
	private static boolean isDeleteAttachFile(String[] splitAttachFilePathsArr, String userAttachPath) {
		boolean deleted=false;
		for(int i=0;i<splitAttachFilePathsArr.length;i++){
			if(splitAttachFilePathsArr[i].equals(userAttachPath)){
				deleted=true;
				break;
			}
		}
		
		return deleted;
	}
}
