/** 
 * <pre>项目名称:ssh-book 
 * 文件名称:SystemConstUtil.java 
 * 包名:com.jk.bookmanager.util 
 * 创建日期:2016年9月19日上午11:57:39 
 * Copyright (c) 2016, yuxy123@gmail.com All Rights Reserved.</pre> 
 */  
package com.jk.user.util;

/** 
 * <pre>项目名称：ssh-book    
 * 类名称：SystemConstUtil    
 * 类描述：    
 * 创建人：于笑扬 yuxy123@gmail.com    
 * 创建时间：2016年9月19日 上午11:57:39    
 * 修改人：于笑扬 yuxy123@gmail.com     
 * 修改时间：2016年9月19日 上午11:57:39    
 * 修改备注：       
 * @version </pre>    
 */
public final class SystemConstUtil {
	public static final String UPLOAD_IMAGE_PATH = "/uploadImage/";
	public static final String UPLOAD_ATTACH_PATH = "d:/uploadAttach/";
	//部署到虚拟机的附件上传地址
	//public static final String UPLOAD_ATTACH_PATH = "/home/uploadAttach/";
	public static final String YEAR_MONTH_DAY = "yyyy-MM-dd";
	public static final String YEAR_MONTH_DAY_HOUR_MINUTE_SECOND = "yyyy-MM-dd HH:mm:ss";
	public static final int USERNAME_ERROR = 1;
	public static final int USERPASSWORD_ERROR = 2;
	public static final int IMAGECODE_ERROR = 3;
	//持久cookie的过期时间
	public static final int ONE_DAY=1*24*60*60;
}
