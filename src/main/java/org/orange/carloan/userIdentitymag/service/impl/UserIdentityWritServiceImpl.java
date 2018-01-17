package org.orange.carloan.userIdentitymag.service.impl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.dao.IAdminDao;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userIdentitymag.service.IUserIdentityWritService;
import org.springframework.stereotype.Service;

@Service
public class UserIdentityWritServiceImpl implements IUserIdentityWritService {
	
	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IUserIdentityDao userIdentityDaoImpl;
	@Resource
	private IAdminDao adminDaoImpl;
	
	@Override
	public boolean saveUserIdentity(UserIdentityBean userIdentity,int adminId) {
		// TODO Auto-generated method stub
		UserIdentityBean bean = userIdentityDaoImpl.findUserIdentityByIdentity(userIdentity.getIdentity());
		AdminBean admin = adminDaoImpl.findById(adminId);
		if(bean!=null) {
			return false;
		}else {
			ContractInformationBean bean1 = new ContractInformationBean();
			bean1.setUserIdentityBean(userIdentity);
			String number = (int)((Math.random()*9+1)*100000)+"";
			DateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
			String contract = dateFormat.format(new Date()) + number;
			System.out.println(contract);
			bean1.setContract(contract);
			bean1.setCompanyBean(admin.getCompanyId());
			bean1.setState(1);
			contractInformationRepository.save(bean1);
			return true;
		}
	}
	
}
