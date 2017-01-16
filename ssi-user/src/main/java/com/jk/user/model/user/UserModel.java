
	 
	 /** 
	 * <pre>项目名称:ssi-shop-maven 
	 * 文件名称:UserModel.java 
	 * 包名:com.jk.shop.zhangzp.model.user 
	 * 创建日期:2016年10月30日下午6:24:48 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.model.user;

import com.jk.user.model.user.Page;

/** 
	 * <pre>项目名称：ssi-shop-maven    
	 * 类名称：UserModel    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:24:48    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:24:48    
	 * 修改备注：       
	 * @version </pre>    
	 */

public class UserModel extends Page{
//id,userName,userBirthday,userSex,userHeader,levelId
	private static final long serialVersionUID = -9058192930442568983L;
	private int id;
	private String userName;
	private String userHeader;
	private String userBirthday;
	private int userSex;
	private int flag;

	//分页字段
	private String pageName;
	private int pageSex;
	private int minAge;
	private int maxAge;
	private String minDate;
	private String maxDate;
	//批量删除字段
	private String ids;
//从表
	private LevelModel levelModel=new LevelModel();

	public LevelModel getLevelModel() {
		return levelModel;
	}

	public void setLevelModel(LevelModel levelModel) {
		this.levelModel = levelModel;
	}

	public String getUserHeader() {
		return userHeader;
	}

	public void setUserHeader(String userHeader) {
		this.userHeader = userHeader;
	}

	public String getUserBirthday() {
		return userBirthday;
	}

	public void setUserBirthday(String userBirthday) {
		this.userBirthday = userBirthday;
	}

	public String getMinDate() {
		return minDate;
	}

	public void setMinDate(String minDate) {
		this.minDate = minDate;
	}

	public String getMaxDate() {
		return maxDate;
	}

	public void setMaxDate(String maxDate) {
		this.maxDate = maxDate;
	}

	public int getFlag() {
	
		return flag;
	}
	public void setFlag(int flag) {
	
		this.flag = flag;
	}
	public int getId() {
	
		return id;
	}
	public void setId(int id) {
	
		this.id = id;
	}
	public String getUserName() {
	
		return userName;
	}
	public void setUserName(String userName) {
	
		this.userName = userName;
	}

	public int getUserSex() {
	
		return userSex;
	}
	public void setUserSex(int userSex) {
	
		this.userSex = userSex;
	}
	public String getPageName() {
	
		return pageName;
	}
	public void setPageName(String pageName) {
	
		this.pageName = pageName;
	}
	public int getPageSex() {
	
		return pageSex;
	}
	public void setPageSex(int pageSex) {
	
		this.pageSex = pageSex;
	}
	public int getMinAge() {
	
		return minAge;
	}
	public void setMinAge(int minAge) {
	
		this.minAge = minAge;
	}
	public int getMaxAge() {
	
		return maxAge;
	}
	public void setMaxAge(int maxAge) {
	
		this.maxAge = maxAge;
	}
	public String getIds() {
	
		return ids;
	}
	public void setIds(String ids) {
	
		this.ids = ids;
	}
	
		 /* (non-Javadoc)    
		 * @see java.lang.Object#toString()    
		 */

	@Override
	public String toString() {
		return "UserModel{" +
				"id=" + id +
				", userName='" + userName + '\'' +
				", userHeader='" + userHeader + '\'' +
				", userBirthday='" + userBirthday + '\'' +
				", userSex=" + userSex +
				", flag=" + flag +
				", pageName='" + pageName + '\'' +
				", pageSex=" + pageSex +
				", minAge=" + minAge +
				", maxAge=" + maxAge +
				", minDate='" + minDate + '\'' +
				", maxDate='" + maxDate + '\'' +
				", ids='" + ids + '\'' +
				'}';
	}
}

	