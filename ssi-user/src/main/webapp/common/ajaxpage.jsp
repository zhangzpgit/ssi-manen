<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="/common/common.jsp"%>
<c:if test="${page.pageIndex == 1 }">
 <img src="../images/1.gif" width="4" height="5" align="absmiddle"><font color="red">首页</font>
<img src="../images/2.gif" width="3" height="5" align="absmiddle"> 上一页
</c:if>

<c:if test="${page.pageIndex != 1}">
<a href="javascript:;" onclick="turnPage(1)">
首页
</a>
<a href="javascript:;" onclick="turnPage(${page.pageIndex - 1})">上一页</a>
</c:if>



<c:if test="${page.totalCount > 0 && page.pageIndex != page.pageCount }">
<img src="../images/2-2.gif" width="3" height="5" align="absmiddle"><a href="javascript:;" onclick="turnPage(${page.pageIndex + 1 })">下一页</a>
<img src="../images/3.gif" width="4" height="5" align="absmiddle"><a href="javascript:;" onclick="turnPage(${page.pageCount})">尾页</a>
</c:if>

<c:if test="${page.totalCount == 0 || page.pageIndex == page.pageCount }">
下一页
<font color='red'>尾页</font>
</c:if>
当前为${page.pageIndex}/${page.pageCount}
共${page.totalCount}条数据

<!--指定调到第几页  -->
<input type="text" id="pIndex" value="${page.pageIndex}" style="width:25px">页<input type="button" onclick="goPage()" value="GO">


<!--动态改变每页条数  做一个onchange事件 this代表当前标签。${page.pageIndex==5?"selected":""}回填-->
<select  onchange="changePageSize(this.value)">
	<option value="3" ${page.pageSize==3?"selected":""} >每页3条</option>
	<option value="5" ${page.pageSize==5?"selected":""}>每页5条</option>
	<option value="15" ${page.pageSize==15?"selected":""}>每页15条</option>
	<option value="20" ${page.pageSize==20?"selected":""}>每页20条</option>
</select>


<script type="text/javascript">
//声明全局变量 因为主页面个引入子页面 所以主页面直接用这个变量
	var v_pageSize;//在主页面把这个值传到page类，付给pageSize 改变每页条数
	function changePageSize(pageSize){
		this.v_pageSize=pageSize;
		//改变每页条数后 在调用条件查询方法看效果
		search(1)
	}

//调到指定页数的方法
function goPage(){
	var zhi=$("#pIndex").val()
	//判断输入页数不能大于最大页数 输入页数对应pageIndex
	if(zhi>=1&&zhi<="${page.pageCount}"){
		//调用分页方法
		turnPage(zhi)
	}else{
		alert("页数不合适")
	}
}
</script>
