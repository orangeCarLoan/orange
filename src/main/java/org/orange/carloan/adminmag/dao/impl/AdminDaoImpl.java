package org.orange.carloan.adminmag.dao.impl;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.dao.IAdminDao;
import org.orange.carloan.adminmag.mapper.IAdminMapper;
import org.orange.carloan.beans.AdminBean;
import org.springframework.stereotype.Repository;
@Repository
public class AdminDaoImpl implements IAdminDao {
    @Resource
	private IAdminMapper mapper;
	
	@Override
	public AdminBean findByName(String adminName) {
		return mapper.findByName(adminName);
	}

	@Override
	public AdminBean findById(int id) {
		return mapper.findById(id);
	}

}
