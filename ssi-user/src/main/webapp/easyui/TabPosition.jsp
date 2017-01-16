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
<title>选项卡位置</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
tabPosition选项卡位置。可用值：'top','bottom','left','right'
		<div style="margin:20px 0;">
		<span>Position:</span>
		<select onchange="$('#tt').tabs({tabPosition:this.value})">
			<option value="top">Top</option>
			<option value="bottom">Bottom</option>
			<option value="left">Left</option>
			<option value="right">Right</option>
		</select>
	</div>
	<div id="tt" class="easyui-tabs" style="width:700px;height:250px">
		<div title="About" style="padding:10px">
			测试
		</div>
		<div title="My Documents" style="padding:10px">
			<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
		</div>
		<div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
			This is the help content.
		</div>
	</div>

</center>
</body>
</html>