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
<title>带图片的选项卡</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div class="easyui-tabs" data-options="tabWidth:100,tabHeight:60" style="width:700px;height:250px">
		<div title="<span class='tt-inner'><img src='<%=request.getContextPath()%>/js/jquery-easyui-1.5/images/modem.png'/><br>Modem</span>" style="padding:10px">
			<p>北国风光</p>
		</div>
		<div title="<span class='tt-inner'><img src='<%=request.getContextPath()%>/js/jquery-easyui-1.5/images/scanner.png'/><br>Scanner</span>" style="padding:10px">
			<p>千里冰封</p>
		</div>
		<div title="<span class='tt-inner'><img src='<%=request.getContextPath()%>/js/jquery-easyui-1.5/images/pda.png'/><br>Pda</span>" style="padding:10px">
			<p>万里雪飘</p>
		</div>
		<div title="<span class='tt-inner'><img src='<%=request.getContextPath()%>/js/jquery-easyui-1.5/images/tablet.png'/><br>Tablet</span>" style="padding:10px">
			<p>忘长城内外</p>
		</div>
	</div>
	<style scoped="scoped">
		.tt-inner{
			display:inline-block;
			line-height:12px;
			padding-top:5px;
		}
		.tt-inner img{
			border:0;
		}
	</style>
</center>
</body>
</html>