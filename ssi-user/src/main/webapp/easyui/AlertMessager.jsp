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
<title>交互式消息</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<a href="#" class="easyui-linkbutton" onclick="alert1()">提示</a>
		<a href="#" class="easyui-linkbutton" onclick="alert2()">错误</a>
		<a href="#" class="easyui-linkbutton" onclick="alert3()">提示信息</a>
		<a href="#" class="easyui-linkbutton" onclick="alert4()">提问框</a>
		<a href="#" class="easyui-linkbutton" onclick="alert5()">警告</a>
	</div>
	<script>
		function alert1(){
			$.messager.alert('提示','我提示楼!');
		}
		function alert2(){
			$.messager.alert('错误','错误!','error');
		}
		function alert3(){
			$.messager.alert('提示信息','提示信息!','info');
		}
		function alert4(){
			$.messager.alert('提问','提问!','question');
		}
		function alert5(){
			$.messager.alert('警告','警告!','warning');
		}
	</script></body>
</html>