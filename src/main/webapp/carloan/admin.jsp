<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap-table.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap-table-zh-CN.min.js"></script>
<style>
.table th, .table td { 
		text-align: center; 
	}
</style>
</head>
<body>
<div>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置 : 管理员</font></div>
	<div style="height: 80x;margin-top: 10px;">
		<form id="myform" class="form-inline">
			
			<div class="form-group" style="margin-left: 1%">
				<label for="exampleInputEmail2">公司职务</label> 
				<select class="form-control" style="width: 180px" name="roleName">
					 <option value="">-无-</option>
					 <option>定价师</option>
					 <option>评估师</option>
					 <option>审核员</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label for="exampleInputEmail2">分公司</label> 
				<select class="form-control" style="width: 180px" name="companyName">
					 <option value="">-无-</option>
					 <option value="1">分公司1</option>
					 <option value="2">分公司2</option>
					 <option value="3">分公司3</option>
					 <option value="4">分公司4</option>
					 <option value="5">分公司5</option>
				</select>
			</div>
			<button type="button" id="find" class="btn btn-default"
				style="margin-left: 5%; width: 200px">查询</button>
		</form>
	</div>
	<div style="margin-top: 10px;">
	    <form action="#">
	    <table id="tab3" class="table table-bordered" style="width: 100%;">
	    	<thead>
				<tr>
					<th data-field="id" style="width: 60px;">序号</th>
					<th data-field="userName">登录名</th>
					<th data-field="password">密码</th>
					<th data-field="realName">真实姓名</th>
					<th data-field="roleId.roleName">所属职务</th>
					<th data-field="companyId.name">分公司</th>
				</tr>
			</thead>
	    </table>
	</form>
	<center id="hidden">
    	<button style="width: 120px;" type="button" class="btn btn-info" id="add">新增用户</button>
		<button style="width: 120px;" type="button" class="btn btn-info" id="update">修改用户</button>
		<button id="delete" style="width: 120px;" type="button" class="btn btn-info">删除用户</button>
	</center>
	</div>
</div>
<!-- 模态框（Modal） -->
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 id="title" class="modal-title" id="myModalLabel">
				</h4>
			</div>
			<div class="modal-body">
			<center>
			<form id="addOrUpdate">
				<input type="hidden" id="updateId" name="id" value="0" />
				<table class="table table-striped" style="width: 100%;">
					<tbody>
						<tr>
							<td>用户账号</td><td><input id="userName" type="text" name="userName" class="form-control"/> </td>
						</tr>
						<tr>
							<td>用户密码</td><td><input id="password" type="text" name="password" class="form-control"/> </td>
						</tr>
						<tr>
							<td>用户姓名</td><td><input id="realName" type="text" name="realName" class="form-control"/> </td>
						</tr>
						<tr>
							<td>所属职务</td><td>
							<select class="form-control" style="width: 100%" id="roleId" name="role">
								 <option value="1">定价师</option>
								 <option value="2">评估师</option>
								 <option value="3">审核员</option>
								 <option value="4">分单员</option>
							</select></td>
						</tr>
						<tr>
							<td>所属公司</td><td>
							<select class="form-control" style="width: 100%" id="companyId" name="company">
								 <option value="1">分公司1</option>
								 <option value="2">分公司2</option>
								 <option value="3">分公司3</option>
								 <option value="4">分公司4</option>
								 <option value="5">分公司5</option>
							</select></td>
						</tr>
					</tbody>
				</table>
			</form>
			</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-info" data-dismiss="modal">关闭
				</button>
				<button id="enter" type="button" class="btn btn-info">
					确定
				</button>
			</div>
		</div>
	</div>
</div>
<script>
var param = $("#myform").serialize();
var trId=0;
var trObject;
var trRow;
$("#find").click(function(){
	param = $("#myform").serialize();
	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
});
$("#delete").click(function(){
	if(trId!=0){
		$.ajax({
	        type:"post",//type请求方式
	        url:"../admin/delete",//url请求路径
	        async:true,//async是否异步请求
	        data:"adminId="+trId,
	        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
	        success:function(mes){
	        	if(mes=="true"||mes){
	        		$.messager.show({
	        		    title:'叮咚~',
	        		    msg:'删除成功！',
	        		    timeout:5000,
	        		    showType:'slide'
	        		});
	        	}else{
	        		$.messager.show({
	        		    title:'叮咚~',
	        		    msg:'系统繁忙，操作失败！',
	        		    timeout:5000,
	        		    showType:'slide'
	        		});
	        	}
	        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
	        }
	    });
	}else{
		$.messager.show({
		    title:'叮咚~',
		    msg:'请选择要删除的数据！',
		    timeout:5000,
		    showType:'slide'
		});
	}
});
$("#enter").click(function(){
	var data = $("#addOrUpdate").serialize();
	$.ajax({
        type:"post",//type请求方式
        url:"../admin/addOrUpage",//url请求路径
        async:true,//async是否异步请求
        data:data,
        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
        success:function(mes){
        	$("#myModal").modal("toggle");
        	if(mes=="true"||mes){
        		alert("操作成功");
        	}else{
        		alert("操作失败，系统繁忙");
        	}
        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
        }
    });
});
$("#add").click(function(){
	$('#addOrUpdate').form("clear");
	$("#updateId").val("0");
	$('#realName').attr("disabled",false);
	$("#title").html("新增管理员");
	$("#myModal").modal("toggle");
	$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
});
$("#update").click(function(){
	if(trId!=0){
		$('#addOrUpdate').form("clear");
		$("#realName").attr("disabled","disabled");
		$("#updateId").val(trRow.id);
		$("#userName").val(trRow.userName);
		$("#password").val(trRow.password);
		$("#realName").val(trRow.realName);
		$("#roleId option").each(function(){
			if($(this).html()==trRow.roleId.roleName){
				$(this).attr("selected","selected");
			}
		});
		$("#companyId option").each(function(){
			if($(this).html()==trRow.companyId.name){
				$(this).attr("selected","selected");
			}
		});
		
		$("#title").html("修改管理员");
		$("#myModal").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	}else{
		alert("请选择某一行");
	}
});
//先销毁表格  
$('#tab3').bootstrapTable('destroy');  
//初始化表格,动态从服务器加载数据  
$("#tab3").bootstrapTable({  
    method: "get",  //使用get请求到服务器获取数据  
    url: "../admin", //获取数据的Servlet地址  
    striped: true,  //表格显示条纹  
    pagination: true, //启动分页  
    pageSize: 5,  //每页显示的记录数  
    pageNumber:1, //当前第几页  
    pageList: [5, 10, 15, 20, 25],  //记录数可选列表  
    //showRefresh: true,  //显示刷新按钮  
    sidePagination: "server", //表示服务端请求  
    //设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
    //设置为limit可以获取limit, offset, search, sort, order  
    queryParamsType : "undefined",   
    queryParams: function queryParams(params) {   //设置查询参数  
  		  trId=0;//恢复默认行
  	    	//设置查询参数  
  	      return param+"&pageNumber="+params.pageNumber+"&pageSize="+params.pageSize; 
    },  
    onLoadSuccess: function(){  //加载成功时执行  
      console.info("aaaaaaaaaaaaaaa");  
    },  
    onLoadError: function(){  //加载失败时执行  
  	  console.info("bbbbbbbbb");  
    }  ,
    onClickRow: function (row, tr) {
    	if(trId!=0){
    		trObject.removeClass("info");
    	}
    	tr.addClass("info");
    	trId = row.id;
    	trRow = row;
    	trObject = tr;
    }
  });  
$("input").addClass("form-control");
</script>
</body>
</html>