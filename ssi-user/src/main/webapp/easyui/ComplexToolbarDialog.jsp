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
<title>对话框上的复杂工具栏</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>
</head>
<body>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('open')">打开</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="$('#dlg').dialog('close')">关闭</a>
	<div id="dlg" class="easyui-dialog" title="对话框上的复杂工具栏" style="width:400px;height:200px;padding:10px"
			data-options="
				iconCls: 'icon-save',
				toolbar: '#dlg-toolbar',
				buttons: '#dlg-buttons'
			">
	buttons	对话框窗口底部按钮，可用值有：
1) 一个数组，每一个按钮的属性都和linkbutton相同。
2) 一个选择器指定按钮栏。 
	</div>
	<div id="dlg-toolbar" style="padding:2px 0">
		<table cellpadding="0" cellspacing="0" style="width:100%">
			<tr>
				<td style="padding-left:2px">
					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">编辑</a>
					<a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-help',plain:true">帮助</a>
				</td>
				<td style="text-align:right;padding-right:2px">
					<input class="easyui-searchbox" data-options="prompt:'Please input somthing'" style="width:150px"></input>
				</td>
			</tr>
		</table>
	</div>
	<div id="dlg-buttons">
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:alert('save')">保存</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" onclick="javascript:$('#dlg').dialog('close')">关闭</a>
	</div>
 
</body>
</html>