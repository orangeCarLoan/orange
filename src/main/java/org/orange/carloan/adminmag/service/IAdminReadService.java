package org.orange.carloan.adminmag.service;

import java.util.List;
import java.util.Map;

import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.PageBean;

public interface IAdminReadService {

	public List<AdminBean> findAdminByRoleName(String roleName);
	
	public PageBean findAdminByMap(Map<String,Object> map,int page,int size);
}
