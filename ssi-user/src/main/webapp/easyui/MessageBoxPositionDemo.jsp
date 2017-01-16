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
<title>消息框位置</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
<center>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topLeft();">上左</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topCenter()">上中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="topRight()">上右</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerLeft()">中左</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="center()">中间</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="centerRight()">中右</a>
		</p>
		<p>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomLeft()">下左</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomCenter()">下中</a>
			<a href="javascript:void(0)" class="easyui-linkbutton" onclick="bottomRight()">下右</a>
		</p>
</center>
	<script>
		function topLeft(){
			$.messager.show({
				title:'提示标题',
				msg:'显示的消息文本',
				showType:'show',
				timeout:3,
				/* timeout：如果定义为0，消息窗体将不会自动关闭，除非用户关闭他。
				如果定义成非0的树，消息窗体将在超时后自动关闭。默认：4秒。 */
				style:{
					right:'',
					left:0,
					/*获取滚动条到顶部的垂直高度 
						$(document).scrollTop();   */
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topCenter(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'slide',
				style:{
					right:'',
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function topRight(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'show',
				style:{
					left:'',
					right:0,
					top:document.body.scrollTop+document.documentElement.scrollTop,
					bottom:''
				}
			});
		}
		function centerLeft(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'fade',
				style:{
					left:0,
					right:'',
					bottom:''
				}
			});
		}
		function center(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'fade',
				style:{
					right:'',
					bottom:''
				}
			});
		}
		function centerRight(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'fade',
				style:{
					left:'',
					right:0,
					bottom:''
				}
			});
		}
		function bottomLeft(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'show',
				style:{
					left:0,
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomCenter(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'slide',
				style:{
					right:'',
					top:'',
					bottom:-document.body.scrollTop-document.documentElement.scrollTop
				}
			});
		}
		function bottomRight(){
			$.messager.show({
				title:'标题',
				msg:'显示的消息文本',
				showType:'show'
			});
		}
	</script>
</body>
</html>