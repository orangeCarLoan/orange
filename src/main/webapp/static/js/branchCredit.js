$("input").addClass("form-control");
$(":radio").removeClass("form-control");
$(":radio").css("text-align","left");
var conId="";
var contractId=$("#contractId").val();

$(function(){
	function show(id) {
		var m={"id":id};
		var json = JSON.stringify(m);
		$.ajax({
			type:"POST",
			url:"../branch/findAll",
			data:json,
			contentType:"application/json",
			async:true,
			success:function(data){
				//data = JSON.parse(data);
				console.log(data);
				$('#clientName').val(data.userIdentityBean.userName)
				$('#idCardNum').val(data.userIdentityBean.identity)
				$('#education').val(data.userMessageBean.education)
				$('#tel').val(data.userMessageBean.userPhone)
				$('#clientAddress').val(data.userMessageBean.place)
				$('#phone').val(data.userMessageBean.telephone)
				$('#marry').val(data.userMessageBean.marry)
				$('#hasChild').val(data.userMessageBean.hasChild)
				$('#houseType').val(data.userMessageBean.houseType)
				$("#partner[value='"+data.userMessageBean.partner+"']").attr("selected","selected")
				$('#address').val(data.userMessageBean.address)
				$('#producType').val(data.userMessageBean.clientType)
				
				$('#jobName').val(data.userMessageBean.companyName)
				$('#jobAddress').val(data.userMessageBean.companyAddress)
				$('#jobTel').val(data.userMessageBean.companyPhone)
				$('#postCode').val(data.userMessageBean.zipCode)
				$('#joinTime').val(data.userMessageBean.happenTime)
				$('#Department').val(data.userMessageBean.dept)
				$('#fillPost').val(data.userMessageBean.duty)
				$('#scaleCompany').val(data.userMessageBean.companySize)
				$('#industryCategory').val(data.userMessageBean.employment)
				$("#jobProperty[value='"+data.userMessageBean.unitNature+"']").attr("selected","selected")
				
				$('#userFor').val(data.userMessageBean.borrowPurpose)
				$('#income').val(data.userMessageBean.income)
				$('#repayment').val(data.userMessageBean.repayment)
				$('#maxdeadline').val(data.userMessageBean.maxdeadline)
				$('#minlimit').val(data.userMessageBean.minlimit)
				$('#maxlimit').val(data.userMessageBean.maxlimit)
				$('#channel').val(data.userMessageBean.channel)
				$('#applydate').val(funDate(data.userMessageBean.applyDate))
				$('#Salename').val(data.userMessageBean.saleName)
				$('#commissioner').val(data.userMessageBean.commissioner)
				
				for(var i=1; i<data.carMessageBeans.length;i++){
					$("#div").after($("#div").html());
				}
				var i=0;
				$(".div").each(function(){
					$(this).find('#carplate').val(data.carMessageBeans[i].carPlate)
					$(this).find('#labeltype').val(data.carMessageBeans[i].labelType)
					$(this).find('#carEvaluate').val(data.carMessageBeans[i].engineno)
					$(this).find('#carColor').val(data.carMessageBeans[i].color)
					$(this).find('#firsttime').val(funDate(data.carMessageBeans[i].firstTime))
					$(this).find('#yearvalidity').val(data.carMessageBeans[i].yesrValidity)
					
					$(this).find('#chassisnum').val(data.carMessageBeans[i].chassisnum)
					$(this).find('#carPrice').val(data.carMessageBeans[i].carPrice)
					$(this).find('#currentTripNum').val(data.carMessageBeans[i].currentTripNum)
					
					$(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").prop("name", $(this).find(":radio[name='idcard'][value='" + data.carMessageBeans[i].idcard + "']").attr("name")+i)
					$(this).find(":radio[name='idcard"+i+"'][value='" + data.carMessageBeans[i].idcard + "']").prop("checked", "checked")
					$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("name",$(this).find(":radio[name='carpurchase'][value='" + data.carMessageBeans[i].carPurchase + "']").attr("name")+i)
					$(this).find(":radio[name='carpurchase"+i+"'][value='" + data.carMessageBeans[i].carPurchase + "']").prop("checked", "checked")
					$(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").prop("name", $(this).find(":radio[name='insurance'][value='" + data.carMessageBeans[i].insurance + "']").attr("name")+i)
					$(this).find(":radio[name='insurance"+i+"'][value='" + data.carMessageBeans[i].insurance + "']").prop("checked", "checked")
					$(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").prop("name", $(this).find(":radio[name='carKey'][value='" + data.carMessageBeans[i].carKey + "']").attr("name")+i)
					$(this).find(":radio[name='carKey"+i+"'][value='" + data.carMessageBeans[i].carKey + "']").prop("checked", "checked")
					$(this).find('#keyNum').html(data.carMessageBeans[i].carKeyNum+"把")
					$(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("name", $(this).find(":radio[name='carcertificate'][value='" + data.carMessageBeans[i].carCertificate + "']").attr("name")+i)
					$(this).find(":radio[name='carcertificate"+i+"'][value='" + data.carMessageBeans[i].carCertificate + "']").prop("checked", "checked")
					$(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").prop("name", $(this).find(":radio[name='commercial'][value='" + data.carMessageBeans[i].commercial + "']").attr("name")+i)
					$(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").prop("name", $(this).find(":radio[name='carlicense'][value='" + data.carMessageBeans[i].carLicense + "']").attr("name")+i)
					$(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("name", $(this).find(":radio[name='carinvoice'][value='" + data.carMessageBeans[i].carInvoice + "']").attr("name")+i)
					$(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").prop("name", $(this).find(":radio[name='carpayment'][value='" + data.carMessageBeans[i].carPayment + "']").attr("name")+i)
					$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").prop("name",$(this).find(":radio[name='carprove'][value='" + data.carMessageBeans[i].carProve + "']").attr("name")+i)
					
					$(this).find(":radio[name='commercial"+i+"'][value='" + data.carMessageBeans[i].commercial + "']").prop("checked", "checked")
					$(this).find(":radio[name='carlicense"+i+"'][value='" + data.carMessageBeans[i].carLicense + "']").prop("checked", "checked")
					$(this).find(":radio[name='carinvoice"+i+"'][value='" + data.carMessageBeans[i].carInvoice + "']").prop("checked", "checked")
					$(this).find(":radio[name='carpayment"+i+"'][value='" + data.carMessageBeans[i].carPayment + "']").prop("checked", "checked")
					$(this).find(":radio[name='carprove"+i+"'][value='" + data.carMessageBeans[i].carProve + "']").prop("checked", "checked")
					
					var sss1 = $(this).find('.thingName');
					var sss2 = $(this).find('.thingNum');
					for(var j=0; j<data.carMessageBeans[i].carGoods.length; j++){
						
						sss1[j].value=data.carMessageBeans[i].carGoods[j].goodsName;
						sss2[j].value=data.carMessageBeans[i].carGoods[j].goodsNum;
					}
					i++;
				});
				$("#credId").val(data.userCreditBean.id);
				$("#tab10 [name=carLoan][value="+data.userCreditBean.carLoan+"]").attr("checked","checked");
				$("#tab10 [name=carProperty][value="+data.userCreditBean.carProperty+"]").attr("checked","checked");
				$("#tab10 [name=houseLoan][value="+data.userCreditBean.houseLoan+"]").attr("checked","checked");
				$("#tab10 [name=houseProperty][value="+data.userCreditBean.houseProperty+"]").attr("checked","checked");
				$('#maxSituation').val(data.userCreditBean.maxSituation)
				$('#maxNumber').val(data.userCreditBean.maxNumber)
				$('#creditCardUsageRate').val(data.userCreditBean.creditCardUsageRate)
				$('#noccLae').val(data.userCreditBean.noccLae)
				$('#otherCreditLoans').val(data.userCreditBean.otherCreditLoans)
				$('#creditCard').val(data.userCreditBean.creditCard)
				
				/*联系人信息*/
				for(var i=1; i<data.userMessageBean.contactBean.length;i++){
					$("#div2").after($("#div2").html());
					var ss = "<tr>"+$("#trClass").html()+"</tr>";
					var reg=/isLoan1/g;
					ss = ss.replace(reg,"isLoan"+(i+1));
					$("#tbody").append(ss);
				}
				i=0;
				$(".div2").each(function(){
					conId+="conId="+data.userMessageBean.contactBean[i].id+"&";
					$(this).find('#contactName').val(data.userMessageBean.contactBean[i].contactName)
					$(this).find('#contactPhone').val(data.userMessageBean.contactBean[i].contactPhone)
					$(this).find('#contactType').val(data.userMessageBean.contactBean[i].contactType)
					$(this).find("#relation").val(data.userMessageBean.contactBean[i].relation);
					$(this).find('#contactCompany').val(data.userMessageBean.contactBean[i].contactCompany)
					$(this).find('#contactAddress').val(data.userMessageBean.contactBean[i].contactAddress)
					i++;
				});
				//电话核查
				i=0;
				$(".conName").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactName);
					i++;
				});
				i=0;
				$(".conRelation").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].relation);
					i++;
				});
				i=0;
				$(".conPhone").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactPhone);
					i++;
				});
				i=0;
				$(".conAddress").each(function(){
					$(this).val(data.userMessageBean.contactBean[i].contactAddress);
					i++;
				});
				i=0;
				$(".isLoan").each(function(){
					$(this).find(":radio[name='isLoan"+(i+1)+"'][value='" + data.userMessageBean.contactBean[i].knowLoan + "']").prop("checked", "checked")
					i++;
				});
				//基本信息附件
				$("#atherAdjunct").html(data.userMessageBean.userAdjunctBean.atherAdjunct);
				$("#carLoanFrom").html(data.userMessageBean.userAdjunctBean.carLoanFrom);
				$("#idcard").html(data.userMessageBean.userAdjunctBean.idcard);
				//车辆附件
				for(var i=1; i<data.carMessageBeans.length;i++){
					$("#carTbody").after("<tbody>"+$("#carTbody").html()+"</tbody>");
				}
				i=0;
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
				//综合意见
				$("#adviceId").val(data.adviceBean.id);
				$("#approvalPeriod [value='"+data.adviceBean.approvalPeriod+"']").attr("selected","selected");
				$("#conclusion [value='"+data.adviceBean.conclusion+"']").attr("selected","selected");
				$("#productCategory [value='"+data.adviceBean.productCategory+"']").attr("selected","selected");
				$("#approvalQuota").val(data.adviceBean.approvalQuota);
				$("#branchOpinion").val(data.adviceBean.branchOpinion);
				
				
			}
		})
		
	}
	show(contractId);
	function submit(isSubmit){
		/*var ss = $("#myform").serialize();
		console.info( $("#myform"));
		console.info(ss+"aaaaaaaaaaaaaaaaaaaaaaaaaa");*/
		
		
		/*var userCredit ={};
		var advice={};
		var value  = $('input[name="radioName"]:checked').val();
		var knowLoan1=$('input[name="isLoan1"]:checked').val();
		var knowLoan2=$('input[name="isLoan2"]:checked').val();
		var knowLoan3=$('input[name="isLoan3"]:checked').val();
		var contactIds={};
		var knowLoan={}*/
		/* var map = {"id1":1,"id2":2,"id3":3,"contractId":1,"maxSituation":$("#maxSituation").val(),"maxNumber":$("#maxNumber").val(),"creditCardUsageRate":$("#creditCardUsageRate").val(),"noccLae":$("#noccLae").val(),"creditCard":$("#creditCard").val(),"otherCreditLoans":$("#otherCreditLoans").val(),"productCategory":$("#productCategory option:selected").val(),"approvalPeriod":$("#approvalPeriod option:selected").val(),"conclusion":$("#conclusion option:selected").val(),"approvalQuota":$("#approvalQuota").val(),"firstComment":$("#firstComment").val(),"knowLoan1":$('input[name="isLoan1"]:checked').val(),"knowLoan2":$('input[name="isLoan2"]:checked').val(),"knowLoan3":$('input[name="isLoan3"]:checked').val(),"isSubmit":isSubmit};
		var json = JSON.stringify(map);
		$.ajax({
        	type:"POST",
        	url:"../branch/saveBranch",
        	data:json,
        	contentType:"application/json",
        	async:true,
			success:function(){
				
			}
        }); */
//         console.info($(".isLoan :checked"));
        var knowLoan = "";
        $(".isLoan :checked").each(function(){
        	knowLoan+="knowLoan="+$(this).val()+"&";
        });
      /*   console.info(knowLoan);
        console.info(conId);
        console.info($("#myform1").serialize());
        console.info($("#myform2").serialize()); */
        var data = knowLoan+conId+$("#myform1").serialize()+"&"+$("#myform2").serialize()+"&contractId="+contractId+"&isSubmit="+isSubmit;
        console.info(data);
		$.ajax({
        	type:"POST",
        	url:"../branch/saveBranch",
        	data:data,
        	async:true,
			success:function(data){
				var str="";
		    	if(data||data=="true"){
		    		str="操作成功！";
					$("#ifrom").load('branchcompany/branchCompany.jsp');
				}else{
					str="操作失败！系统繁忙！";
				}
		    	$.messager.show({
	    		    title:'叮咚~',
	    		    msg:str,
	    		    timeout:3000,
	    		    showType:'slide'
	    		});
			}
        }); 
	}
	
	$("#baocun").click(function(){
		submit(0);
	})
	$("#tijiao").click(function(){
		submit(1);
	})
	
	function show2(state){
		
		var backInfo = $("#backInfo").val();
		var map ={"backInfo":backInfo,"state":state,"contractId":1};
		console.info(map);
		
// 		var json = JSON.parse(map);
		$.ajax({
        	type:"POST",
        	url:"../branch/branchAudit",
        	data:"contractId="+contractId+"&backInfo="+backInfo+"&state="+state,
//         	contentType:"application/json",
        	async:true,
			success:function(data){
				var str="";
		    	if(data||data=="true"){
		    		str="操作成功！";
					$("#ifrom").load('branchcompany/branchCompany.jsp');
				}else{
					str="操作失败！系统繁忙！";
				}
		    	$.messager.show({
	    		    title:'叮咚~',
	    		    msg:str,
	    		    timeout:3000,
	    		    showType:'slide'
	    		});
			}
				
        });
		
	}
	
	$("#getBackClientBase").click(function(){
		show2(0);
	})
	$("#getBackCarInfo").click(function(){
		show2(1);
	})
	
	
	/*function test(id) {
		alert(id)
		$(":radio[name='idcard'][value='" + '交付' + "']").prop("checked", "checked")
	}
	
	
	test(1);*/
	
	
	
	
})
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