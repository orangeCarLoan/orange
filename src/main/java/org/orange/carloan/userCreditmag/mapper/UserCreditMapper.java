package org.orange.carloan.userCreditmag.mapper;


import org.orange.carloan.beans.UserCreditBean;

public interface UserCreditMapper {
  
//	@ResultType(UserCreditBean.class)
//	@Select("select id as id,house_property as houseProperty,House_loan as houseLoan,"
//			+ "car_property as carProperty ,car_loan as carLoan,max_overdue_situation as maxSituation,"
//			+ "max_overdue_number as maxNumber,credit_card_usage_rate as creditCardUsageRate,"
//		 	+ "nocc_lae as noccLae,other_credit_loans as otherCreditLoans,"
//			+ "credit_card as creditCard from t_usercredit where id=#{id}")@Param("id") 
//	@Results(value= {
//			@Result(property="contractInformationBean",javaType=ContractInformationBean.class,column="id",
//				one=@One(select="")	)
//	})
	public UserCreditBean findUserCredByUserCredId(int id);
	 
	/**
	 * 根据合同id查询客户信用信息
	 * @param id
	 * @return
	 */
	public UserCreditBean findUserCredByContractId(int id);
}
