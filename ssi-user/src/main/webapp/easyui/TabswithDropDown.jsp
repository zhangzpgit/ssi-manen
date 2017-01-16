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
<title>选项卡带下拉列表框</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
<div id="tt" style="width:700px;height:250px">
		<div title="关于" style="padding:10px">
			惟余莽莽
		</div>
		<div title="tree" style="padding:10px">
			<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
		</div>
		<div title="帮助" style="padding:10px">
			帮助
		</div>
	</div>
	<div id="mm">
		<div>欢迎</div>
		<div>帮助类型</div>
		<div data-options="iconCls:'icon-search'">查找</div>
		<div>测试</div>
	</div>
	
	<script>
		$(function(){
			var p = $('#tt').tabs().tabs('tabs')[2];
			var mb = p.panel('options').tab.find('a.tabs-inner');
			mb.menubutton({
				menu:'#mm',
				iconCls:'icon-help'
			}).click(function(){
				$('#tt').tabs('select',2);
			});
		});
	</script>
</center>
</body>
</html>