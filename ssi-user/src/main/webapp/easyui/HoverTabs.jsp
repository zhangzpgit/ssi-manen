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
<title>鼠标经过选项卡</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
	<div id="tt" class="easyui-tabs" style="width:700px;height:250px">
		<div title="测试" style="padding:10px">
				测试1111
		</div>
		<div title="My Documents" style="padding:10px">
			<ul class="easyui-tree" data-options="url:'tree_data1.json',method:'get',animate:true"></ul>
		</div>
		<div title="帮助" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
			帮助
		</div>
	</div>
	<script type="text/javascript">
		$(function(){
			var tabs = $('#tt').tabs().tabs('tabs');
			for(var i=0; i<tabs.length; i++){
				//获取选择的选项卡    unbind()  bind()的反向操作，从每一个匹配的元素中删除绑定的事件
				tabs[i].panel('options').tab.unbind().bind('mouseenter',{index:i},function(e){
					$('#tt').tabs('select', e.data.index);
				});
			}
		});
	</script>
</center>
</body>
</html>