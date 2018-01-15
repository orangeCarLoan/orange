<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员</title>
<link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="static/easyui/themes/default/easyui.css">
<script src="static/js/jQuery-2.2.2-min.js"></script>
<script type="text/javascript" src="static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="static/easyui/jquery.easyui.min.js"></script>
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
		<form class="form-inline">
			
			<div class="form-group" style="margin-left: 1%">
				<label for="exampleInputEmail2">公司职务</label> 
				<select class="form-control" style="width: 180px">
					 <option value="1">定价师</option>
					 <option value="2">评估师</option>
					 <option value="3">审核员</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label for="exampleInputEmail2">分公司</label> 
				<select class="form-control" style="width: 180px">
					 <option value="1">分公司1</option>
					 <option value="2">分公司2</option>
					 <option value="3">分公司3</option>
					 <option value="4">分公司4</option>
					 <option value="5">分公司5</option>
				</select>
			</div>
			<button type="submit" class="btn btn-info" style="margin-left: 2%;width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 10px;">
	    <form action="#">
	    <table id="tab" class="table table-bordered" style="width: 100%;">
	    	<thead>
				<tr>
					<th>用户账号</th><th>用户密码</th><th>用户姓名</th><th>所属职务</th><th>所属公司</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>123</td><td>666</td><td>张三</td><td>定价师</td><td>分公司1</td>
				</tr>
				<tr>
					<td>123</td><td>999</td><td>李四</td><td>评估师</td><td>分公司2</td>

				</tr>
				<tr>
					<td>123</td><td>888</td><td>张三</td><td>审核员</td><td>分公司3</td>
				</tr>
	    </table>
	</form>
	<center>
    	<button style="width: 120px;" type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal">新增用户</button>
		<button style="width: 120px;" type="submit" class="btn btn-info" data-toggle="modal" data-target="#myModal">修改用户</button>
		<button id="delete" style="width: 120px;" type="submit" class="btn btn-info">删除用户</button>
	</center>
	</div>
</div>
<!-- 模态框（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					新增用户
				</h4>
			</div>
			<div class="modal-body">
			<center>
				<table class="table table-striped" style="width: 100%;">
					<tbody>
						<tr>
							<td>用户账号</td><td><input type="text"/> </td>
						</tr>
						<tr>
							<td>用户密码</td><td><input type="text"/> </td>
						</tr>
						<tr>
							<td>用户姓名</td><td><input type="text"/> </td>
						</tr>
						<tr>
							<td>所属职务</td><td>
							<select class="form-control" style="width: 100%">
								 <option>定价师</option>
								 <option>评估师</option>
								 <option>审核员</option>
								 <option>分单员</option>
							</select></td>
						</tr>
						<tr>
							<td>所属公司</td><td>
							<select class="form-control" style="width: 100%">
								 <option>分公司1</option>
								 <option>分公司2</option>
								 <option>分公司3</option>
								 <option>分公司4</option>
								 <option>分公司5</option>
							</select></td>
						</tr>
					</tbody>
				</table>
			</center>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭
				</button>
				<button type="button" class="btn btn-primary">
					确定
				</button>
			</div>
		</div><!-- /.modal-content -->
	</div><!-- /.modal -->
</div>
<script>

$("input").addClass("form-control");
$("#delete").click(function(){
	$.messager.show({
	    title:'叮咚~',
	    msg:'删除成功！',
	    timeout:5000,
	    showType:'slide'
	});
	
});
</script>
</body>
</html>