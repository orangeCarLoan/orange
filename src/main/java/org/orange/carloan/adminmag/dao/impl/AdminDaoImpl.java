package org.orange.carloan.adminmag.dao.impl;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<AdminBean> findAdminByRoleName(String roleName) {
		// TODO Auto-generated method stub
		return mapper.findAdminByRoleName(roleName);
	}

	@Override
	public List<AdminBean> findAdminByMap(Map map) {
		// TODO Auto-generated method stub
		return mapper.findAdminByMap(map);
	}

	@Override
	public int findAdminSizeByMap(Map map) {
		// TODO Auto-generated method stub
		return mapper.findAdminSizeByMap(map);
	}

}
