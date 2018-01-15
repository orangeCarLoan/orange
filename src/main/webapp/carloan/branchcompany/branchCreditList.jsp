<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<%-- <link rel="stylesheet" type="text/css" href="<%=basePath %>themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="<%=basePath %>css/bootstrap.min.css">
<script type="text/javascript" src="<%=basePath%>js/jquery.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.mobile.js"></script>
<script type="text/javascript" src="<%=basePath%>js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=basePath%>js/bootstrap.min.js"></script> --%>
</head>
<body>
  <p style="outline: 1px solid black;">当前位置:车贷管理>分公司信审列表</p>        
        <div style="width: 100%;height: 200px;padding-left: 250px;padding-top: 60px;outline: 1px solid black;">
		<span  style="margin-left: 50px">合同编号:</span> <input type="text" id="orderNum"/> 
		<span style="margin-left: 50px">借款人:</span> <input type="text" id="peopleName"/>
		<span style="margin-left: 50px">分公司:</span> <input class="easyui-combobox" id="branch" data-options="valueField:'id',textField:'text',url:'carloan/branch',method:'get'" />
		<a href="javascript:void(0)" style="margin-left: 50px;width: 80px"  class="btn btn-default" id="find">查询</a>
	</div>
	
	<div>
	     <table class="table-bordered text-center table table-hover" style="width: 100%;margin-top: 20px">
	     <tr style="height:50px;background-color:#FFFFCC">
					<td>序号</td>		
					<td>合同编号</td>
					<td>借款人</td>
					<td>业务经理</td>
					<td>分公司</td>
				</tr>
				<tbody id="tbody">
				
				</tbody>
	     </table>
	     <a href="javascript:void(0)" style="width: 80px" class="easyui-linkbutton" id="firstTrial">初审</a> &nbsp;&nbsp;&nbsp;
		 <a href="javascript:void(0)" style="width: 80px" class="easyui-linkbutton" id="abolish">撤销</a>
	</div>
	
</body>
</html>