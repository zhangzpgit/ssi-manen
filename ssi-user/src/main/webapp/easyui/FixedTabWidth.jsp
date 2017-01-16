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
<title>固定选项卡宽度</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div class="easyui-tabs" data-options="tabWidth:112" style="width:700px;height:250px">
		<div title="首页" style="padding:10px">
			<p>tabWidth:auto   默认是auto(自动的)标签条的宽度</p>
		</div>
		<div title="测试一" style="padding:10px">
			<p>挥挥衣袖</p>
		</div>
		<div title="测试2" style="padding:10px">
			<p>不带走一片云彩</p>
		</div>
		<div title="侧视3" style="padding:10px">
		</div>
		<div title="侧视4" style="padding:10px">
			<p>测试</p>
		</div>
		<div title="Contact" data-options="tabWidth:310" style="padding:10px">
			<p>我为什么这么宽？？</p>
			data-options="tabWidth:310"
		</div>
		<div title="测试" style="padding:10px">
			<p>测试</p>
		</div>
	</div>
</center>
</body>
</html>