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
<title>选项卡工具组</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
</head>
<body>
<center>
tools工具栏添加在选项卡面板头的左侧或右侧。可用的值有：
1. 一个工具菜单数组，每个工具选项都和linkbutton相同。
2. 一个指向div容器工具菜单的选择器。
tabs返回所有选项卡面板
add
添加一个新选项卡面板，选项参数是一个配置对象，查看选项卡面板属性的更多细节。在添加一个新选项卡面板的时候它将变成可选的。
添加一个非选中状态的选项卡面板时，记得设置'selected'属性为false
closable 在设置为true的时候，选项卡面板将显示一个关闭按钮，在点击的时候会关闭选项卡面板

	<div id="tt" class="easyui-tabs" data-options="tools:'#tab-tools'" style="width:700px;height:250px">
	</div>
	<div id="tab-tools">
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-add'" onclick="addPanel()"></a>
		<a href="javascript:void(0)" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-remove'" onclick="removePanel()"></a>
	</div>
	<script type="text/javascript">
		var index = 0;
		function addPanel(){
			index++;
			$('#tt').tabs('add',{
				title: '序号'+index,
				content: '<div style="padding:10px">测试'+index+'</div>',
				closable: true
			});
		}
		function removePanel(){
			/*getSelected 获取选择的选项卡面板 */
			var tab = $('#tt').tabs('getSelected');
			if (tab){
				// getTabIndex获取指定选项卡面板的索引
				var index = $('#tt').tabs('getTabIndex', tab);
				// close 关闭一个选项卡面板
				$('#tt').tabs('close', index);
			}
		}
	</script>
</center>
</body>
</html>