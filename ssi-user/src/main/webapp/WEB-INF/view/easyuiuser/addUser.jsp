<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

	<form method="post" id="formProduct">
		<table align="center" width="100%" height="100%" border="1px">
			<tr>
				<th>用户名</th>
				<th><input class="easyui-textbox" style="width:150px"  name="userName">
				</th>
			</tr>


			<tr>
				<th>生日</th>
				<th><input onclick="WdatePicker()" style="width:120px;" class="Wdate" type="text"  style="width:150px"  name="userBirthday">
				</th>
			</tr>
			
			<tr>
			<td>性别:</td>
			<td><input type="radio" value="1"name="userSex">男
				<input type="radio" value="2"name="userSex">女
			</td>
		</tr>
			<tr>
				<td>用户级别</td>
				<td>
					<select name="levelModel.id">
						<option value="1">金牌用户</option>
						<c:forEach items="${levelList}" var="level">
							<option value="${level.id}">${level.levelName}</option>
							</c:forEach>
					</select>
				</td>
			</tr>
		
		<tr>
		<td>上传头像:</td> 
		<td>
			<!--file域  -->
			<input type="file" id="headImg" />
			<!--列队div  -->
			<div id="fileQueue" style="width:500px;"></div>
			<!--展示图片div  -->
			<div id="showHeadImg"></div>
			<!--隐藏域 存储路径  -->
			<input type="hidden" id="headHiden" name="userHeader">
		</td>
	</tr>
	
	
	
		</table>
	</form>
<script type="text/javascript">
$(function() {
	$("#headImg").uploadify({
		//前台请求后台的url 不可忽略的参数
      	'uploader':'<%=request.getContextPath()%>/user/uploadHead.jhtml',
      	//插件自带  不可忽略的参数
      	'swf': '<%=request.getContextPath()%>/js/uploadify/uploadify.swf',
     	//给div的进度条加背景 不可忽略
     	'queueID': 'fileQueue',
     	//如果为true 为自动上传  在文件后 为false 那么它就要我们自己手动点上传按钮
        'auto': true,
      	//可以同时选择多个文件 默认为true  不可忽略
        'multi': false,
        'buttonText':'上传用户头像',
        'removeTimeout':0.5,
        'width': 100,
        // 相当于文件域的name属性值
     	'fileObjName' : 'headImage',
     	'onUploadSuccess' : function(file, data, response) {//当上传完成后的回调函数，ajax方式哦~~ 
     		// 将json格式的字符串转换为json对象
			var v_result = eval("("+data+")");
			if(v_result.status=="success"){
	     	    // 获取json对象中headImage的值
				var v_headImage = v_result.path;
			  	
				// 回显头像
				$("#showHeadImg").html("<img src='<%=request.getContextPath()%>"+v_headImage+"' width='80px' height='80px' >")
				
	     		// 将头像路径存入隐藏域
				$("#headHiden").val(v_headImage)
			}else{
				alert("上传失败")
			}
     	} 
    });
	

});
</script>
