<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷放款列表</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap-table.min.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="../static/bootstrap/js/bootstrap-table-zh-CN.min.js"></script>
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
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:放款列表</font></div>
	<div style="height: 80x;margin-top: 20px;">
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
				<label>身份证号</label> <input type="text" style="width: 200px" id="identity" name="identity"
					class="form-control" id="people" placeholder="身份证号">
			</div>
			<br><br>
			<div class="form-group" style="margin-left: 1%">
				<label>产品类型</label> 
				<select class="form-control" style="width: 200px" id="type" name="type">
					 <option value="">-无-</option>
					 <option>短期贷款</option>
					 <option>中期贷款</option>
					 <option>长期贷款</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>分公司</label> <select class="form-control" style="width: 180px"
					name="" id="companyName">
					<option>分公司1</option>
					<option>分公司2</option>
					<option>分公司3</option>
					<option>分公司4</option>
					<option>分公司5</option>
				</select>
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>放款状态</label> 
				<select class="form-control" style="width: 200px" id="creditStatus" name="creditStatus">
					 <option value="">-无-</option>
					 <option>待放款</option>
					 <option>放款中</option>
					 <option>已放款</option>
				</select>
			</div>
			<button type="button" id="find" class="btn btn-default"
				style="margin-left: 2%; width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr>
					<th data-field="id" style="width: 80px;">序号</th>
					<th data-field="contract">合同编号</th>
					<th data-field="userIdentityBean.userName">借款人</th>
					<th data-field="userMessageBean.">身份证号</th>
					<th data-field="signBean.agreedLoanDate">约定放款日</th>
					<th data-field="signBean.quota">合同额</th>
					<th data-field="adviceBean.approvalQuota">实际放款额</th>
					<th data-field="adviceBean.approvalPeriod">借款期数</th>
					<th data-field="companyBean.name">分公司</th>
					<th data-field="creditstatus">放款状态</th>
				</tr>
			</thead>
		</table>
		<button id="see" style="width:120px;" type="button" class="btn btn-info">详细信息</button>
		<button id="backout" style="width:120px;" type="button" class="btn btn-info">撤销</button>
		<button id="makeloan" style="width:120px;" type="button" class="btn btn-info">放款</button>
	</div>
	
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
				<center>
					<h1 class="modal-title" id="myModalLabel" >
						是否撤销该客户？
					</h1>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button id="delete" style="width: 120px;" type="button" class="btn btn-info">确定</button>
					<button style="width: 120px;" type="button" class="btn btn-info" data-dismiss="modal">取消</button>
				</center>
			</div>
		</div>
	</div>
</div>
<div class="modal" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button>
				
			</div>
			<div class="modal-body">
				<center>
					<h1 class="modal-title" id="myModalLabel" >
						确定放款？
					</h1>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button id="enter" style="width: 120px;" type="button" class="btn btn-info">确定</button>
					<button style="width: 120px;" type="button" class="btn btn-info" data-dismiss="modal">取消</button>
				</center>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">

var param = $("#myform").serialize();
var trId=0;
var trObject;
$("#find").click(function(){
	param = $("#myform").serialize();
	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
});
$("#makeloan").click(function() {
	if(trId!=0){
		$("#myModal1").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	}else{
		alert("请选择某一行数据");
	}
})
$("#see").click(function() {
	if(trId!=0){
		console.info(trId);
		$("#ifrom").load('headcompany/lending.jsp?contratId='+trId);
	}else{
		alert("请选择某一行数据");
	}
})
$("#backout").click(function(){
	if(trId!=0){
		$("#myModal").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	}else{
		alert("请选择某一行数据");
	}
});
$("#enter").click(function(){
	$.ajax({
        type:"POST",//type请求方式
        url:"../makeloan/makeloan",//url请求路径
        async:true,//async是否异步请求
        data:"contratId="+trId,
        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
        success:function(mes){
        	$("#myModal1").modal("toggle");
        	if(mes=="true"||mes){
        		alert("操作成功");
        	}else{
        		alert("操作失败，系统繁忙");
        	}
        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
        }
	});
});
$("#delete").click(function(){
	$.ajax({
        type:"post",//type请求方式
        url:"../contract/delete",//url请求路径
        async:true,//async是否异步请求
        data:"contractId="+trId,
        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
        success:function(mes){
        	$("#myModal").modal("toggle");
        	if(mes=="true"||mes){
        		alert("撤销成功");
        	}else{
        		alert("操作失败，系统繁忙");
        	}
        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
        }
    });
});




  //先销毁表格  
  $('#tab3').bootstrapTable('destroy');  
  //初始化表格,动态从服务器加载数据  
  $("#tab3").bootstrapTable({  
      method: "get",  //使用get请求到服务器获取数据  
      url: "../makeloan", //获取数据的Servlet地址  
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
      } ,
      onClickRow: function (row, tr) {
      	if(trId!=0){
      		trObject.removeClass("info");
      	}
      	tr.addClass("info");
      	trId = row.id;
      	trObject = tr;
      }
    });  

	//在show.bs.modal事件中调用centerModals函数
	$('#myModal').on('show.bs.modal', centerModals);
	//页面大小变化是仍然保证模态框水平垂直居中
	$(window).on('resize', centerModals);
//设置模态框的水平垂直方向的位置
function centerModals() {   
	　　$('#myModal').each(function(i) {   
	　　　　var $clone = $(this).clone().css('display','block').appendTo('body');
	　　　　var top = Math.round(($clone.height() - $clone.find('.modal-content').height()) / 2);
	　　　　top = top > 0 ? top : 0;   
	　　　　$clone.remove();   
	　　　　$(this).find('.modal-content').css("margin-top", top);   
	　　});   
	   
	}; 
</script>
</body>
</html>