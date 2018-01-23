package org.orange.carloan.userIdentitymag.dao;

import java.util.List;

import org.orange.carloan.beans.UserIdentityBean;

public interface IUserIdentityDao {
 
	/**
	 * 根据身份id查询客户身份信息
	 * @param id 
	 * @return
	 */
	public UserIdentityBean findUserIdentityByUserIdentityId(int id);
	/**
	  * 根据身份证号查询客户身份信息
	 * @param identity 
	 * @return
	 */
	public UserIdentityBean findUserIdentityByIdentity(String identity);
	
	/**
	 * 根据合同id查询客户身份信息
	 * @param id
	 * @return
	 */
	public UserIdentityBean findUserIdentityByContractId(int id);
}
