package org.orange.carloan.adminmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.repository.IAdminRepository;
import org.orange.carloan.adminmag.repository.ICompanyRepository;
import org.orange.carloan.adminmag.repository.IRoleRepository;
import org.orange.carloan.adminmag.service.IAdminWritService;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.CompanyBean;
import org.orange.carloan.beans.RoleBean;
import org.springframework.stereotype.Repository;

@Repository
public class AdminWritServiceImpl implements IAdminWritService {
	
	@Resource
	private IAdminRepository adminRepository;
	@Resource
	private IRoleRepository roleRepository;
	@Resource
	private ICompanyRepository companyRepository;
	@Override
	public void saveOrUpdateAdmin(AdminBean admin, int companyId, int roleId) {
		// TODO Auto-generated method stub
		if(admin != null) {
			if(admin.getId()!=0) {
				AdminBean bean = adminRepository.findOne((long) admin.getId());
				bean.setPassword(admin.getPassword());
				RoleBean role = roleRepository.findOne(roleId);
				CompanyBean company = companyRepository.findOne(companyId);
				bean.setRoleId(role);
				bean.setCompanyId(company);
				adminRepository.saveAndFlush(bean);
			}else {
				RoleBean role = roleRepository.findOne(roleId);
				CompanyBean company = companyRepository.findOne(companyId);
				admin.setRoleId(role);
				admin.setCompanyId(company);
				adminRepository.save(admin);
			}
		}
	}

}