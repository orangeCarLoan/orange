<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../commons.jsp"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>车贷签约复核表</title>
 <style type="text/css">
	 .table{
		text-align: center;
		}
	.table th,table td{
		text-align: center;
	}
	.caption{
		text-align: center; 
		font-size: 15px;
	}
 </style>
</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：信审业务管理>车贷签约审核列表</font></div>
<div>
     
     <div>
    <div>

        <div>
            <form>
                <br/>
              <input type="hidden" name="contratId" value="<%=request.getParameter("contractid")%>" id="hidden1">
                <table id="tab1" class="table table-striped" style="width: 100%">
                	<caption class="caption">信息列表</caption>
                    <tr>
                        <td>借款人合同编号</td>
                        <td><input id="contract" type="text" readonly="readonly"/></td>
                        <td>借款人</td>
                        <td><input id="userName" type="text"readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>身份证号</td>
                        <td><input id="identity" type="text" readonly="readonly"/></td>
                        <td>借款人手机号</td>
                        <td><input id="userphone" type="text" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>业务经理</td>
                        <td><input id="salename" type="text"readonly="readonly" /></td>
                        <td>借款用途</td>
                        <td><input id="borrowpurpose" type="text" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>职务</td>
                        <td><input id="duty" type="text"readonly="readonly" /></td>
                        <td>所属分公司</td>
                        <td><input id="name" type="text" readonly="readonly"/></td>
                    </tr>
                    <tr>
                        <td>产品类别</td>
                        <td><input id="product_category" type="text" readonly="readonly"/></td>
                        <td>审批额度</td>
                        <td><input id=approvalQuota type="text" readonly="readonly"/></td>
                    </tr>
                    <tr>
                    	<td>期数</td>
                        <td><input id="approval_period" type="text" /></td>
                    </tr>
                     <tr>
                        <td style="line-height: normal;">分公司信审意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
                   <textarea id='branch_opinion' readonly="readonly" style="width:100%;height: 100px;font-size: 20px">
                   </textarea>
                        </td>
                    </tr>
                     <tr>
                        <td style="line-height: normal;">总公司信审意见<span style="color: red">*</span></td>
                        <td colspan="3" style="text-align: center">
                   <textarea id='headOpinion' readonly="readonly" style="width:100%;height: 100px;font-size: 20px">
                   </textarea>
                        </td>
                    </tr>
                </table>
                
       			<table id="tab8" class="table table-striped" style="table-layout: fixed;">
       			<caption class="caption">基本信息附件列表</caption>
                    <tr>
                        <td>身份证（原件）</td>
                        <td><span id="idcard"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                   <tr>
                        <td>信用卡额度使用率</td>
                        <td><span id="carLoanFrom"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                    <tr>
                        <td>有无其他信用贷款</td>
                        <td><span id="atherAdjunct"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
                        <td></td><td></td>
                    </tr>
                    </table>
     			    <table id="tab9" class="table table-striped" style="table-layout: fixed;">
     			    	<caption class="caption">车辆信息附件列表</caption>
	     			    <tbody id="carTbody">
		                    <tr>
		                        <td>抵押车辆评估表</td>
		                        <td><span class="carAssessList"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                    	<td>车辆照片</td>
		                        <td><span class="carPhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                    	<td>车辆登记证书(原件)</td>
		                        <td><span class="carRegister"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>车辆行驶证正副本(原件)</td>
		                        <td><span class="carLicense"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                     <tr>
		                        <td>保单(交强险)</td>
		                        <td><span class="gutCompulsory"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>保单(商业险)</td>
		                        <td><span class="gutCommercial"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
		                    <tr>
		                        <td>其他车辆附件</td>
		                        <td><span class="otherAttachments"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
	                    </tbody>
                    </table>
               <br>
               
               <table class="table" style="width: 100%;table-layout: fixed;">
				   		<caption class="caption">签约附件列表</caption>
				   			<tr class="warning">
				   				<td>银行卡<font size="3" color="red">*</font></td>
		                        <td><span id="bankCard"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
				   				<td>机打申请表片<font size="3" color="red">*</font></td>
		                        <td><span id="applicationForm"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>小额借款服务合同<font size="3" color="red">*</font></td>
					            <td><span id="loanContract"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>收款扣款委托书<font size="3" color="red">*</font></td> 
					            <td><span id="cutAuthorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>授权委托书<font size="3" color="red">*</font></td> 
					            <td><span id="authorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>还款计划表<font size="3" color="red">*</font></td>
					            <td><span id="refundList"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>补充协议<font size="3" color="red">*</font></td> 
					            <td><span id="replenishDeal"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>车辆买卖回购合同<font size="3" color="red">*</font></td> 
					            <td><span id="carContract"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>授权委托书（车辆处理使用）<font size="3" color="red">*</font></td> 
					        	<td><span id="carAuthorization"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
					        </tr>
				   			<tr class="warning">
					            <td>车辆抵押照片<font size="3" color="red">*</font></td> 
					            <td><span id="carPhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   			<tr class="warning">
					            <td>车辆入库照片</td> 
					            <td><span id="storagePhoto"></span>&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-default">下载</button></td>
		                        <td></td><td></td>
		                    </tr>
				   </table>
                    <center>
		                <button style="width:150px;" id="tijiao" type="button" class="btn btn-info" >提交</button>
		                <button style="width:150px;" id="fanhui" type="button" class="btn btn-info" >返回</button>
		                <button style="width:150px;" id="huitui" type="button" class="btn btn-info" >回退</button>
		            </center>
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
				<textarea  id="fallbackContent"  style="width:70%;height: 70%;font-size: 20px"></textarea>
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
		        </form>
            </div>
         </div>
     </div>

</div>
<script>
$("input").addClass("form-control");
$(":radio").removeClass("form-control");

$(function(){
	var contratId=$("#hidden1").val();
	
	//加载
	 $.ajax({
         type :'GET',
         url : '../signCheck/contratId',
         data :"contratId="+contratId,
         async:true,
         success : function(data) {
        	 if(data!=null){
             	console.info(data);
             	$('#contract').val(data.contract);
             	$('#userName').val(data.userIdentityBean.userName);
             	$('#identity').val(data.userIdentityBean.identity);
             	$('#userphone').val(data.userMessageBean.userPhone);
             	$('#borrowpurpose').val(data.userMessageBean.borrowPurpose);
             	$('#salename').val(data.userMessageBean.saleName);
             	$('#duty').val(data.userMessageBean.duty);
             	$('#name').val(data.companyBean.name);
             	$('#product_category').val(data.adviceBean.productCategory);
             	$('#approval_period').val(data.adviceBean.approvalPeriod);
             	$('#approvalQuota').val(data.adviceBean.approvalQuota);
             	$('#branch_opinion').val(data.adviceBean.branchOpinion);
             	$('#headOpinion').val(data.adviceBean.headOpinion);
             	
             	//车辆附件
				for(var i=1; i<data.carMessageBeans.length;i++){
					$("#carTbody").after("<tbody>"+$("#carTbody").html()+"</tbody>");
				}
				var i=0;
				$(".carAssessList").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carAssessList);
					i++;
				});
				i=0;
				$(".carLicense").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carLicense);
					i++;
				});
				i=0;
				$(".carPhoto").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carPhoto);
					i++;
				});
				i=0;
				$(".carRegister").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.carRegister);
					i++;
				});
				i=0;
				$(".gutCommercial").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.gutCommercial);
					i++;
				});
				i=0;
				$(".gutCompulsory").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.gutCompulsory);
					i++;
				});
				i=0;
				$(".otherAttachments").each(function(){
					$(this).html(data.carMessageBeans[i].carAdjuncts.otherAttachments);
					i++;
				});
				
				//签约信息附件
				$('#bankCard').html(data.signBean.signAdjunctBean.bankCard)
				$('#applicationForm').html(data.signBean.signAdjunctBean.applicationForm)
				$('#loanContract').html(data.signBean.signAdjunctBean.loanContract)
				$('#cutAuthorization').html(data.signBean.signAdjunctBean.cutAuthorization)
				$('#authorization').html(data.signBean.signAdjunctBean.authorization)
				$('#refundList').html(data.signBean.signAdjunctBean.refundList)
				$('#replenishDeal').html(data.signBean.signAdjunctBean.replenishDeal)
				$('#carContract').html(data.signBean.signAdjunctBean.carContract)
				$('#carAuthorization').html(data.signBean.signAdjunctBean.carAuthorization)
				$('#carPhoto').html(data.signBean.signAdjunctBean.carPhoto)
				$('#storagePhoto').html(data.signBean.signAdjunctBean.storagePhoto)
        	 }
         }
	 });
	
	 //提交按钮
	 $("#tijiao").click(function() {
		$.ajax({
	         type :'POST',
	         url : '../signCheck/updateSign',
	         data :"contratId="+contratId,
	         async:true,
	         success : function(data) {
	        	if(data==true){
	        		alert("审核成功，正在放款");
	        		$("#ifrom").load('headcompany/carloanSignRecheck.jsp');
	        	}
	         }
		 });
	 })
	 //返回主页面
	 $("#fanhui").click(function() {
				$("#ifrom").load('headcompany/carloanSignRecheck.jsp');
		})
		
	 //回退按钮
	 $("#huitui").click(function() {
		 	$("#title").html("回退意见");
		    $("#myModal").modal("toggle");
			$(".modal-backdrop").remove();//删除class值为modal-backdrop的标签，可去除阴影
	 })
	 		//回退框确定按钮
			$('#enter').click(function() {
	           var advice=$("#fallbackContent").val();
				$.ajax({
					 type :'POST',
			         url : '../signCheck/updateState',
			         data :{"contratId":contratId,"advice":advice},//"contratId="+contratId+"&advice="+advice,
			         async:true,
			         success : function(data) {
			        	if(data==true){
			        		console.info(advice);
			        		alert("你的信息不正常，已经被回退");
			        		$("#ifrom").load('headcompany/carloanSignRecheck.jsp');
			        	}
			         }
				})
			})
	 
	 	
});
</script>
</body>
</html>