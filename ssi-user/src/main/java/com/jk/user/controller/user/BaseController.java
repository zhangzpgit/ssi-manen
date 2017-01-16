
	 
	 /** 
	 * <pre>项目名称:ssi-shops-maven 
	 * 文件名称:BaseController.java 
	 * 包名:com.jk.shop.zhangzp.controller.product 
	 * 创建日期:2016年10月28日下午1:43:06 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.controller.user;

	import java.io.IOException;
	import java.io.PrintWriter;

	import javax.servlet.http.Cookie;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;

	

/** 
	 * <pre>项目名称：ssi-shops-maven    
	 * 类名称：BaseController    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月28日 下午1:43:06    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月28日 下午1:43:06    
	 * 修改备注：       
	 * @version </pre>    
	 */

public class BaseController {
	/**
	 * <pre>getRealPath(这里用一句话描述这个方法的作用)   
		 * 创建人：张自平 caolh123@gmail.com    
		 * 创建时间：2016年9月19日 下午2:10:49    
		 * 修改人：张自平 caolh123@gmail.com     
		 * 修改时间：2016年9月19日 下午2:10:49    
		 * 修改备注： 
		 * @param folderName
		 * @return</pre>
	 */
	
//写出json字符串============
	protected void outStr(String json, HttpServletResponse response) {
		PrintWriter writer = null;
		try {
		   //防止写出去时中文乱码
		   response.setCharacterEncoding("utf-8");
		   //写到前台同时防止乱码 同时把json字符串转为json对象 但不能和ajax返回值类型为json同时用 会冲突
		  // response.setContentType("application/json");
		   writer = response.getWriter();
		   writer.write(json);
		   writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (null != writer) {
				writer.close();
				writer = null;
			}
		}
	}
	
//写出json对象
	protected void outJson(String json, HttpServletResponse response){
		PrintWriter writer = null;
		try {
		   //防止写出去时中文乱码
		   response.setCharacterEncoding("utf-8");
		   //写到前台同时防止乱码 同时把json字符串转为json对象 但不能和ajax返回值类型为json同时用 会冲突
		  response.setContentType("application/json");
		   writer = response.getWriter();
		   writer.write(json);
		   writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (null != writer) {
				writer.close();
				writer = null;
			}
		}
		
	}
//写出xml
	protected void outXml(String xml,HttpServletResponse response){
		PrintWriter writer = null;
		try {
		   //防止写出去时中文乱码
		   response.setCharacterEncoding("utf-8");
		   //写到前台同时防止乱码 同时把json字符串转为xml对象 
		  response.setContentType("application/xml");
		   writer = response.getWriter();
		   writer.write(xml);
		   writer.flush();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (null != writer) {
				writer.close();
				writer = null;
			}
		}
		
	}

}

	