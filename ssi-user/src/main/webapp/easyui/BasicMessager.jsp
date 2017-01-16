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
<title>基础消息框</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<a href="#" class="easyui-linkbutton" onclick="show()">展示</a>
		<a href="#" class="easyui-linkbutton" onclick="slide()">滑出</a>
		<a href="#" class="easyui-linkbutton" onclick="fade()">淡出</a>
		<a href="#" class="easyui-linkbutton" onclick="progress()">进度条</a>
	<script type="text/javascript">
		function show(){
			$.messager.show({
				title:'标题',
				msg:'展示',
				showType:'show'
			});
		}
		function slide(){
			$.messager.show({
				title:'标题',
				msg:'滑出',
				timeout:5000,
				showType:'slide'
			});
		}
		function fade(){
			$.messager.show({
				title:'标题',
				msg:'淡出',
				timeout:0,
				//showType：定义将如何显示该消息。可用值有：null,slide,fade,show。默认：slide
				showType:'fade'
			});
		}
		function progress(){
			var win = $.messager.progress({
				title:'加载',
				msg:'走心加载...'
			});
			setTimeout(function(){
				$.messager.progress('close');
			},5000)
		}
	</script>
</body>
</html>