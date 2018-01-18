<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷读取身份证</title>
<!-- <link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css"> -->
<!-- <script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script> -->
<style type="text/css">
	.table{
		text-align: center;
	}
	.table th, .table td { 
		text-align: center; 
	}
</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:车贷读取身份证</font></div>
	<div style="height: 80x;margin-top: 20px;">
		<font size="2" style="margin-left: 1%">查询条件</font><p/>
		<form class="form-inline">
			<div class="form-group" style="margin-left: 1%">
				<label>合同编号</label> <input type="date"
					class="form-control" id="contract" placeholder="合同编号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>借款人</label> <input type="text"
					class="form-control" id="people" placeholder="借款人">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>分公司</label> 
				<select class="form-control" style="width: 180px">
					 <option>分公司1</option>
					 <option>分公司2</option>
					 <option>分公司3</option>
					 <option>分公司4</option>
					 <option>分公司5</option>
				</select>
			</div>
			<button type="submit" class="btn btn-default" style="margin-left: 2%;width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th style="width: 80px;">序号</th><th>合同编号</th><th>借款人</th>
					<th>身份证号</th><th>分公司</th><th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">撤销</button></td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">撤销</button></td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">撤销</button></td>
				</tr>
			</tbody>
		</table>
		<div style="float: right;margin-right: 4%"><button id="save_loan" style="width:120px;" type="button" class="btn btn-info">新增车辆贷款</button></div>
	</div>
<script>
$(function(){
	$("#save_loan").click(function() {
		$("#ifrom").load('branchcompany/userIdentity.jsp');
	})
});
</script>
</body>
</html>