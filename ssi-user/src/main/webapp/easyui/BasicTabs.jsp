<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>基础选项卡</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div class="easyui-tabs" style="width:700px;height:250px;">
		<div title="About" style="padding:10px">
			假如时光倒流
		</div>
		<div title="My Documents" style="padding:10px">
			<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
			animate:true 定义在展开和折叠的时候是否显示动画效果。
		</div>
		<div title="帮助" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
			closable:true 在设置为true的时候，选项卡面板将显示一个关闭按钮，在点击的时候会关闭选项卡面板。
		</div>
		<div title="测试" style="padding:10px">
			测试
		</div>
	</div>
</center>
</body>
</html>