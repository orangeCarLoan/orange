package org.orange.carloan.userCreditmag.dao;

import org.orange.carloan.beans.UserCreditBean;

public interface IUserCreditDao {

	/**
	 * 根据客户信息id查询客户信用信息
	 * @param id
	 * @return
	 */
	public UserCreditBean findUserCredByUserCredId(int id);
	
	/**
	 * 根据合同id查询客户信用信息
	 * @param id
	 * @return
	 */
	public UserCreditBean findUserCredByContractId(int id);
}
 