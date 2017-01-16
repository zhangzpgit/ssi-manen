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
<title>工具栏和按钮组</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
$(function (){
	$("#dlg").datagrid({
		iconCls: 'icon-save',
		modal:true,
		toolbar: [{
			text:'添加',
			iconCls:'icon-add',
			handler:function(){
				alert('添加')
			}
		},'-',{
			text:'保存',
			iconCls:'icon-save',
			handler:function(){
				alert('保存')
			}
		}],
		buttons: [{
			text:'Ok',
			iconCls:'icon-ok',
			handler:function(){
				alert('ok');
			}
		},{
			text:'关闭',
			handler:function(){
				alert('关闭');;
			}
		}]	
	});
});

</script>
</head>
<body>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">打开</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">关闭</a>
	<div id="dlg" class="easyui-dialog" title="工具栏和按钮组" style="width:400px;height:200px;padding:10px"
			>
		toolbar设置对话框窗口顶部工具栏，可用值有：
	1) 一个数组，每一个工具栏中的工具属性都和linkbutton相同。
	2) 一个选择器指定工具栏。
	</div>
</body>
</html>