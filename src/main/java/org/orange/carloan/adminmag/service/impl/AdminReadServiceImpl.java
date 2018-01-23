package org.orange.carloan.adminmag.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.dao.IAdminDao;
import org.orange.carloan.adminmag.repository.IAdminRepository;
import org.orange.carloan.adminmag.service.IAdminReadService;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.PageBean;
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
		Map<String,Object> mapp = new HashMap<String,Object>();
		if(map.get("rolename")!=null&&!map.get("rolename").equals("")) {
			mapp.put("rolename", map.get("rolename"));
		}
		if(map.get("companyName")!=null&&!map.get("companyName").equals("")) {
			mapp.put("companyName",map.get("companyName"));
		}
		mapp.put("index", (page-1)*size);
		mapp.put("size", size);
		List<AdminBean> admin = adminDaoImpl.findAdminByMap(mapp);
		int num = adminDaoImpl.findAdminSizeByMap(mapp);
		PageBean pager = new PageBean();
		pager.setRows(admin);
		pager.setTotal(num);
		return pager;
	}

}
