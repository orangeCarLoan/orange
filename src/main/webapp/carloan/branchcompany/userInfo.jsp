<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>客户基本信息</title>
<script>
	$("select").addClass("form-control");
	
	$(document).ready(function(){
		  $("#add").click(function(){
		    $("#btns").before($("#div").html());
		    $(".xxx:last .contactId").val(0);
		  });
		  $("#del").click(function(){
			    var s = $(".xxx");
			    if(s.length>1){
			    	s[s.length-1].remove(); 
			    }else{
			    	$.messager.show({
	        		    title:'叮咚~',
	        		    msg:'不能删除！',
	        		    timeout:5000,
	        		    showType:'slide'
	        		});
			    }
			  });
		});

</script>
		<style type="text/css">
			.select{
				width: 100%;
			}
			#tab {
				margin: auto;
			}
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

	<body id="body1">
	<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷录入>客户基本信息录入</font></div>
		<form id="form1"  method="post" enctype="multipart/form-data">
		<input type="hidden" name="contratId" value="<%=request.getParameter("contractId")%>" id="hidden1">
		<input type="hidden" id="isSubmit" name="isSubmit" value="0"/>
		<div style="float: right;">
			<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control"><br/><br/>
		</div>
		<input type="hidden" name="userMessageId" id="id" value="0" />
			<table id="tab" class="table table-striped" style="width: 1000px;">
				<caption style="text-align: center;font-size: 15px;">个人基本信息</caption>
				
				<tbody>
					<tr>
						<td>申请人姓名</td>
						<td><input id="identity" type="text" class="form-control" readonly="readonly"/></td>
						<td>身份证号码</td>
						<td><input id="userid" type="text" class="form-control" readonly="readonly"/></td>
					</tr>
					<tr>
						<td>最高学历</td>
						<td>
							<select id="education" name="education">
								<option>博士</option>
								<option>硕士</option>
								<option>本科</option>
								<option>大专</option>
								<option>高中</option>
							</select>
						</td>
						<td>申请人手机号码</td>
						<td><input id="userPhone" name="userPhone" type="text" class="form-control"/></td>
					</tr>
					<tr>
						<td>户籍信息</td>
						<td><input id="place" name="place" type="text" class="form-control"/></td>
						<td>申请人电话号码</td>
						<td><input id="telephone" name="telephone" type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>婚姻状况</td>
						<td><input id="marry" name="marry" type="text" class="form-control"/></td>
						<td>有无子女</td>
						<td><select id="hasChild" name="hasChild">
								<option value="1">有</option>
								<option value="0">无</option>
							</select></td>
					</tr>

					<tr>
						<td>房产状况</td>
						<td><input id="houseType" name="houseType" type="text" class="form-control"/></td>
						<td>共同居住者</td>
						<td>
							<select id="partner" name="partner">
								<option>配偶及子女</option>
								<option>其它</option>
							</select>
						</td>
					</tr>

					<tr>
						<td>现住址</td>
						<td><input id="address" name="address" type="text" class="form-control"/></td>
						<td>客户类型</td>
						<td>
							<select id="clientType" name="clientType">
								<option>工薪人士</option>
								<option>其它</option>
							</select>
						</td>
					</tr>

				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">工作信息</caption>

				<tbody>

					<tr>
						<td>工作单位全称</td>
						<td><input id="companyName" name="companyName" type="text" class="form-control"/></td>
						<td>工作单位地址</td>
						<td><input id="companyAddress" name="companyAddress" type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>单位电话</td>
						<td><input id="companyPhone" name="companyPhone" type="text" class="form-control"/></td>
						<td>邮政编码</td>
						<td><input id="zipCode"  name="zipCode"type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>进入该单位时间</td>
						<td><input id="happenTime" name="happenTime" type="date" class="form-control"/></td>
						<td>所在部门</td>
						<td><input id="dept"  name="dept"type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>担任职务</td>
						<td><input id="duty" name="duty" type="text" class="form-control"/></td>
						<td>公司规模</td>
						<td><input id="companySize" name="companySize" type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>行业类别</td>
						<td><input id="employment" name="employment" type="text" class="form-control"/></td>
						<td>单位性质</td>
						<td>
							<select id="unitNature" name="unitNature">
								<option value="1">个体户</option>
								<option>其它</option>
							</select>
						</td>
					</tr>

				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">借款需求</caption>
				<tbody>

					<tr>
						<td>借款详细用途</td>
						<td><input id="borrowPurpose" name="borrowPurpose" type="text" class="form-control"/></td>
						<td>月收入</td>
						<td><input id="income" name="income" type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>可承受的月还款额</td>
						<td><input id="repayment" name="repayment" type="text" class="form-control"/></td>
						<td>希望申请最长还款期限</td>
						<td>
							<select id="maxdeadline" name="maxdeadline">
								<option value="1">十二个月</option>
								<option  value="0">其它</option>
							</select>
						</td>
					</tr>

					<tr>
						<td>希望申请还款额度</td>
						<td><input id="minlimit"  name="minlimit"type="text" class="form-control"/></td>
						<td>希望申请借款额度</td>
						<td><input id="maxlimit"  name="maxlimit"type="text" class="form-control"/></td>
					</tr>

					<tr>
						<td>您从何得知橘子车贷</td>
						<td><input id="channel"  name="channel"type="text" class="form-control"/></td>
						<td>申请日期</td>
						<td><input id="applyDate"  name="applyDate"type="date" class="form-control"/></td>
					</tr>

					<tr>
						<td>业务员姓名</td>
						<td><input id="saleName"  name="saleName"type="text" class="form-control"/></td>
						<td>车贷专员</td>
						<td><input id="commissioner" name="commissioner"type="text" class="form-control"/></td>
					</tr>

				</tbody>

			</table>
			<table class="table table-striped" style="width: 100%;">
				<caption style="text-align: center;font-size: 15px;">联系人信息（填写不能重复，至少三个）</caption>
			</table>
			<div id="div" style="margin-top: -20px;">
				<table class="xxx table table-striped" style="width: 100%;">
					<tbody id="tb">
					<tr>
							<td>姓名<input type="hidden" id="contactId" class="contactId" name="contactId" value="0"/></td>
							<td><input id="contactName" name="contactName" type="text" class="contactName form-control"/></td>
							<td>联系人电话</td>
							<td><input id="contactPhone"  name="contactPhone"type="text" class="contactPhone form-control"/></td>
						</tr>

						<tr>
							<td>联系人类型</td>
							<td><input id="contactType" name="contactType" type="text" class="contactType form-control"/></td>
							<td>和本人关系</td>
							<td>
								<select id="relation" name="relation" class="relation">
									<option value="亲属">亲属</option>
									<option value="其他">其它</option>
								</select>
							</td>
						</tr>

						<tr>
							<td>单位名称</td>
							<td><input id="contactCompany" name="contactCompany" type="text" class="contactCompany form-control"/></td>
							<td>家庭住址/单位地址</td>
							<td><input id="contactAddress" name="contactAddress" type="text" class="contactAddress form-control"/></td>
						</tr>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
			<table  id="btns" class="table table-striped" style="width: 100%;">
				<tr>
					<td><input id="add" class="btn btn-info" type="button" value="添加" />
					<input id="del" class="btn btn-info" type="button" value="删除" /></td>
				</tr>
			</table>
<!-- 	</form> -->
<!-- 	<form id="wenjian" method="post" enctype="multipart/form-data"> -->
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">附件列表</caption>

				<tbody>
					<tr> 
						<td>身份证（原件）<input type="hidden" class="adjunctId" id="adjunctId" name="id" value="0"/></td>
						<td><input type="file"  name="fileName" id="upload_file2" style="display: none;" onchange="change2();">  
    						<input type="text" name="Idcard" id="upload_file_tmp2"  readonly="readonly" onclick="upload_file2.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file2.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>

					<tr>
						<td>车贷申请表</td>
						<td><input type="file"  name="fileName" id="upload_file1" style="display: none;" onchange="change1();">  
    						<input type="text"  name="carLoanFrom" id="upload_file_tmp1"  readonly="readonly" onclick="upload_file1.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file1.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>

					<tr>
						<td>其它附件</td>
						<td><input type="file"  name="fileName" id="upload_file" style="display: none;" onchange="change();">  
    						<input type="text"  name="atherAdjunct" id="upload_file_tmp"  readonly="readonly" onclick="upload_file.click(); "></td>
						<td><input  id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</form>
		<center>
				<input type="button"id="baocun"  class="btn btn-info" style="width: 120px;" value="保存"/>
				<input type="button"id="tijiao" class="btn btn-info" style="width: 120px;" value="提交"/>
				<input id="return" type="button" class="btn btn-info" style="width: 120px;" value="返回">
			</center>
<script>
function change(){
	$("#upload_file_tmp").val($("#upload_file").val());
}
function change1(){
	$("#upload_file_tmp1").val($("#upload_file1").val());
}
function change2(){
	$("#upload_file_tmp2").val($("#upload_file2").val());
}
$("#return").click(function(){
	$("#ifrom").load('branchcompany/userInput.jsp?');
});
$("#baocun").click(function(){
	 $("#isSubmit").val(0);
	 reqaaa();
});
$("#tijiao").click(function(){
	 $("#isSubmit").val(1);
	 reqaaa();
});
function reqaaa(){
	$('#form1').form({
		url: "../userMessage/add",
		onSubmit: function(){
			return true;	// 返回false将停止form提交 
		},
		success: function(data){
			console.info(data);
			if(data||data=="true"){
				$.messager.show({
        		    title:'叮咚~',
        		    msg:'操作成功！',
        		    timeout:3000,
        		    showType:'slide'
        		});
				$("#ifrom").load('branchcompany/userInput.jsp?');
			}else{
				$.messager.show({
        		    title:'叮咚~',
        		    msg:'操作失败，系统繁忙！',
        		    timeout:3000,
        		    showType:'slide'
        		});
			}
		}
	});
	$("#form1").submit();
}
$(function(){
	var contratId=$("#hidden1").val();
	 $.ajax({
         type :'GET',
         url : '../userIdentity/contratId',
         data :"contratId="+contratId,
         async:true,
         success : function(data) {
        	 if(data!=null){
        		 //身份证信息
             	$("#identity").val(data.userName);
             	$("#userid").val(data.identity);
        	 }
         }
	 });
	  $.ajax({
         type :'GET',
         url : '../userMessage/contratId',
         data :"contratId="+contratId,
         async:true,
         success : function(data) {
        	 console.info(data);
        	 if(data!=null){
            	//基本信息
        		$("#address").val(data.address); 
        		$("#applyDate").val(data.applyDate);
       		 	$("#borrowPurpose").val(data.borrowPurpose);
       		 	$("#channel").val(data.channel);
       		 	$("#clientType").val(data.clientType); 
       		  	$("#commissioner").val(data.commissioner);
       		 	$("#companyAddress").val(data.companyAddress);
       		 	$("#companyName").val(data.companyName);
       		 	$("#companyPhone").val(data.companyPhone);
       		 	$("#companySize").val(data.companySize);
       		 	$("#dept").val(data.dept);
       		 	$("#duty").val(data.duty);
       		 	$("#education").val(data.education);
       		 	$("#employment").val(data.employment);
       		 	$("#happenTime").val(data.happenTime);
       		 	$("#hasChild").val(data.hasChild);
       		 	$("#houseType").val(data.houseType);
       		 	$("#income").val(data.income);
       		 	$("#marry").val(data.marry);
       		 	$("#maxdeadline").val(data.maxdeadline);
       		 	$("#maxlimit").val(data.maxlimit);
       		 	$("#minlimit").val(data.minlimit);
       		 	$("#partner").val(data.partner);
       		 	$("#place").val(data.place);
       		 	$("#repayment").val(data.repayment);
       		 	$("#saleName").val(data.saleName);
       		 	$("#telephone").val(data.telephone);
       		 	$("#unitNature").val(data.unitNature);
       		 	$("#userPhone").val(data.userPhone);
       		 	$("#zipCode").val(data.zipCode); 
       		 	$("#id").val(data.id); 
       		 	if(data.contactBean!=null){
       		 		for(var i=1;i<data.contactBean.length;i++){
       		 			$("#add").click();
       		 		}
       		 		var i=0;
        		 	$(".contactId").each(function(){
    		 			$(this).val(data.contactBean[i].id); 
    		 			i++;
    		 		});
        		 	 i=0;
       		 		$(".contactName").each(function(){
       		 			$(this).val(data.contactBean[i].contactName);
       		 			i++;
       		 		});
       		 		i=0;
           		 	$(".contactType").each(function(){
       		 			$(this).val(data.contactBean[i].contactType); 
       		 			i++;
       		 		});
           		 	i=0;
       		 		$(".contactCompany").each(function(){
       		 			$(this).val(data.contactBean[i].contactCompany); 
       		 			i++;
       		 		});
       		 		i=0;
           		 	$(".contactAddress").each(function(){
       		 			$(this).val(data.contactBean[i].contactAddress); 
       		 			i++;
       		 		});
           			 i=0;
           		 	$(".contactPhone").each(function(){
       		 			$(this).val(data.contactBean[i].contactPhone); 
       		 			i++;
       		 		});
           			 i=0;
           			$(".relation").each(function(){
           				$(this).find("option").each(function(){
           		 			if($(this).val()==data.contactBean[i].relation){
           		 				$(this).attr("selected","selected");
           		 			} 
           		 		});
           				i++;
       		 		});
       		 	}
       		 	if(data.userAdjunctBean!=null){
       		 		$("#adjunctId").val(data.userAdjunctBean.id);
       		 		$("#upload_file_tmp2").val(data.userAdjunctBean.idcard);
       		 		$("#upload_file_tmp1").val(data.userAdjunctBean.carLoanFrom);
       				$("#upload_file_tmp").val(data.userAdjunctBean.atherAdjunct);
       		 	}
        	 }
         }
     });  
}); 
 
</script>
</body>
</html>
