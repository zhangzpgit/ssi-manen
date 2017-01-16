
	 
	 /** 
	 * <pre>项目名称:ssi-shop-maven 
	 * 文件名称:UserDaoImpl.java 
	 * 包名:com.jk.shop.zhangzp.dao.user 
	 * 创建日期:2016年10月30日下午6:30:49 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.dao.user;

import java.util.List;

import javax.annotation.Resource;

import com.jk.user.model.user.LevelModel;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;
import org.springframework.stereotype.Repository;

import com.jk.user.model.user.UserModel;

/** 
	 * <pre>项目名称：ssi-shop-maven    
	 * 类名称：UserDaoImpl    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:30:49    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:30:49    
	 * 修改备注：       
	 * @version </pre>    
	 */
@Repository("userDao")
public class UserDaoImpl extends SqlMapClientDaoSupport implements UserDao{
	//添加方法
	@Override
	public void addUser(UserModel userModel) {
		this.getSqlMapClientTemplate().insert("user.addUser",userModel);
			
	}
	
	//查询列表
	
	@Override
	public List<UserModel> findUserList(UserModel userModle) {
		return this.getSqlMapClientTemplate().queryForList("user.findUserList",userModle);
			
			
	}
	
	//查询总条数

	@Override
	public long findUserCount(UserModel userModle) {
		return (Long)this.getSqlMapClientTemplate().queryForObject("user.findUserCount",userModle);
		
			
	}
	//查询单条

	@Override
	public UserModel findUserById(int userId) {
		return (UserModel)this.getSqlMapClientTemplate().queryForObject("user.findUserById",userId);
		
			
	}
	//修改
	
	@Override
	public void updateUserById(UserModel userModel) {
		
			this.getSqlMapClientTemplate().update("user.updateUserById",userModel);
	}
	//删除
	
	
	@Override
	public void deleteAll(List<Integer> list) {
		this.getSqlMapClientTemplate().delete("user.deleteAll",list);
			
	}
	//登陆
	
	
	@Override
	public UserModel login(UserModel userModel) {
	 return (UserModel)this.getSqlMapClientTemplate().queryForObject("user.login",userModel)	;
		
			
	}
	
	//单条删除
	
	@Override
	public void deleteById(int userId) {
		this.getSqlMapClientTemplate().delete("user.deleteById",userId);
			
	}

	@Override
	public List<LevelModel> findLevelList() {
		return this.getSqlMapClientTemplate().queryForList("user.findLevelList");

	}
}

	