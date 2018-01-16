package org.orange.carloan.userIdentitymag.mapper;

import org.orange.carloan.beans.UserIdentityBean;

public interface UserIdentityMapper {
	/**
	 * 根据身份id查询客户身份信息
	 * @param id
	 * @return 
	 */
	public UserIdentityBean findUserIdentityByUserIdentityId(int id);
}
