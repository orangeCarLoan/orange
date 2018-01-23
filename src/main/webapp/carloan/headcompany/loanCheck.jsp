<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>车贷查看</title>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap-table.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="../static/bootstrap/js/bootstrap-table-zh-CN.min.js"></script>
<style type="text/css">
	.table{
		text-align: center;
	}
	.table th, .table td { 
		text-align: center; 
	}
	#myform input{
		width: 200px;
	}
</style>
</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷查看列表</font></div>
<div style="height: 80x;margin-top: 20px;">
		<font size="2" style="margin-left: 1%">查询条件</font><p/>
		<form id="myform" class="form-inline">
			<div class="form-group" style="margin-left: 1%">
				<label>合同编号</label> <input id="contract" type="text" name="contract"
					class="form-control" id="contract" placeholder="合同编号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>借款人</label> <input type="text" name="username" id="username"
					class="form-control" id="people" placeholder="借款人">
			</div>
			
			<div class="form-group" style="margin-left: 1%">
				<label>&nbsp;&nbsp;分公司&nbsp;&nbsp;&nbsp;</label><select class="form-control" style="width: 200px"
					name="" id="companyName">
					<option>分公司1</option>
					<option>分公司2</option>
					<option>分公司3</option>
					<option>分公司4</option>
					<option>分公司5</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>产品类型</label> 
				<select class="form-control" style="width: 200px;" name="type">
					 <option value="" style="display: none;">-请选择-</option>
					 <option>短期贷款</option>
				 	 <option>中期贷款</option>
					 <option>长期贷款</option>
				</select>
			</div>
			<br><br>
			<div class="form-group" style="margin-left: 1%">
				<label>放款时间</label> <input style="width: 200px;" type="date" name="loanStratDate"
					class="form-control" id="lendingStartDate" >
			</div>
			<div class="form-group" style="margin-left: 2%">
				<label>至&nbsp;&nbsp;&nbsp;&nbsp;</label> <input style="width: 200px;" type="date"
					class="form-control" id="lendingEndDate"name="loanEndDate">
			</div> 
			<div class="form-group" style="margin-left: 1%">
				<label>还款时间</label> <input style="width: 200px;" type="date" name="paymentStratDate"
					class="form-control" id="backStartDate" >
			</div>
			<div class="form-group" style="margin-left: 2%">
				<label>&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input style="width: 200px;" type="date"
					class="form-control" id="backEndDate" name="paymentEndDate">
			</div> 
			<br><br>
			<div class="form-group" style="margin-left: 1%">
				<label>复审日期</label> <input  type="date"
					class="form-control" id="recheckDate" name="reviewDate">
			</div>
				
			<div class="form-group" >
				<label>进件时间</label> <input style="width: 200px;" type="date"  name="intoStratDate"
					class="form-control" id="inStartDate" >
			</div>
			<div class="form-group"style="margin-left: 2%">
				<label>&nbsp;至&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label> <input type="date" style="width: 200px;""
					class="form-control" id="inEndDate"  name="inEndDate">
			</div>&nbsp;&nbsp;
			<button type="button" id="find" class="btn btn-default"
				style="margin-left: 5%; width: 200px">查询</button>
		</form>
	</div>
	
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr id="tr1">
					<th data-field="id" style="width: 60px;">序号</th>
					<th data-field="contract">合同编号</th>
					<th data-field="userIdentityBean.userName">借款人</th>
					<th data-field="userMessageBean.saleName">业务经理</th>
					<th data-field="companyBean.name">分公司</th>
					<th data-field="contractionDate">进件时间</th>
					<th data-field="auditorDate">复核时间</th>
					<th data-field="adviceBean.approvalQuota">借贷金额</th>
					<th data-field="adviceBean.approvalPeriod">还款期数</th>
					<th data-field="companyBean.name">还款时间</th>
					<th data-field="state">状态</th>
				</tr>
			</thead>
		</table>
		<button id="apply" type="button" class="btn btn-info">查看详细信息</button>
	</div>
</body>
<script type="text/javascript">
var param = $("#myform").serialize();
var trId=0;
var trObject;
$("#find").click(function(){
	param = $("#myform").serialize();
	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
});
$("#apply").click(function() {
	if(trId != 0){
		console.info(trId);
		$("#ifrom").load('headcompany/loanCheckInfo.jsp?contractId='+trId);
	}else{
		alert("请选择某一行");
	}
})
//先销毁表格  
$('#tab3').bootstrapTable('destroy');  
//初始化表格,动态从服务器加载数据  
$("#tab3").bootstrapTable({  
    method: "get",  //使用get请求到服务器获取数据  
    url: "../contract", //获取数据的Servlet地址  
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
    	trObject = tr;
    }
  });  
</script>
</html>