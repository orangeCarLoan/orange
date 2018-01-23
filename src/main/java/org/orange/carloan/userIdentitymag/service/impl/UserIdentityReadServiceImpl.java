package org.orange.carloan.userIdentitymag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userIdentitymag.service.IUserIdentityReadService;
import org.springframework.stereotype.Service;

@Service
public class UserIdentityReadServiceImpl implements IUserIdentityReadService {

	@Resource
	private IUserIdentityDao userIdentityDaoImpl;
	
	@Override
	public UserIdentityBean findUserIdentityByContractId(int id) {
		// TODO Auto-generated method stub
		return userIdentityDaoImpl.findUserIdentityByContractId(id);
	}

}
