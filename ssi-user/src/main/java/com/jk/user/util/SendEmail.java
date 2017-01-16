
	 
	 /** 
	 * <pre>项目名称:email-test 
	 * 文件名称:SendEmail.java 
	 * 包名:com.jk.emali 
	 * 创建日期:2016年10月12日下午6:52:46 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.util;




	import java.util.Date;
	import java.util.Properties;

	import javax.mail.Address;
	import javax.mail.Authenticator;
	import javax.mail.Message;
	import javax.mail.SendFailedException;
	import javax.mail.Session;
	import javax.mail.Transport;
	import javax.mail.internet.InternetAddress;
	import javax.mail.internet.MimeMessage;

	


/** 
	 * <pre>项目名称：email-test    
	 * 类名称：SendEmail    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月12日 下午6:52:46    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月12日 下午6:52:46    
	 * 修改备注：       
	 * @version </pre>    
	 */

public class SendEmail {
	 //发送邮件的帐号
    private String username="m13810243661@163.com";
    //发送邮件的密码
    private String password="whn792699";
    //发送到的邮箱
    private String mail_to = "2232987088@qq.com";
    //发送邮件的账号
    private String mail_from = "m13810243661@163.com";
    //邮件的主题
    private String mail_subject = "纯文本文件";
    //邮件的内容
    private String mail_body = "<font color='red'><h4>HTML 大师傅大使馆！！！</font></h4>";
   
   //private String mail_body = "大概豆腐干";
    //发件人的名字
    private String personalName = "我的邮件";
    
    public  void sendMail() throws SendFailedException{
       
    	try {
            //发送邮件的props文件
           Properties props = new Properties();
           // 初始化props
           props.put("mail.smtp.host", "smtp.163.com");
           //是否需要身份验证 一般都是需要的
           props.put("mail.smtp.auth", "true");
           
           //进行邮件服务用户认证 相当于登陆发送的邮箱
           Authenticator auth = new MyAuthenticator(username,password);
           // 创建session,和邮件服务器进行通讯
           Session session = Session.getDefaultInstance(props,auth);
           // 创建mime类型邮件
           MimeMessage message = new MimeMessage(session);
           // 设置主题
           message.setSubject(mail_subject);
           //设置邮件内容
          // message.setText(mail_body);
           message.setContent(mail_body,"text/html;charset=utf-8");
           //设置邮件发送时间
           message.setSentDate(new Date());
           //创建地址
           Address address = new InternetAddress(mail_from);
           //设置邮件发送者的地址
           message.setFrom(address);
           //设置邮件接收者的地址
           Address toaddress = new InternetAddress(mail_to);
           // 设置收件人
           message.addRecipient(Message.RecipientType.TO,toaddress);
           // 发送邮件
           Transport.send(message);
       } catch (Exception e) {
           e.printStackTrace();
       }
   }	
    	
    	
    	
}

	