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
<title>选项卡嵌套</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:700px;height:550px">
		<div title="陕西" style="padding:10px;">
			<div class="easyui-tabs" data-options="fit:true,plain:true">
				<div title="西安" style="padding:10px;">fif 如果设置为true，布局组件将自适应父容器。当使用'body'标签创建布局的时候，整个页面会自动最大。</div>
				<div title="宝鸡" style="padding:10px;">Content 2</div>
				<div title="延安" style="padding:10px;">Content 3</div>
			</div>
		</div>
		<div title="北京" style="padding:10px">测试时</div>
		<div title="广西" data-options="closable:true" style="overflow:hidden">
			<iframe scrolling="yes" frameborder="0"  src="http://www.jeasyui.com/forum/index.php" style="width:100%;height:100%;"></iframe>
		</div>
		<div title="车辆统计" data-options="closable:true" style="padding:10px">
			<table class="easyui-datagrid" data-options="fit:true,singleSelect:true,rownumbers:true">
				<thead>
					<tr>
						<th data-options="field:'f1',width:100">省份</th>
						<th data-options="field:'f2',width:100">货车</th>
						<th data-options="field:'f3',width:100">私家车</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>河北省</td>
						<td>120321</td>
						<td>658942</td>
					</tr>
					<tr>
						<td>河南省</td>
						<td>58922</td>
						<td>36985214</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</center>
</body>
</html>