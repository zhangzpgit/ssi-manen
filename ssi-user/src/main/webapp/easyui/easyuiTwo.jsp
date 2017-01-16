<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@include file="/common/common.jsp" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">

 <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>

</head>


<body class="easyui-layout">
	<div data-options="region:'north',border:false" style="height:60px;background:#B3DFDA;padding:10px">north region</div>
	<div data-options="region:'west',split:true,title:'West'" style="width:150px;padding:10px;">west content</div>
	<div data-options="region:'east',split:true,collapsed:false,title:'East'" style="width:100px;padding:10px;">east region</div>
	<div data-options="region:'south',border:false" style="height:50px;background:#A9FACD;padding:10px;">south region</div>
	
	<!--全局布局里可以嵌套多个基础布局  -->
	<div data-options="region:'center',title:'Center'" class="easyui-layout">
		<div data-options="region:'north'" title="上边" style="height:50px">上边</div>
		<div data-options="region:'west',split:true,collapsible:true" title="左边" style="width:100px;">左边</div>
		<div data-options="region:'center'" title="中间" class="easyui-layout">
			中间<!--基础页面中间再嵌套一个基础页面 但父级必须申明 class="easyui-layout"-->
			<div data-options="region:'center',title:'Center'" class="easyui-layout">
			<div data-options="region:'north'" title="上边" style="height:50px">上边</div>
			<div data-options="region:'west',split:true,collapsible:true" title="左边" style="width:100px;">左边</div>
			<div data-options="region:'center'" title="中间">
			中间
			
			
		</div>
			
		</div>
	</div>
	
	
</body>

</html>