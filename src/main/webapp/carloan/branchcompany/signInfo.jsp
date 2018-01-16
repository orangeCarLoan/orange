<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>签约信息</title>

<style type="text/css">
	.table{
		text-align: center;
	}
	.table th, .table td { 
		text-align: center; 
	}
	.table td button{
		margin-top: -6%;
	}
</style>
</head>
<body>
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置 : 车贷管理>车贷签约</font></div>
	<div style="margin-top: 10px;">
	    <form action="#">
	    <table id="tab1" class="table table-striped" style="width: 100%;">
	        <tbody>
	        <tr>
	            <td>借款合同编号</td><td><input type="text" class="form-control"/></td>
	            <td>借款人</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>借款人手机</td><td><input type="text" class="form-control"/></td>
	            <td>业务经理</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>借款合用途</td><td><input type="text" class="form-control"/></td>
	            <td>职务</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>身份证</td><td><input type="text" class="form-control"/></td>
	            <td>借款总额</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>咨询服务费</td><td><input type="text" class="form-control"/></td>
	            <td>月还款额</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td><font color="red">额度上限</font></td><td><input type="text" class="form-control"/></td>
	            <td>产品名称</td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>贷款期数</td><td><input type="text" class="form-control"/></td>
	        </tr>
	         <tr>
	            <td>审批金额<font size="3" color="red">*</font></td><td><input type="text" class="form-control"/></td>
	            <td>约定房贷日<font size="3" color="red">*</font></td><td><input type="date" class="form-control"/></td>
	        </tr>
	         <tr>
	            <td>放款/还款银行<font size="3" color="red">*</font></td>
	            <td><select class="form-control" style="width: 100%">
						 <option>中国银行</option>
						 <option>工商银行</option>
						 <option>农业银行</option>
						 <option>建设银行</option>
						 <option>农商银行</option>
					</select></td>
	            <td>放款/还款账号<font size="3" color="red">*</font></td><td><input type="text" class="form-control"/></td>
	        </tr>
	        <tr>
	            <td>放款/还款开户银行（支行）<font size="3" color="red">*</font></td><td><input type="text" class="form-control"/></td>
	        </tr>
	        
	        </tbody>
	    </table>
	    
	    <table id="tab2" class="table table-striped" style="width: 100%;table-layout: fixed">
	    	<caption style="text-align: center;font-size: 15px;">签约附件列表</caption>
	        <tbody>
	        <tr>
	            <td>银行卡<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td>
	        </tr>
	        <tr>
	            <td>机打申请表片<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	        <tr>
	            <td>小额借款服务合同<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td>
	        </tr>
	        <tr>
	            <td>收款扣款委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	        <tr>
	            <td>授权委托书<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>还款计划表<font size="3" color="red">*</font></td>
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>补充协议<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>车辆买卖回购合同<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>授权委托书（车辆处理使用）<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>车辆抵押照片<font size="3" color="red">*</font></td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	         <tr>
	            <td>车辆入库照片</td> 
	            <td><input type="file" id=""/></td>
	            <td><input type="button" class="btn btn-default" value="上传"/></td>
	            <td>附件大小</td><td><span>&nbsp;</span> </td></tr>
	        </tbody>
	     </table>
	</form>
	    <center>
    		<button style="width: 120px;" type="button" class="btn btn-info">还款时算</button>
		    <button style="width: 120px;" type="button" class="btn btn-info">打印签约合同</button>
		    <button style="width: 120px;" type="submit" class="btn btn-info">保存</button>
		    <button style="width: 120px;" type="submit" class="btn btn-info">提交</button>
		    <button style="width: 120px;" type="button" class="btn btn-info">返回</button>
		    <button style="width: 120px;" type="button" class="btn btn-info">回退</button>
	    </center>
	</div>
	<div style="margin-top: 20px;">
		<form action="#">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th style="width: 80px;">序号</th><th>合同编号</th><th>借款人</th><th>期数</th>
					<th>期初本金</th><th>剩余本金</th><th>结清还服务费</th><th>提前结清金额</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
				<tr>
					<td>1</td><td>2</td><td>3</td><td>4</td>
					<td>5</td><td>6</td><td>7</td><td>8</td>
				</tr>
			</tbody>
		</table>
		</form>
	</div>
</body>
</html>