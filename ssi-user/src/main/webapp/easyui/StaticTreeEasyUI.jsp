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
<title>静态Tree</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>

		<ul class="easyui-tree">
			<li>
				<span>My Documents11111</span>
				
				
				
				<ul>
					<li data-options="state:'closed'">
						<span>Photos</span>
						<ul>
							<li>
								<span>Friend</span>
							</li>
							<li>
								<span>Wife</span>
							</li>
							<li>
								<span>Company</span>
							</li>
						</ul>
					</li>
					<li>
						<span>Program Files</span>
						<ul>
							<li>Intel</li>
							<li>
								<span>Java</span>
								<ul>
									<li>第一小组11111111111</li>
									<li>第二小组</li>
									<li>第三小组</li>
								</ul>
							</li>
							<li>Microsoft Office</li>
							<li>Games</li>
						</ul>
					</li>
					<li>index.html</li>
					<li>about.html</li>
					<li>welcome.html</li>
				</ul>
			</li>
		</ul>
 

</body>
</html>