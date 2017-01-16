
	 
	 /** 
	 * <pre>项目名称:ssi-shop-maven 
	 * 文件名称:UserController.java 
	 * 包名:com.jk.shop.zhangzp.controller.user 
	 * 创建日期:2016年10月30日下午6:37:29 
	 * Copyright (c) 2016, caolh123@gmail.com All Rights Reserved.</pre> 
	 */
	 
	package com.jk.user.controller.user;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.plaf.BorderUIResource.TitledBorderUIResource;
import javax.xml.ws.RequestWrapper;

import com.jk.user.model.user.LevelModel;
import net.sf.json.JSONArray;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.jk.user.controller.user.BaseController;

import com.jk.user.model.user.UserModel;
import com.jk.user.service.user.UserService;
import com.jk.user.util.DateUtil;
import com.jk.user.util.FileUtil;

import com.jk.user.util.SystemConstUtil;

import net.sf.json.JSONObject;

/** 
	 * <pre>项目名称：ssi-shop-maven    
	 * 类名称：UserController    
	 * 类描述：    
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:37:29    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:37:29    
	 * 修改备注：       
	 * @version </pre>    
	 */
@Controller
@RequestMapping("/user")
public class UserController extends BaseController{
	@Resource(name="userService")
	private UserService userService;
	
	//跳转到添加页面
	@RequestMapping("/toAddUser")
	public String toAddUser(){
		return "/user/addUser";
	}
/**
 * <pre>addUser(添加方法)   
	 * 创建人：张自平 caolh123@gmail.com    
	 * 创建时间：2016年10月30日 下午6:42:01    
	 * 修改人：张自平 caolh123@gmail.com     
	 * 修改时间：2016年10月30日 下午6:42:01    
	 * 修改备注： 
	 * @return</pre>
 */
	@RequestMapping(value="/addUser")
	private String addUser(UserModel userModel){

		userService.addUser( userModel);
	
		return "redirect:/user/findUserList.jhtml";
	}
	//头像上传
	@RequestMapping(value="/uploadHead")
	private void uploadHead(@RequestParam MultipartFile headImage,HttpServletRequest request,HttpServletResponse response){
		//直接获得真实文件名
		
		String realName = headImage.getOriginalFilename();
		Map map =new HashMap();
		
		if (null!=realName) {
			try {
				
					// 把常量相对路径转换为项目部署后的动态绝对路径
					String realPath = request.getSession().getServletContext().getRealPath(SystemConstUtil.UPLOAD_IMAGE_PATH);
					//用文件变量获取一个输入流 用来读取文件内容 在sturts2框架中 是把模型驱动File的接受的文件放入fis = new FileInputStream(file)流中;
					InputStream inputStream = headImage.getInputStream();
					//得到uuid文件名
					String path = FileUtil.uploadFile(inputStream, realName, realPath);
					map.put("path", SystemConstUtil.UPLOAD_IMAGE_PATH+path);
					//执行代码的状态 成功返回ok
					map.put("status", "success");
				} catch (Exception e) {
				
					// TODO Auto-generated catch blockpath
					e.printStackTrace();
					map.put("status", "error");
					
			}
			
			Gson gson = new Gson();
			String json = gson.toJson(map);
			outStr(json, response);
		}
	}	
	//查询userModelList
	@RequestMapping(value="/findUserList")
	public  String findUserList(UserModel userModle,ModelMap map){
		long totalCount=userService.findUserCount(userModle);
		userModle.setTotalCount(totalCount);
		userModle.calculatePage();
		
		//查询信息列表
		List<UserModel> userModelList=userService.findUserList(userModle);
		
		map.put("userModelList", userModelList);
		//分页
		map.put("page", userModle);
		if (userModle.getFlag()==0) {
		
			
			 return "user/userList";
			
		}else{
			
			return "user/userPageList";
			
		}
		
	
	}
	
	//查询单条
	@RequestMapping(value="/findUserById")
	public String findUserById(int userId,ModelMap map){
		UserModel userModel=userService.findUserById(userId);
		map.put("userModel", userModel);
		return "/user/updateUser";
	}
	//修改
	@RequestMapping(value="/updateUserById")
	public String updateUserById(UserModel userModel){
		userService.updateUserById(userModel);
		return "redirect:/user/findUserList.jhtml";
	}
	
	//批量删除
	@RequestMapping(value="/deleteAll")
	public void deleteAll(UserModel userModel,HttpServletResponse response){
		
		try {
			userService.deleteAll( userModel);
			outStr("ok", response);
			
		} catch (Exception e) {
			
				// TODO Auto-generated catch block
				e.printStackTrace();
				outStr("error",response);
		}
		
	}
	//单条删除
	@RequestMapping(value="/deleteById")
	public void deleteById (int userId,HttpServletResponse response){
		
		try {
			userService.deleteById(userId);
			outStr("ok", response);
		} catch (Exception e) {
			
				// TODO Auto-generated catch block
				e.printStackTrace();
				outStr("error", response);
		} 
		
	}
	

		
		
		

	//登陆成功跳转到主页面
	@RequestMapping(value="toManJsp")
	public String toManJsp(){
		return "/user/main";
	}
	
//easyui查询==================
//跳转到查询页面
	@RequestMapping(value="/toUserList.jhtml")
	public String toUserList(){
		return "/easyuiuser/usereasyuilist";
	}
	
	@RequestMapping(value="/findUserEasyuiList.jhtml")
	public void findUserEasyuiList(UserModel userModel ,HttpServletRequest request,HttpServletResponse response){
		//接收前台传来的 每页展示条数    rows   和当前页数page
		//以前分页是在前台search方法中接受这两个参数
		String pageSize = request.getParameter("rows");
		if (StringUtils.isNotEmpty(pageSize)) {
			userModel.setPageSize(Integer.valueOf(pageSize));
		}
		String cpage = request.getParameter("page");
		if (StringUtils.isNotEmpty(cpage)) {
			userModel.setPageIndex(Integer.valueOf(cpage));
		}
//		if (StringUtils.isNotEmpty(productModel.getPageName())) {
//			try {//条件查询转码
//				String strInfor = new String(productModel.getPageName().getBytes("iso-8859-1"),"utf-8");
//				productModel.setPageName(strInfor);
//			} catch (UnsupportedEncodingException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
		//查询总条数
		long totalCount=userService.findUserCount(userModel);
		userModel.setTotalCount(totalCount);
		userModel.calculatePage();
		
		String result = null;
		List<UserModel> userModelList = null;
		if (totalCount>0) {//如果总条数大于0
			//查询分页列表
			
			//查询信息列表
			userModelList=userService.findUserList(userModel);
			
			//转化为前台 需要的格式
			Map dataMap = getDataMap(userModelList,totalCount,request);
			result = JSONObject.fromObject(dataMap).toString();
			System.out.println(result);
		}else{//如果数据为0条
			Map map = new HashMap();
			map.put("total", 0);
			map.put("rows", new ArrayList());//如果数据为0条，则赋值一个空集合
			result = JSONObject.fromObject(map).toString();
			System.out.println(result);
		}
		outJson(result,response);
	}
	
	
	private Map getDataMap(List<UserModel> userListPage, long totalCount,HttpServletRequest request) {
		Map map = new HashMap();
		String path = request.getContextPath();
		List<Map> dataList = new ArrayList();
		for (UserModel userModel : userListPage) {
			Map bookMap = new HashMap();
			bookMap.put("checked", "<input type='checkbox' name='productId' value='"+userModel.getId()+"'/>");
			bookMap.put("id", userModel.getId());
			bookMap.put("userName", userModel.getUserName());

			bookMap.put("userHeader", "<img src='"+path+userModel.getUserHeader()+"' width='50px'/>");

			bookMap.put("userSex",  userModel.getUserSex()==1?"男":"女");
			bookMap.put("userBirthday",  userModel.getUserBirthday());
			bookMap.put("jj",  userModel.getLevelModel().getLevelName());
			dataList.add(bookMap);
		}
		map.put("total", totalCount);//需要返回总条数
		map.put("rows", dataList);//返回的集合列表
		return map;
	}
//跳转到添加页面
	@RequestMapping(value="/toAddUserModel.jhtml")
	public String toAddUserModel(ModelMap map){

		List<LevelModel> levelList=userService.findLevelList();
		map.put("levelList",levelList);
		return "/easyuiuser/addUser";
	}

//easyui添加方法
	@RequestMapping(value="/addUserModel")
	private void addUserModel(UserModel userModel){

		userService.addUser(userModel);
	
		
	}
	
//easyui跳转到修改页面
	@RequestMapping(value="/findUserModelById")
	public String findUserModelById(int userId,ModelMap map){
		List<LevelModel> levelList=userService.findLevelList();
		UserModel userModel=userService.findUserById( userId);
		map.put("userModel", userModel);
		map.put("levelList", levelList);
		return "/easyuiuser/updateUserModel";
	}
	
	//easyui跳转到修改方法
	@RequestMapping(value="/updateUser")
	public void updateUser(UserModel userModel){
		userService.updateUserById(userModel);
		
	}

	//easyui跳转到修改方法
	@RequestMapping(value="/findLevelList")
	public void findLevelList(HttpServletResponse response){
		List<LevelModel> levelList=userService.findLevelList();
		List<Map> list=new ArrayList<>();

		for (int i=0; i<levelList.size();i++){
			Map map=new HashMap();
			map.put("id",levelList.get(i).getId());
			map.put("text", levelList.get(i).getLevelName());
			list.add(map);
		}
		String jsonstr=JSONArray.fromObject(list).toString();
		outJson(jsonstr,response);

	}

}

	