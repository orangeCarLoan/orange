package org.orange.carloan.userCreditmag.service;

import org.orange.carloan.beans.UserCreditBean;

/**
 * 客户信用信息业务方法
 * @author Administrator
 *
 */
public interface IUserCreditWritService {
 
	/**
	 * 根据contractInformationId查询出合同类。
	 * 判断合同类中的状态是否为0，
	 * 如果为0，则返回false。
	 * 否者将userCredit存入合同类的客户信用信息类。
	 * 并将合同类的状态该为5
	 * 执行合同类的update方法。
	 * 返回true
	 */
	//4
	public boolean saveUserCredit(int contractInformationId,UserCreditBean userCredit,int isSubmit);
	
	/**
	 * 根据合同id查询客户信用信息
	 * @param id
	 * @return
	 */
	public UserCreditBean findUserCredByContractId(int id);
}
