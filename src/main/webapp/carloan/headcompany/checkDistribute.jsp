<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$("#update_people").click(function(){
		$("#myModal1").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	});
	$("#designate").click(function(){
		$("#myModal2").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	});
	
});



</script>
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
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:车贷签约</font></div>
	<div style="height: 80x;margin-top: 20px;">
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
				<label>身份证号</label> <input type="text"
					class="form-control" id="people" placeholder="身份证号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>放款状态</label> 
				<select class="form-control" style="width: 180px">
					 <option value="" style="display: none;">-请选择-</option>
					 <option>待放款</option>
					 <option>放款中</option>
					 <option>已放款</option>
				</select>
			</div>
			<button type="submit" class="btn btn-default" style="margin-left: 2%;width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr>
					<th style="width: 50px;">序号</th><th>合同编号</th><th>借款人</th>
					<th>身份证号</th><th>借款人手机</th><th>业务经理</th><th>分公司</th>
					<th>产品名称</th><th>借款期数</th><th>进件时间</th><th>状态</th>
					<th>审核人</th><th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>13131313131</td><td>张三</td>
					<td>510121199512341234</td><td>12345678910</td><td>李四</td><td>分公司1</td>
					<td>短期贷款</td><td>6</td><td>2017-01-18</td><td>待放款</td><td>王五</td>
					<td>
						<button id="update_people" type="button" class="btn btn-default btn-sm">修改审核人</button>
					</td>
				</tr>
			</tbody>
		</table>
			<button id="designate" style="float:right;margin-right:10%;width:120px;" type="button" class="btn btn-info">指派分单</button>
	</div>
	
<div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					请选择要修改的审核人
				</h4>
			</div>
			<div class="modal-body">
				<center>
					<form action="">
					<table  style="width: 60%;">
						<tr>
							<td><h5>审核人</h5></td><td><input type="text" class="form-control"/></td>
						</tr>
					</table>
					</form>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button style="width: 120px;" type="button" class="btn btn-info">确定</button>
					<button style="width: 120px;" type="button" class="btn btn-info" data-dismiss="modal">取消</button>
				</center>
			</div>
		</div>
	</div>
</div>
<div class="modal" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				<h4 class="modal-title" id="myModalLabel">
					指派分单
				</h4>
			</div>
			<div class="modal-body">
				<center>
					<form action="">
					<table  style="width: 60%;">
						<tr>
							<td><h5>审核人</h5></td><td><input type="text" class="form-control"/></td>
						</tr>
					</table>
					</form>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button style="width: 120px;" type="button" class="btn btn-info">确定</button>
					<button style="width: 120px;" type="button" class="btn btn-info" data-dismiss="modal">取消</button>
				</center>
			</div>
		</div>
	</div>
</div>
</body>
</html>