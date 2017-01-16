
	 
	 /** 
	 * <pre>项目名称:email-test 
	 * 文件名称:MyAuthenticator.java 
	 * 包名:com.jk.emali 
	 * 创建日期:2016年10月12日下午6:44:07 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.util;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;

/** 
	 * <pre>项目名称：email-test    
	 * 类名称：MyAuthenticator    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月12日 下午6:44:07    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月12日 下午6:44:07    
	 * 修改备注：       
	 * @version </pre>    
	 */
//初始化账号密码的类
public class MyAuthenticator extends Authenticator{
	private String userName;
	private String userPwd;
	
	//重写一个方法用作登录校验，以确保对该邮箱有发送邮件的权利
    public PasswordAuthentication getPasswordAuthentication() {
        return new PasswordAuthentication(userName, userPwd);
    }
		
		
	//有参无参构造函数	 
	public MyAuthenticator() {
		super();
	}
	public MyAuthenticator(String userName, String userPwd) {
		super();
		this.userName = userName;
		this.userPwd = userPwd;
	}
	public String getUserName() {
	
		return userName;
	}
	public String getUserPwd() {
	
		return userPwd;
	}
	public void setUserName(String userName) {
	
		this.userName = userName;
	}
	public void setUserPwd(String userPwd) {
	
		this.userPwd = userPwd;
	}
	
}

	