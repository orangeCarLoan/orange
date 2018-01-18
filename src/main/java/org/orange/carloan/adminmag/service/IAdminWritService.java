package org.orange.carloan.adminmag.service;

import org.orange.carloan.beans.AdminBean;

public interface IAdminWritService {

	/**
	 * 修改
	 * @param admin
	 * @param companyId
	 * @param roleId
	 */
	public void saveOrUpdateAdmin(AdminBean admin,int companyId,int roleId);
	
}
