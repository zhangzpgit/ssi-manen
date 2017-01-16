
/** 
* <pre>项目名称:ssi-shop-maven 
* 文件名称:UserService.java 
* 包名:com.jk.shop.zhangzp.service.user 
* 创建日期:2016年10月30日下午6:34:05 
* Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
*/

package com.jk.user.service.user;

import java.util.List;

import com.jk.user.model.user.LevelModel;
import com.jk.user.model.user.UserModel;

/**
 * <pre>
 * 项目名称：ssi-shop-maven    
 * 类名称：UserService    
 * 类描述：    
 * 创建人：张自平 caolh123@gmail.com    
 * 创建时间：2016年10月30日 下午6:34:05    
 * 修改人：张自平 caolh123@gmail.com     
 * 修改时间：2016年10月30日 下午6:34:05    
 * 修改备注：       
 * &#64;version
 * </pre>
 */

public interface UserService {

	/**
	 * <pre>
	 * addUser(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:43:26    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:43:26    
	 * 修改备注： 
	 * &#64;param userModel
	 * </pre>
	 */

	void addUser(UserModel userModel);

	/**
	 * <pre>
	 * findUserCount(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午8:45:56    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午8:45:56    
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
	 * 创建时间：2016年10月30日 下午8:46:02    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午8:46:02    
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
	 * 创建时间：2016年10月30日 下午10:17:33    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:17:33    
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
	 * 创建时间：2016年10月30日 下午10:30:45    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:30:45    
	 * 修改备注： 
	 * &#64;param userModel
	 * </pre>
	 */

	void updateUserById(UserModel userModel);

	/**
	 * <pre>
	 * deleteAll(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午10:52:13    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午10:52:13    
	 * 修改备注： 
	 * &#64;param userModel
	 * </pre>
	 */

	void deleteAll(UserModel userModel);

	/**
	 * <pre>
	 * login(这里用一句话描述这个方法的作用)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午11:37:21    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午11:37:21    
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
	 * 创建时间：2016年10月31日 下午1:47:20    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月31日 下午1:47:20    
	 * 修改备注： 
	 * &#64;param userId
	 * </pre>
	 */

	void deleteById(int userId);

	List<LevelModel> findLevelList();
}
