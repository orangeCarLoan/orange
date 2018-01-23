<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>车辆信息</title>

<link rel="stylesheet" type="text/css" href="../static/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../static/easyui/themes/default/easyui.css">
<!-- <script src="../static/js/jQuery-2.2.2-min.js"></script> -->
<script type="text/javascript" src="../static/bootstrap/js/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="../static/easyui/jquery.easyui.min.js"></script> -->

</head>
<body>
<div style="margin-top: 10px;"><font style="margin-left: 1%">当前位置：车贷管理>车贷申请信息录入>车辆信息录入</font></div>
		<h1>车辆信息</h1>
		<div style="float: right;">
			<input type="text" style="width: 300px;" placeholder="回退意见" class="form-control"><br/><br/>
		</div>
<!-- 		<form id="myform" method="post" enctype="multipart/form-data"> -->
		<div id="div">
		<form class="formClass" method="post" enctype="multipart/form-data">
		<input type="hidden" name="contractId" class="contratId" value="<%=request.getParameter("contractId")%>" id="contratId">
		<input type="hidden" class="isSubmit" id="isSubmit" name="isSubmit" value="0"/>
		<input type="hidden" class="isAdd" id="isAdd" name="isAdd" value="1"/>
		<div class="xxx">
		<input type="hidden" id="id" name="id" value="0"/>	
			<table id="tab" class="table table-striped" style="width: 1000px;">
				<caption style="text-align: center;font-size: 15px;">车辆信息</caption>
				<tbody>
					<tr>
						<td>机动车辆号牌</td>
						<td><input type="text" name="carPlate" class="form-control"/></td>
						<td>厂牌型号</td>
						<td><input type="text" name="labelType" class="form-control"/></td>
					</tr>
					<tr>
						<td>发动机号</td>
						<td><input type="text" name="engineno" class="form-control"/></td>
						<td>颜色</td>
						<td><input type="text" name="color" class="form-control"/></td>
					</tr>
					<tr>
						<td>初次登陆日期</td>
						<td><input type="date" name="firstTime" class="form-control"/></td>
						<td>年检有限期</td>
						<td><input type="text" name="yesrValidity" class="form-control"/></td>
					</tr>

					<tr>
						<td>车架号</td>
						<td><input type="text" name="chassisnum" class="form-control"/></td>
						<td>车辆评估价格</td>
						<td><input type="text" name="carPrice" class="form-control"/></td>
					</tr>

					<tr>
						<td>目前已行驶里程数</td>
						<td><input type="text" name="currentTripNum" class="form-control"/></td>
						<td> </td>
						<td>							
						</td>
					</tr>
<style>
   label {
         font-size: 14px;
         font-weight: normal;
         color: #333;
         margin-left: 10px;
   }

</style>
					<tr>
						<td>身份证</td>
						<td>
                             <label >
                                <input type="radio" name="idcard" id="" value="0">未交付
                             </label>
                             <label >
                                <input type="radio" name="idcard" id="" value="1">原件
                             </label>
                             <label >
                                <input type="radio" name="idcard" id="" value="2">复印件
                             </label>
                        </td>
						<td>车辆购置证/发票</td>
						<td>
						     <label >
                                <input type="radio" name="carPurchase" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carPurchase" id=""  value="0">未交付
                             </label>
						</td>
					</tr>
                    <tr>
						<td>交强保险单</td>
						<td>
						     <label >
                                <input type="radio" name="insurance" id=""  value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="insurance" id="" value="0">未交付
                             </label>
                        </td>
						<td>车辆钥匙</td>
						<td>
						     <label >
                                <input type="radio" name="carKey" id=""  value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carKey" id=""  value="0">未交付
                             </label>
                             <input type="text" name="carKeyNum" class="form-control" style="width:50px;display:inline-block;"/>把
						</td>
					</tr>
					<tr>
						<td>机动车登记证</td>
						<td>
						
						     <label >
                                <input type="radio" name="carCertificate" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carCertificate" id="" value="0">未交付
                             </label>
						</td>
						<td>商业保险单</td>
						<td>
						
						     <label >
                                <input type="radio" name="commercial" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="commercial" id="" value="0">未交付
                             </label>
						</td>
					</tr>
					<tr>
						<td>车辆行驶证</td>
						<td>
						     <label >
                                <input type="radio" name="carLicense" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carLicense" id="" value="0">未交付
                             </label>
						
						</td>
						<td>车辆原始发票</td>
						<td>
						
						      <label >
                                <input type="radio" name="carInvoice" id="option1" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carInvoice" id="option1" value="0">未交付
                             </label>
						</td>
					</tr>
					
					<tr>
						<td>车辆完税证</td>
						<td>
						
						      <label >
                                <input type="radio" name="carPayment" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carPayment" id="" value="0">未交付
                             </label>
						</td>
						<td>进口车辆证明</td>
						<td>
						
						      <label >
                                <input type="radio" name="carProve" id="" value="1">交付
                             </label>
                             <label >
                                <input type="radio" name="carProve" id="" value="0">未交付
                             </label>
						</td>
					</tr>
				</tbody>

			</table>

			<table id="tab" class="table table-striped" style="width: 1000px;">
			<caption style="text-align: center;font-size: 15px;">车内物品详单</caption>

				<tbody>

					<tr>
						<td>物品名称
							<input type="hidden" name="carGoods[0].id" value="0"/>
							<input type="hidden" name="carGoods[1].id" value="0"/>
							<input type="hidden" name="carGoods[2].id" value="0"/>
							<input type="hidden" name="carGoods[3].id" value="0"/>
						</td>
						<td><input type="text" name="carGoods[0].goodsName" class="form-control"/></td>
						<td><input type="text" name="carGoods[1].goodsName" class="form-control"/></td>
						<td><input type="text" name="carGoods[2].goodsName" class="form-control"/></td>
						<td><input type="text" name="carGoods[3].goodsName" class="form-control"/></td>
					</tr>

					<tr>
						<td>物品数量</td>
						<td><input type="text" name="carGoods[0].goodsNum" class="form-control"/></td>
						<td><input type="text" name="carGoods[1].goodsNum" class="form-control"/></td>
						<td><input type="text" name="carGoods[2].goodsNum" class="form-control"/></td>
						<td><input type="text" name="carGoods[3].goodsNum" class="form-control"/></td>
					</tr>

					

					

				</tbody>

			</table>

			
			<table id="tab" class="table table-striped" style="width: 1000px;table-layout: fixed;">
				<caption style="text-align: center;font-size: 15px;">附件列表</caption>
				
				<tbody>

					<tr>
						<td>抵押车辆评估表<input type="hidden" name="carAdjuncts.id" value="0"/></td>
						<td><input type="file"  name="fileName" id="upload_file1" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.carAssessList" id="upload_file_tmp1"  readonly="readonly" onclick="upload_file1.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file1.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>

					<tr>
						<td>车辆照片</td>
						<td><input type="file"  name="fileName" id="upload_file2" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.carPhoto" id="upload_file_tmp2"  readonly="readonly" onclick="upload_file2.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file2.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>


                    <tr>
						<td>车辆登记证书（原件）</td>
						<td><input type="file"  name="fileName" id="upload_file3" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.carRegister" id="upload_file_tmp3"  readonly="readonly" onclick="upload_file3.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file3.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>
					<tr>
						<td>车辆行驶证正副本（原件）</td>
						<td><input type="file"  name="fileName" id="upload_file4" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.carLicense" id="upload_file_tmp4"  readonly="readonly" onclick="upload_file4.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file4.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>
					<tr>
						<td>保单（交强险）</td>
						<td><input type="file"  name="fileName" id="upload_file5" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.gutCompulsory" id="upload_file_tmp5"  readonly="readonly" onclick="upload_file5.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file5.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>
					<tr>
						<td>保单（商业险）</td>
						<td><input type="file"  name="fileName" id="upload_file6" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.gutCommercial" id="upload_file_tmp6"  readonly="readonly" onclick="upload_file6.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file6.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>
					<tr>
						<td>其它车辆附件</td>
						<td><input type="file"  name="fileName" id="upload_file7" style="display: none;" onchange="change(this);">  
    						<input type="text"  name="carAdjuncts.otherAttachments" id="upload_file_tmp7"  readonly="readonly" onclick="upload_file7.click(); "></td>
						<td><input id="" type="button" class="btn btn-default" value="选择文件" onclick="upload_file7.click(); "/> </td>
	            		<td></td>
						<td></td>
					</tr>

				</tbody>
			</table>	
			</div>
			</form>
			</div>
<!-- 		</form> -->
			<table  id="btns" class="table table-striped" style="width: 100%;">
				<tr>
					<td><input id="add" class="btn btn-info" type="button" value="添加" />
					<input id="del" class="btn btn-info" type="button" value="删除" /></td>
				</tr>
			</table>
			<center>
				<button id="baocun" class="btn btn-info" style="width: 120px;">保存</button>
				<button id="tijiao" class="btn btn-info" style="width: 120px;">提交</button>
				<button id="" class="btn btn-info" style="width: 120px;">返回</button>
				<button id="" class="btn btn-info" style="width: 120px;">回退</button>
			</center>
</body>
<script type="text/javascript">
function change(i){
	$(i).next().val($(i).val());
}
var contratId = $("#contratId").val();
$.ajax({
    type :'GET',
    url : '../carMessage/find',
    data :"contratId="+contratId,
    async:true,
    success : function(data) {
    	console.info(data);
		if(data!=null&&data.length>0){
			for(var i=1; i<data.length; i++){
				$("#add").click();
			}
			var i=0;
			$(".formClass").each(function(){
				$(this).form('load',data[i]);
				$(this).find("[name=firstTime]").val(funDate(data[i].firstTime));
				
				$(this).find("[name='carGoods[0].id']").val(data[i].carGoods[0].id);
				$(this).find("[name='carGoods[1].id']").val(data[i].carGoods[1].id);
				$(this).find("[name='carGoods[2].id']").val(data[i].carGoods[2].id);
				$(this).find("[name='carGoods[3].id']").val(data[i].carGoods[3].id);
				$(this).find("[name='carGoods[0].goodsName']").val(data[i].carGoods[0].goodsName);
				$(this).find("[name='carGoods[1].goodsName']").val(data[i].carGoods[1].goodsName);
				$(this).find("[name='carGoods[2].goodsName']").val(data[i].carGoods[2].goodsName);
				$(this).find("[name='carGoods[3].goodsName']").val(data[i].carGoods[3].goodsName);
				$(this).find("[name='carGoods[0].goodsNum']").val(data[i].carGoods[0].goodsNum);
				$(this).find("[name='carGoods[1].goodsNum']").val(data[i].carGoods[1].goodsNum);
				$(this).find("[name='carGoods[2].goodsNum']").val(data[i].carGoods[2].goodsNum);
				$(this).find("[name='carGoods[3].goodsNum']").val(data[i].carGoods[3].goodsNum);
				
				$(this).find("[name='carAdjuncts.id']").val(data[i].carAdjuncts.id);
				$(this).find("[name='carAdjuncts.carAssessList']").val(data[i].carAdjuncts.carAssessList);
				$(this).find("[name='carAdjuncts.carLicense']").val(data[i].carAdjuncts.carLicense);
				$(this).find("[name='carAdjuncts.carPhoto']").val(data[i].carAdjuncts.carPhoto);
				$(this).find("[name='carAdjuncts.carRegister']").val(data[i].carAdjuncts.carRegister);
				$(this).find("[name='carAdjuncts.gutCommercial']").val(data[i].carAdjuncts.gutCommercial);
				$(this).find("[name='carAdjuncts.gutCompulsory']").val(data[i].carAdjuncts.gutCompulsory);
				$(this).find("[name='carAdjuncts.otherAttachments']").val(data[i].carAdjuncts.otherAttachments);
				i++;
			});
		}
    }
});


$("#add").click(function(){
    $("#btns").before($("#div").html());
    var ss =$(".xxx");
    $(ss[ss.length-1]).find("#id").val(0);
    $(ss[ss.length-1]).find("[name='carGoods[0].id']").val(0);
    $(ss[ss.length-1]).find("[name='carGoods[1].id']").val(0);
    $(ss[ss.length-1]).find("[name='carGoods[2].id']").val(0);
    $(ss[ss.length-1]).find("[name='carGoods[3].id']").val(0);
    $(ss[ss.length-1]).find("[name='carAdjuncts.id']").val(0);
    
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
	$("#baocun").click(function(){
		var forms=$(".formClass");
		$(forms[0]).find("#isAdd").val(0);
		$(".isSubmit").val(0);
		ssss();
	});
	$("#tijiao").click(function(){
		var forms=$(".formClass");
		$(forms[0]).find("#isAdd").val(0);
		forms[forms.length-1].find("#isSubmit").val(1);
		ssss();
	});
	
	function ssss(){
		var ss = $(".formClass");
		console.info(ss.length)
		for(var i=0;i<ss.length;i++){
			$(ss[i]).form({
				url: "../carMessage/add",
				onSubmit: function(){
					return true;	// 返回false将停止form提交 
				},
				success: function(data){
					console.info(data);
					alert(data);
					if(data||data=="true"){
						$.messager.show({
		        		    title:'叮咚~',
		        		    msg:'操作成功！',
		        		    timeout:3000,
		        		    showType:'slide'
		        		});
						/* $("#ifrom").load('branchcompany/userInput.jsp?'); */
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
			$(ss[i]).submit();
		}
		/* .each(function(){
			$(this).form({
				url: "../carMessage/add",
				onSubmit: function(){
					return true;	// 返回false将停止form提交 
				},
				success: function(data){
					console.info(data);
					alert(data);
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
			$(this).submit();
			alert("暂停"); 
		});*/
	}
		function funDate(value){
			if(value!=null){
				var dates = new Date(value);
				var year=dates.getYear()+1900;     
			    var month=dates.getMonth()+1;
			    var date=dates.getDate();
			    if((month+"").length==1){
			    	month="0"+month;
			    }
			    if((date+"").length==1){
			    	date="0"+date;
			    }
				return year+"-"+month+"-"+date;		
			}
			return "-";
		}
</script>
</html>