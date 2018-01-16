$(function() {
	// 例如：
	//总公司信审
	$("#head_company").click(function() {
		$("#ifrom").load('headcompany/headCredit.jsp');
	})
	//车贷签约复核
	$("#re_check").click(function() {
		$("#ifrom").load('headcompany/reCheck.jsp');
	})
	//放款列表
	$("#loan_list").click(function() {
		$("#ifrom").load('headcompany/lending.jsp');
	})
	//审核分单
	$("#sub_menu").click(function() {
		$("#ifrom").load('');
	})
	//车贷读取身份证
	$("#read_idCard").click(function() {
		$("#ifrom").load('branchcompany/userIdentity.jsp');
	})
	//车贷录入
	$("#loan_input").click(function() {
		$("#ifrom").load('branchcompany/carLoanInput.jsp');
	})
	//分公司信审
	$("#branch_company").click(function() {
		$("#ifrom").load('branchcompany/branchCredit.jsp');
	})
	//车贷签约
	$("#signed").click(function() {
		$("#ifrom").load('branchcompany/signInfo.jsp');
	})
	//车贷查看
	$("#loan_check").click(function() {
		$("#ifrom").load('');
	})
	//管理员
	$("#manager").click(function() {
		$("#ifrom").load('admin.jsp');
	})

})
$(function() {
	$("#manager").click(function() {
		console.info(1);
		$("#ifrom").load('admin.jsp');
	})

})