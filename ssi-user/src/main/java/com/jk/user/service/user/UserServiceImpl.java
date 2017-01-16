
	 
	 /** 
	 * <pre>项目名称:ssi-shop-maven 
	 * 文件名称:UserServiceImpl.java 
	 * 包名:com.jk.shop.zhangzp.service.user 
	 * 创建日期:2016年10月30日下午6:34:26 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.service.user;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import com.jk.user.model.user.LevelModel;
import org.springframework.stereotype.Service;

import com.jk.user.dao.user.UserDao;
import com.jk.user.model.user.UserModel;

/** 
	 * <pre>项目名称：ssi-shop-maven    
	 * 类名称：UserServiceImpl    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:34:26    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:34:26    
	 * 修改备注：       
	 * @version </pre>    
	 */
@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource(name="userDao")
	private UserDao userDao;
	
	//添加
	
	@Override
	public void addUser(UserModel userModel) {
		userDao.addUser(userModel);
			
	}
	//查询总条数
	
	
		 
	@Override
	public long findUserCount(UserModel userModle) {
		
			return userDao.findUserCount( userModle);
			
	}
	
	//查询
	
		 
	@Override
	public List<UserModel> findUserList(UserModel userModle) {
		
			return userDao.findUserList(userModle);
			
	}
	//差单条
	
		 
	@Override
	public UserModel findUserById(int userId) {
		
			return userDao.findUserById( userId);
			
	}
	//修改
	
	
	@Override
	public void updateUserById(UserModel userModel) {
		userDao.updateUserById( userModel);
			
	}
	//批量删除

	@Override
	public void deleteAll(UserModel userModel) {
		
		List<Integer> list=new ArrayList<>();
		String ids = userModel.getIds();
		if (null!=ids&&ids.length()>0) {
			String[] idssArr = ids.split(",");
			for (String id : idssArr) {
				list.add(Integer.parseInt(id));
			}
		}
		userDao.deleteAll( list);
	}
	//登陆
	
	
	@Override
	public UserModel login(UserModel userModel) {
		
			return userDao.login( userModel);
			
	}
	//单条
	
	@Override
	public void deleteById(int userId) {
		userDao.deleteById( userId);
			
	}

	@Override
	public List<LevelModel> findLevelList() {
		return userDao.findLevelList();
	}
}

	