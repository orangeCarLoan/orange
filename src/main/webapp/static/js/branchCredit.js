$(function(){
	
	$('input').addClass("form-control");
	$(":radio").removeClass("form-control");
	function show(id) {
		
		$.ajax({
			type:"POST",
			url:"branch/findAll",
			data:json,
			contentType:"application/json",
			async:true,
			success:function(data){
				
				$('#clientName').val(data.idcard.clientName)
				$('#idCardNum').val(data.idcard.idCardNum)
				$('#education').val(data.client.education)
				$('#tel').val(data.client.tel)
				$('#clientAddress').val(data.idcard.clientAddress)
				$('#producType').val(data.idcard.producType)
				
				$('#jobAddress').val(data.work.jobAddress)
				$('#jobName').val(data.work.jobName)
				$('#jobTel').val(data.work.jobTel)
				$('#postCode').val(data.work.postCode)
				$('#joinTime').val(data.work.joinTime)
				$('#Department').val(data.work.Department)
				$('#fillPost').val(data.work.fillPost)
				$('#scaleCompany').val(data.work.scaleCompany)
				$("#jobProperty[value='"+data.work.jobProperty+"']").attr("selected","selected")
				$('#industryCategory').val(data.work.industryCategory)
				
				$('#income').val(data.need.income)
				$('#userFor').val(data.need.userFor)
				$('#repayment').val(data.need.repayment)
				$('#maxdeadline').val(data.need.maxdeadline)
				$('#minlimit').val(data.need.minlimit)
				$('#maxlimit').val(data.need.maxlimit)
				$('#channel').val(data.need.channel)
				$('#applydate').val(data.need.applydate)
				$('#Salename').val(data.need.Salename)
				$('#commissioner').val(data.need.commissioner)
				
				$('#carplate').val(data.car.carplate)
				$('#labeltype').val(data.car.labeltype)
				$('#carEvaluate').val(data.car.carEvaluate)
				$('#carColor').val(data.car.carColor)
				$('#firsttime').val(data.car.firsttime)
				$('#yearvalidity').val(data.car.yearvalidity)
				$('#currenttripnum').val(data.car.currenttripnum)
				
				$(":radio[name='idcard'][value='" + data.car.idcard + "']").prop("checked", "checked")
				$(":radio[name='idcard1'][value='" + data.car.idcard1 + "']").prop("checked", "checked")
				$(":radio[name='carpurchase'][value='" + data.car.carpurchase + "']").prop("checked", "checked")
				$(":radio[name='insurance'][value='" + data.car.insurance + "']").prop("checked", "checked")
				$(":radio[name='carpurchase'][value='" + data.car.carpurchase + "']").prop("checked", "checked")
				$(":radio[name='carcertificate'][value='" + data.car.carcertificate + "']").prop("checked", "checked")
				$(":radio[name='commercial'][value='" + data.car.commercial + "']").prop("checked", "checked")
				$(":radio[name='carlicense'][value='" + data.car.carlicense + "']").prop("checked", "checked")
				$(":radio[name='carinvoice'][value='" + data.car.carinvoice + "']").prop("checked", "checked")
				$(":radio[name='carpayment'][value='" + data.car.carpayment + "']").prop("checked", "checked")
				$(":radio[name='carprove'][value='" + data.car.carprove + "']").prop("checked", "checked")
				
				$('#thingName').val(data.cargoods[0].thingName)
				$('#thingNum').val(data.cargoods[0].thingNum)
				$('#thingName1').val(data.cargoods[1].thingName)
				$('#thingNum1').val(data.cargoods[1].thingNum)
				
				
				
				
				
			}
			
			
			
			
		})
		
	}
	
	/*function test(id) {
		alert(id)
		$(":radio[name='idcard'][value='" + '交付' + "']").prop("checked", "checked")
	}
	
	
	test(1);*/
	
	
	
	
})