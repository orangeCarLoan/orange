<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap-table.min.css">
<script type="text/javascript" src="../static/bootstrap/js/bootstrap-table.min.js"></script>
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
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
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置:车贷签约</font></div>
	<div style="height: 80x;margin-top: 20px;">
		<form id="myform" class="form-inline">
			<div class="form-group" style="margin-left: 1%">
				<label>合同编号</label> <input type="text" name="contract"
					class="form-control" id="contract" placeholder="合同编号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>借款人</label> <input type="text" name="username"
					class="form-control" id="people" placeholder="借款人">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>身份证号</label> <input type="text" name="identity"
					class="form-control" id="people" placeholder="身份证号">
			</div>
			<div class="form-group" style="margin-left: 1%">
				<label>状态</label> 
				<select class="form-control" style="width: 180px" name="state">
					 <option value="-1">-无-</option>
					 <option value="0">总公司信审</option>
					 <option value="1">签约复审</option>
				</select>
			</div>
			<button id="find" type="button" class="btn btn-default" style="margin-left: 2%;width: 120px">查询</button>
		</form>
	</div>
	<div style="margin-top: 20px;margin-left: 1%">
		<table id="tab3" class="table table-bordered" style="width: 100%;">
			<thead>
				<tr>
					<th data-field="id" style="width: 50px;">序号</th>
					<th data-field="contract">合同编号</th>
					<th data-field="userIdentityBean.userName">借款人</th>
					<th data-field="userIdentityBean.identity">身份证号</th>
					<th data-field="userMessageBean.userPhone">借款人手机</th>
					<th data-field="userMessageBean.saleName">业务经理</th>
					<th data-field="companyBean.name">分公司</th>
					<th data-field="userIdentityBean.type">产品名称</th>
					<th data-field="adviceBean.approvalPeriod">借款期数</th>
					<th data-field="contractionDate">进件时间</th>
					<th data-field="state" data-formatter="fun">状态</th>
					<th data-field="auditor">审核人</th>
				</tr>
			</thead>
		</table>
			<button id="designate" style="float:right;margin-right:10%;width:120px;" type="button" class="btn btn-info">指派分单</button>
			<button id="delete" style="float:right;margin-right:15%;width:120px;" type="button" class="btn btn-info">撤销</button>
	</div>
	
<div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
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
							<td><h5>审核人</h5></td>
							<td>
								<select id="auditor" class="form-control" style="width: 180px" name="auditor">
								</select>
							</td>
						</tr>
					</table>
					</form>
				</center>
			</div>
			<div class="modal-footer">
				<center>
					<button id="updateAuditor" style="width: 120px;" type="button" class="btn btn-info">确定</button>
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

function fun(value,row,index){
	var retVal = '';
	if(value == 6){
		retVal = '总公司信审';
	}else if(value == 8){
		retVal = '签约复审';
	}else{
		retVal = '';
	}
	return retVal;
}

$(function(){
	
	$("#update_people").click(function(){
		$("#myModal").modal("toggle");
		$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	});
	$("#delete").click(function(){
		if(trId != 0){
			$.ajax({
		        type:"post",//type请求方式
		        url:"../contract/delete",//url请求路径
		        async:true,//async是否异步请求
		        data:"contractId="+trId,
		        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
		        success:function(mes){
		        	if(mes=="true"||mes){
		        		alert("修改成功");
		        	}else{
		        		alert("操作失败，系统繁忙");
		        	}
		        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
		        }
		    });
		}else{
			alert("请点击");
		}
	});
	$("#designate").click(function(){
		if(trId != 0){
			$.ajax({
		        type:"get",//type请求方式
		        url:"../admin/audit",//url请求路径
		        async:true,//async是否异步请求
		        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
		        success:function(mes){
		            console.info(mes);
		            var json = JSON.parse(mes);
		            var str = "";
		            for(var i=0; i<json.length; i++){
		            	str+="<option>"+json[i].userName+"</option>";
		            }
		            $("#auditor").html(str);
		        }
		    });
			$("#myModal").modal("toggle");
			$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
		}else{
			alert("请点击");
		}
	});
	$("#find").click(function(){
		param = $("#myform").serialize();
		$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
	});
	$("#updateAuditor").click(function(){
		$.ajax({
	        type:"post",//type请求方式
	        url:"../divdea/update",//url请求路径
	        async:true,//async是否异步请求
	        data:"contractId="+trId+"&auditor="+ $("#auditor").val(),
	        //success为得到响应该怎么操作。方法中mes为响应结果中的字符串，需根据自己的需求是否要转为json对象。
	        success:function(mes){
	        	if(mes=="true"||mes){
	        		alert("修改成功");
	        	}else{
	        		alert("操作失败，系统繁忙");
	        	}
	        	$('#tab3').bootstrapTable('refreshOptions',{pageNumber : 1});
	        	$("#myModal").modal("toggle");
	        }
	    });
	});
});
//先销毁表格  
$('#tab3').bootstrapTable('destroy');  
//初始化表格,动态从服务器加载数据  
$("#tab3").bootstrapTable({  
    method: "get",  //使用get请求到服务器获取数据  
    url: "../divdea", //获取数据的Servlet地址  
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
    queryParams: function queryParams(params) { 
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
        console.info(row);
        console.info(tr);
    }
  });  
</script>
</body>
</html>