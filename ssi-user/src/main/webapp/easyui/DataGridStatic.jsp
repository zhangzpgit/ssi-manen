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
<title>DataGrid基础数据表格静态数据</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<!--table表格  -->
	<table class="easyui-datagrid" title="商品列表" style="width:700px;height:250px"
			data-options="singleSelect:true,collapsible:true,url:'datagrid_data1.json',method:'get'">
			<!--singleSelect 如果为true，则只允许选择一行。   collapsible    定义是否显示可折叠按钮。url数据源的路径 -->
		<thead><!--表头标签  -->
			<tr>			<!-- 列字段名称。field:'itemids' filed的值要和数据源的键对应  -->
				<th data-options="field:'itemids',width:80">Item ID</th>
				<th data-options="field:'productid',width:100">商品</th>
				<th data-options="field:'listprice',width:80,align:'right'">价格</th>
				<th data-options="field:'unitcost',width:80,align:'right'">Unit Cost</th>
				<th data-options="field:'attr1',width:250">Attribute</th>
				<th data-options="field:'status',width:60,align:'center'">Status</th>
			</tr>
		</thead>
	</table>
</body>
</html>