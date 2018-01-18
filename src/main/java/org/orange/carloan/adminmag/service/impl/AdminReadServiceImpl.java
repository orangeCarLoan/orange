package org.orange.carloan.adminmag.service.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.orange.carloan.adminmag.dao.IAdminDao;
import org.orange.carloan.adminmag.repository.IAdminRepository;
import org.orange.carloan.adminmag.service.IAdminReadService;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.PageBean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Repository;
@Repository
public class AdminReadServiceImpl implements IAdminReadService {

	@Resource
	private IAdminDao adminDaoImpl;
	@Resource
	private IAdminRepository adminRepository;
	@Override
	public List<AdminBean> findAdminByRoleName(String roleName) {
		// TODO Auto-generated method stub
		return adminDaoImpl.findAdminByRoleName(roleName);
	}

	public PageBean findAdminByMap(Map<String, Object> map, int page,int size) {
		return null;
	}

}
