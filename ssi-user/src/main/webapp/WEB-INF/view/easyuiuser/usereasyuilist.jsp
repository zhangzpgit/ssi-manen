<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%--   <%@include file="/common/common.jsp" %> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书主副页分离</title>
<!--引入c标签  -->
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!--引入d标签  -->
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--引入jqury标签 ajax依赖  -->





<!--引入easyui  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/js/jquery-easyui-1.5/themes/icon.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
<%--  <script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.min.js"></script>  --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-easyui-1.5/locale/easyui-lang-zh_CN.js"></script>

 <!-- 引入uploadify -->
<link  rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>



<!-- ---------------------------------------------- -->
<!-- 引入my97 -->
<script type="text/javascript" src="<%=request.getContextPath() %>/js/My97DatePicker/WdatePicker.js"></script>
<!-- ---------------------------------------------- --> 
<script type="text/javascript">
$(function(){//页面加载事件 执行查询方法

	$("#bookTable").datagrid({
		title : '用户列表',
		url : '<%=request.getContextPath()%>/user/findUserEasyuiList.jhtml',
		//如果为true，则在DataGrid控件底部显示分页工具栏
		pagination: true,
		//如果为true，则显示一个行号列
		rownumbers : true,
		//如果为true则只允许选择一行,默认false。
		singleSelect : true	,
		toolbar:'#booktb',
		pageSize : 5,
		//如果设置为true，布局组件将自适应父容器。当使用'body'标签创建布局的时候，整个页面会自动最大
		fit:false,  
		//真正的自动展开/收缩列的大小，以适应网格的宽度，防止水平滚动
		fitColumns:true,
		//设置默认展示条数
		pageSize: 5,
	    //可以设置每页记录条数的列表
	    pageList: [5,10,15,20],
	    //页数文本框前显示的汉字 
	    beforePageText: '第',
	    afterPageText: '页    共 {pages} 页', 
	    displayMsg: '当前显示 {from} - {to} 条记录   共 {total} 条记录', 
	    onBeforeRefresh:function(){
	    	//提示正在加载
	        $(this).pagination('loading');
	    	//刷新分页组件
	        $(this).pagination('loaded');
	    },
		columns:[
		         [ {
				//field可以自定义 和后台map字段名对应列字段名称是展示的值。title 是每列的标题
				field : 'checked',
				title : '选择',
			
				align : 'center'
			}, {
				//列字段名称。
				field : 'id',
				title : 'ID',
				width : 10,
				align : 'center'
			},{
				//列字段名称。
				field : 'userName',
				title : '用户名',
				width : 10,
				align : 'center'
			},{
				field : 'userHeader',
				title : '用户主图',
				width : 10,
				align : 'center'
			},  {
				field : "userSex",
				title : "性别",
				width : 10,
				align : "center"
			},{
				field : "userBirthday",
				title : "年龄",
				width : 10,
				align : "center"
			} ,
					 {
						 field : "jj",
						 title : "用户级别",
						 width : 10,
						 align : "center"
					 } ,
					 {
						 field : "userSex",
						 title : "性别",
						 width : 10,
						 align : "center",
						 formatter:function(value){
							 return "value==1?'男':'女'";
						 }
					 } ,
			] 
			
		]
	}); 
	
	
//=============构造添加图书的对话框写在页面加载事件中
	$("#addBookDialog").dialog({
		width : "600",
		height : "400",
		//cache 如果为true，在超链接载入时缓存面板内容。
		cache: false,   
		//跳转到添加页面
		
		href:"<%=request.getContextPath()%>/user/toAddUserModel.jhtml",
		modal: true,//模态窗口
		//对话框窗口底部按钮。
		buttons : [{
			text : "保存",
			//显示背景图片的CSS类ID
			iconCls : "icon-save",
			//当按钮被点击时调用的一个函数。
			handler : function() {
				//使普通表单成为ajax提交方式的表单,formProduct是添加页面的form表单的id。
				$("#formProduct").form("submit", {
					url : "<%=request.getContextPath()%>/user/addUserModel.jhtml",
					success : function(result) {
							//重新加载数据表格
						    $("#bookTable").datagrid("reload");
							//关闭对话框
							$("#addBookDialog").dialog("close");
					}
				});
			}
		}, {
			text : "取消",
			iconCls : "icon-cancel",
			handler : function() {
				$("#addBookDialog").dialog("close");
			}
		} ] 
	});	
	
	//====================构造修改图书的对话框==写在页面加载事件中
	$("#updateBookDiv").dialog({
		width : "600",
		height : "400",
		//cache 如果为true，在超链接载入时缓存面板内容。
		cache: false,    
		modal: true,
		//对话框窗口底部按钮。
		buttons : [{
			text : "修改",
			//显示背景图片的CSS类ID
			iconCls : "icon-save",
			//当按钮被点击时调用的一个函数。
			handler : function() {
				//使普通表单成为ajax提交方式的表单。执行修改方法
				$("#formProduct").form("submit", {
					url : "<%=request.getContextPath()%>/user/updateUser.jhtml",
					success : function(result) {
							//重新加载数据表格
						    $("#bookTable").datagrid("reload");
							//关闭对话框
							$("#updateBookDiv").dialog("close");
					}
				});
			}
		}, {
			text : "取消",
			iconCls : "icon-cancel",
			handler : function() {
				$("#updateBookDiv").dialog("close");
			}
		} ] 
	});		
	
	

});	






</script>

<script type="text/javascript">

  
//条件查询
function findData(){ 
	//model类中定义的是int类型 所以没有添值得时候是"" 所以不填值时赋值0
  var	minPrice=$("#minPrice").val()
	if(minPrice==""){
		minPrice=0
	}
  var	maxPrice=$("#maxPrice").val()
	if(maxPrice==""){
		maxPrice=0
	}
  var brandid=$("#brandId").combobox('getValue')//jquery获得下拉框的固定格式
  
  if(brandid==""){
	  brandid=0
  }
	/*单选框*/
	var sex=$("input[name='sex']:checked").val()


       $('#bookTable').datagrid('load',{  //$(“#grid”).datagrid(“load”,{ });方法它的参数为一个json对象，里面写的是你要传输的参数的键值对，调用这个方法来加载数据的时候，它传给后台的分页信息是从第一页开始的。
       										//会自动加载向后台的查询方法
       	'minDate':$('#minPublishDate').datebox('getValue'), //jquery获得日期的固定格式
       	'maxDate':$('#maxPublishDate').datebox('getValue'),
      'levelModel.id':brandid,

       	'pageName':$("#bookNamewhere").val(),
		   'pageSex':sex
       	});  
  }  
//重置
function resetForm(){
	//清除表单数据
	$("#wform").form("clear");
	findData();//为了给下拉框赋值
}
//处理查询返回后的数据
function loadFunction(){
	$.messager.alert('提示信息','没有符合要求信息,请重新查询！','info');
	/* //清除表单数据
	$("#wform").form("clear") */;
	findData();
}
  
  
  
  
//点击添加按钮打开添加图书对话框对应对话框div
function addBook() {
	//dialog("open")打开对话框并且设置为添加用户
	 $("#addBookDialog").dialog("open").dialog("setTitle", "添加产品");
}

//点击修改按钮触发事件选中哪一行修改哪一行修改图书信息
function updateBook(){
	
	
	//获取选择的选项卡面板。返回第一个被选中的行或如果没有选中的行则返回null。
    var row = $("#bookTable").datagrid("getSelected");

    if (null!=row) {
      	//打开div
        $("#updateBookDiv").dialog("open").dialog('setTitle', '修改图书信息');
        //load 读取记录填充到表单中。数据参数可以是一个字符串或一个对象类型，如果是字符串则作为远程URL，否则作为本地记录
       	var id = row.id;//获取本行信息的id
       
        //跳转到修改页面
        $("#updateBookDiv").dialog("refresh", "<%=request.getContextPath()%>/user/findUserModelById.jhtml?userId="+id)
			.dialog("open")
			.dialog("setTitle", "更新图书信息");
        
    }else{
    	$.messager.alert('提示信息','请选择您要修改的图书信息','info');
    }
}


//批量删除
function deleteBatch(){
	var idStr = "";
	$("input[name='productId']:checked").each(function(){
		idStr +=","+this.value;
	});
	if (idStr.length>0) {
		idStr = idStr.substring(1);
		$.messager.confirm('确认', '您确定要删除?', function(dd){
			if (dd){
				$.post("<%=request.getContextPath()%>/user/deleteAll.jhtml",
						{"ids":idStr},
						function(data){
							//刷新页面
							findData();
					});
			}
		});
	}else{
		$.messager.alert('提示信息','请选择您要删除的图书信息！！','info');
	}
}
</script>
</head>
<body class="easyui-layout">
		<div class="easyui-panel" style="padding:1px;width:100%;" title="查询条件" >
	<div style="margin:5px;">
		<form action="#" id="wform">
					生日: <input class="easyui-datebox" style="width:150px" id="minPublishDate">
					至: <input class="easyui-datebox" style="width:150px" id="maxPublishDate">
					用户级别: <!--下拉框用 class="easyui-combobox" 在input 框中写下拉 并发送请求 返回的是json数组套数组格式[{}] id，text,在后台用map把model里的id name换成对应的-->
								<!--valueField:'id',相当于option的value值 ，textField:'text'相当于展示的名字 -->
					<input id="brandId" class="easyui-combobox"  panelHeight="auto" style="width:100px" 
								data-options="valueField:'id',textField:'text',url:'<%=request.getContextPath()%>/user/findLevelList.jhtml'"/>
					<br><br> 
					用户名称：<input id="bookNamewhere" class="easyui-textbox" style="width:150px">
			性别:
				<input type="radio" value="1"name="sex">男
					<input type="radio" value="2"name="sex">女

			</tr>
					<br><br>
					<!--class="easyui-linkbutton" 给a标签绑定事件  -->
					<a href="javascript:findData()" class="easyui-linkbutton" iconCls="icon-search">查询</a>
					<a href="javascript:resetForm()" class="easyui-linkbutton" iconCls="icon-reload">重置</a>
		</form>
	</div>
</div>
		

<!--展示列表的table  -->			
<table id="bookTable">
</table>

<!--按钮对话框  -->
<div id="booktb" style="padding:5px;height:auto;">
			<a href="#" class="easyui-linkbutton" iconCls="icon-add" plain="false" onclick="addBook();">添加</a>
				<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="false"  onclick="updateBook()">编辑</a>
				<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="false" onclick="deleteBatch();">批量删除</a>
				<a href="#" class="easyui-linkbutton" iconCls="icon-reload" plain="false" 
				onclick="javaScript:resetForm();">刷新</a>
</div>
<!--修改图书对话框-->
<div id="updateBookDiv" closed="true" >
</div>
<!--添加图书对话框-->
<div id="addBookDialog" closed="true" ></div>


</body>
</html>