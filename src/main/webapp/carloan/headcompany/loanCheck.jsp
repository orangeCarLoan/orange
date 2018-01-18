<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>车贷查看</title>

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
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷查看列表</font></div>
<div style="height: 80x;margin-top: 20px;">
		<font size="2" style="margin-left: 1%">查询条件</font><p/>
		<form class="form-inline">
			<div class="form-group" style="margin-left: 10px">
				<label for="exampleInputName2">合同编号</label> <input style="width: 200px;" type="text"
					class="form-control" id="exampleInputName2" placeholder="合同编号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label for="exampleInputEmail2">借款人&nbsp;&nbsp;</label> <input style="width: 200px;" type="text"
					class="form-control" id="exampleInputEmail2"
					placeholder="借款人">
			</div>
			
			<div class="form-group" style="margin-left: 1%">
				<label>分公司&nbsp;&nbsp;</label> 
				<select class="form-control" style="width: 200px;">
					 <option value="" style="display: none;">-请选择-</option>
					 <option>分公司1</option>
					 <option>分公司2</option>
					 <option>分公司3</option>
					 <option>分公司4</option>
					 <option>分公司5</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>产品类型</label> 
				<select class="form-control" style="width: 200px;">
					 <option value="" style="display: none;">-请选择-</option>
					 <option>短期贷款</option>
				 	 <option>中期贷款</option>
					 <option>长期贷款</option>
				</select>
			</div>
			<br>
			<br>
			<div class="form-group" style="margin-left: 1%">
				<label>复审日期</label> <input style="width: 200px;" type="date"
					class="form-control" id="recheckDate">
			</div>
				
			<div class="form-group" style="margin-left: 23.5%">
				<label>进件时间</label> <input style="width: 200px;" type="date"
					class="form-control" id="inStartDate" >
			</div>
			<div class="form-group"style="margin-left: 2%">
				<label>&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input style="width: 200px; type="date"
					class="form-control" id="inEndDate">
			</div>
			<br>
			<br>
			<div class="form-group" style="margin-left: 1%">
				<label>放款时间</label> <input style="width: 200px;" type="date"
					class="form-control" id="lendingStartDate" >
			</div>
			<div class="form-group" style="margin-left: 2%">
				<label>至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input style="width: 200px;" type="date"
					class="form-control" id="lendingEndDate">
			</div> 
			<div class="form-group" style="margin-left: 1%">
				<label>还款时间</label> <input style="width: 200px;" type="date"
					class="form-control" id="backStartDate" >
			</div>
			<div class="form-group" style="margin-left: 2%">
				<label>&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input style="width: 200px;" type="date"
					class="form-control" id="backEndDate">
			</div> 
			<br><br>
			<div style="float: right;margin-right: 11%"><button type="submit" class="btn btn-info" style="width: 120px">查询</button></div>
			<br><br>
		</form>
	</div>
	<div style="margin-top: 10px;"><span>查询结果：</span></div>
	
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th style="width: 60px;">序号</th><th>合同编号</th><th>借款人</th>
					<th>业务经理</th><th>分公司</th><th>进件时间</th><th>复核时间</th>
					<th>借贷金额</th><th>还款期数</th><th>还款时间</th><th>状态</th><th>操作</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>5</td>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">信息查看</button></td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>5</td>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">信息查看</button></td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td>5</td>
					<td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td><button type="button" class="btn btn-default btn-sm">信息查看</button></td>
				</tr>
			</tbody>
		</table>
</body>
</html>