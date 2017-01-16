/** 
 * <pre>项目名称:ssh-book 
 * 文件名称:DateUtil.java 
 * 包名:com.jk.bookmanager.util 
 * 创建日期:2016年9月21日下午3:49:32 
 * Copyright (c) 2016, yuxy123@gmail.com All Rights Reserved.</pre> 
 */  
package com.jk.user.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

/** 
 * <pre>项目名称：ssh-book    
 * 类名称：DateUtil    
 * 类描述：    
 * 创建人：于笑扬 yuxy123@gmail.com    
 * 创建时间：2016年9月21日 下午3:49:32    
 * 修改人：于笑扬 yuxy123@gmail.com     
 * 修改时间：2016年9月21日 下午3:49:32    
 * 修改备注：       
 * @version </pre>    
 */
public class DateUtil {

	public static String date2Str(Date date, String pattern) {
		String result = "";
		if (null != date) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			result = simpleDateFormat.format(date);
		}
		return result;
	}
	
	public static Date str2Date(String date,String pattern){
		
		Date result=null;
		if (null!=date) {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
			try {
				result=simpleDateFormat.parse(date);
			} catch (ParseException e) {
				
					// TODO Auto-generated catch block
					e.printStackTrace();
					
			}
			
		}
		return result;
	}
////获得两个日期相隔几个月
	public static int calculateMonthIn(Date date1, Date date2) {
		Calendar cal1 = new GregorianCalendar();
		cal1.setTime(date1);
		Calendar cal2 = new GregorianCalendar();
		cal2.setTime(date2);
		int c = 
		(cal1.get(Calendar.YEAR) - cal2.get(Calendar.YEAR)) * 12 + cal1.get(Calendar.MONTH)
		- cal2.get(Calendar.MONTH);
		return Math.abs(c);
	}
	
}
