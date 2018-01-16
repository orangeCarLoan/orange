package org.orange.carloan.userIdentitymag.dao;

import org.orange.carloan.beans.UserIdentityBean;

public interface IUserIdentityDao {

	/**
	 * 根据身份id查询客户身份信息
	 * @param id 
	 * @return
	 */
	public UserIdentityBean findUserIdentityByUserIdentityId(int id);
	
}
