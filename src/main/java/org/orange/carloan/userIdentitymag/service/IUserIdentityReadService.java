package org.orange.carloan.userIdentitymag.service;

import org.orange.carloan.beans.UserIdentityBean;

/**
 * 客户身份信息业务方法
 * @author Administrator
 *
 */
public interface IUserIdentityReadService {
 
	/**
	 * 根据合同id查询客户身份信息
	 * @param id
	 * @return
	 */
	public UserIdentityBean findUserIdentityByContractId(int id);
	
}
