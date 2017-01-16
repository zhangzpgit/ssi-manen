<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!--引入c标签  -->
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>

<!--引入d标签  -->
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--引入jqury标签 ajax依赖  -->
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.8.3.js"></script>
<!--m97  -->
<script type="text/javascript" src="<%=request.getContextPath() %>/js/My97DatePicker/WdatePicker.js"></script>
<% 
response.setHeader("Pragma","No-cache");    
response.setHeader("Cache-Control","no-cache");    
response.setDateHeader("Expires", 0);   
%> 

<!-- 引入富文本 -->
 <link rel="stylesheet" href="<%=request.getContextPath() %>/js/kindeditor-4.1.10/themes/default/default.css" />
<script charset="utf-8" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/kindeditor-min.js"></script>
<script charset="utf-8" src="<%=request.getContextPath() %>/js/kindeditor-4.1.10/lang/zh_CN.js"></script> 
 

<!-- 引入uploadify -->
<link  rel="stylesheet" href="<%=request.getContextPath()%>/js/uploadify/uploadify.css"/>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/uploadify/jquery.uploadify.min.js"></script>




<!-- 引入echarts -->
 <script type="text/javascript" src="<%=request.getContextPath()%>/js/echarts.js"></script> 

<!--引入ztree 和table表格冲突  -->
<link href="<%=request.getContextPath()%>/js/zTree_v3-master/css/demo.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/js/zTree_v3-master/css/zTreeStyle/zTreeStyle.css" rel="stylesheet" />
<%-- <script type="text/javascript" src="<%=request.getContextPath()%>/js/zTree_v3-master/js/jquery-1.4.4.min.js"></script> --%>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/zTree_v3-master/js/jquery.ztree.core.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/zTree_v3-master/js/jquery.ztree.exedit.min.js"></script>
<!-- 引入复选框 -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/zTree_v3-master/js/jquery.ztree.excheck.min.js"></script>
 
