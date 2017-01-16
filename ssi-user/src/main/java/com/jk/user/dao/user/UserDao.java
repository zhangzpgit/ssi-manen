
/** 
* <pre>项目名称:ssi-shop-maven 
* 文件名称:UserDao.java 
* 包名:com.jk.shop.zhangzp.dao.user 
* 创建日期:2016年10月30日下午6:30:33 
* Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
*/

package com.jk.user.dao.user;

import java.util.List;

import com.jk.user.model.user.LevelModel;
import com.jk.user.model.user.UserModel;

/**
 * <pre>
 * 项目名称：ssi-shop-maven    
 * 类名称：UserDao    
 * 类描述：    
 * 创建人：张自平 caolh123@gmail.com    
 * 创建时间：2016年10月30日 下午6:30:33    
 * 修改人：张自平 caolh123@gmail.com     
 * 修改时间：2016年10月30日 下午6:30:33    
 * 修改备注：       
 * &#64;version
 * </pre>
 */

public interface UserDao {

	/**
	 * <pre>
	 * addUser(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:44:06    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:44:06    
	 * 修改备注： 
	 * &#64;param userModel
	 * </pre>
	 */

	void addUser(UserModel userModel);

	/**
	 * <pre>
	 * findUserCount(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午8:47:29    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午8:47:29    
	 * 修改备注： 
	 * &#64;param userModle
	 * &#64;return
	 * </pre>
	 */

	long findUserCount(UserModel userModle);

	/**
	 * <pre>
	 * findUserList(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午8:47:34    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午8:47:34    
	 * 修改备注： 
	 * &#64;param userModle
	 * &#64;return
	 * </pre>
	 */

	List<UserModel> findUserList(UserModel userModle);

	/**
	 * <pre>
	 * findUserById(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午10:18:26    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:18:26    
	 * 修改备注： 
	 * &#64;param userId
	 * &#64;return
	 * </pre>
	 */

	UserModel findUserById(int userId);

	/**
	 * <pre>
	 * updateUserById(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午10:31:24    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:31:24    
	 * 修改备注： 
	 * &#64;param userModel
	 * </pre>
	 */

	void updateUserById(UserModel userModel);

	/**
	 * <pre>
	 * deleteAll(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午10:58:23    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:58:23    
	 * 修改备注： 
	 * &#64;param list
	 * </pre>
	 */

	void deleteAll(List<Integer> list);

	/**
	 * <pre>
	 * login(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午11:38:16    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午11:38:16    
	 * 修改备注： 
	 * &#64;param userModel
	 * &#64;return
	 * </pre>
	 */

	UserModel login(UserModel userModel);

	/**
	 * <pre>
	 * deleteById(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月31日 下午1:50:26    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月31日 下午1:50:26    
	 * 修改备注： 
	 * &#64;param userId
	 * </pre>
	 */

	void deleteById(int userId);

	List<LevelModel> findLevelList();
}
