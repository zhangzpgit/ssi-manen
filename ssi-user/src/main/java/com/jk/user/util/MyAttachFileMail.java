/** 
 * <pre>项目名称:javamail-demo 
 * 文件名称:MyHtmlAndAttachFileMail.java 
 * 包名:javamail.mail 
 * 创建日期:2016年9月21日下午2:19:12 
 * Copyright (c) 2016, lxm_man@163.com All Rights Reserved.</pre> 
 */  
package com.jk.user.util;

import java.io.File;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.SendFailedException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;



/** 
 * <pre>项目名称：javamail-demo    
 * 类名称：MyHtmlAndAttachFileMail    
 * 类描述：    
 * 创建人：yuanyf  yuan_yunfei@163.com   
 * 创建时间：2016年9月21日 下午2:19:12    
 * 修改人：yuanyf  yuan_yunfei@163.com    
 * 修改时间：2016年9月21日 下午2:19:12    
 * 修改备注：       
 * @version </pre>    
 */
public class MyAttachFileMail {
	 //发送邮件的帐号
    private String username="m13810243661@163.com";
    //发送邮件的密码
    private String password="whn792699";
    //发送到的邮箱
    private String mail_to = "2232987088@qq.com";
    //发送邮件的账号
    private String mail_from = "m13810243661@163.com";
    //邮件的主题
    private String mail_subject = "HTML文件的标题";
    //邮件的内容
    private String mail_body = "<font color='red'><h4>HTML 格式的邮件测试！！！</font></h4>"
								+ "<table border='1px'cellspacing='0'cellpadding='0'width='500px'>"
								+ "<tr><td>HTML</td><td>JavaMail</td><td>邮件</td></tr>"
								+ "<tr><td>HTML</td><td>JavaMail</td><td>邮件</td></tr>"
								+ "<table>";
    
    public void sendMail(List<String> files) throws SendFailedException{
        try {
             //发送邮件的props文件
            Properties props = new Properties();
            // 初始化props
            props.put("mail.smtp.host", "smtp.163.com");
            //是否需要身份验证 一般都是需要的
            props.put("mail.smtp.auth", "true");
            
            //进行邮件服务用户认证 自己写的那个类
            Authenticator auth = new MyAuthenticator(username,password);
            // 创建session,和邮件服务器进行通讯
            Session session = Session.getDefaultInstance(props,auth);
            // 创建mime类型邮件
            MimeMessage message = new MimeMessage(session);
            // 设置主题
            message.setSubject(mail_subject);
            //创建地址
            Address address = new InternetAddress(mail_from);
            //设置邮件发送者的地址
            message.setFrom(address);
            //设置邮件接收者的地址
            Address toaddress = new InternetAddress(mail_to);
            // 设置收件人
            message.addRecipient(Message.RecipientType.TO,toaddress);
          //=======================添加附件==================================
            // MiniMultipart类是一个容器类，包含MimeBodyPart类型的对象   
             Multipart multipart = new MimeMultipart();    
             // 创建一个包含HTML内容的MimeBodyPart    为最大的容器 存放附件的  MimeBodyPart和纯文本的  MimeBodyPart
             MimeBodyPart mimeBodyPart = new MimeBodyPart();    
             // 设置HTML内容    
             mimeBodyPart.setContent(mail_body, "text/html;charset=utf-8");    
             multipart.addBodyPart(mimeBodyPart);    
             /*添加多个附件*/  
             for (String file : files) {  
                 File usFile = new File(file);
                 // 创建一新的MimeBodyPart 存放附件为小容器 
                 MimeBodyPart fileBody = new MimeBodyPart();  
                 //得到文件数据源  建立FileDataSource类型的附件数据源对象  
                 DataSource source = new FileDataSource(file);  
                 //得到附件本身并至入BodyPart
                 fileBody.setDataHandler(new DataHandler(source));  
                 //解决中文文件名乱码乱码问题usFile.getName()为文件名
                 /*sun.misc.BASE64Encoder enc = new sun.misc.BASE64Encoder();  
                 	fileBody.setFileName("=?GBK?B?"  
                         + enc.encode(usFile.getName().getBytes()) + "?=");  */
                 fileBody.setFileName(MimeUtility.encodeText(usFile.getName()));
               //将附件添加到multipart对象中
                 multipart.addBodyPart(fileBody);  
             }  
            // 将MiniMultipart对象设置为邮件内容    
            message.setContent(multipart);
            //========================================添加附件结束=========================================
            // 发送邮件    
            Transport.send(message); 
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

	
	

} 


