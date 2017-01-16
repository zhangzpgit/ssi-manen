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
<title>提示消息框</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
		<a href="#" class="easyui-linkbutton" onclick="confirm1();">选择框</a>
		<a href="#" class="easyui-linkbutton" onclick="prompt1()">写入框</a>
	<script>
		function confirm1(){
			$.messager.confirm('确认', '您确定要删除?', function(r){
				if (r){
					alert('ok: '+r);
				}
			});
		}
		function prompt1(){
			$.messager.prompt('录入', '录入您的身份证号码', function(r){
				if (r){
					alert('录入: '+r);
				}
			});
		}
	</script>
	</body>
</html>