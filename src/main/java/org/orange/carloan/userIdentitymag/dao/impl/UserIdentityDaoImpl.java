package org.orange.carloan.userIdentitymag.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userIdentitymag.mapper.UserIdentityMapper;
import org.springframework.stereotype.Repository;

@Repository
public class UserIdentityDaoImpl implements IUserIdentityDao {
	
	@Resource
	private UserIdentityMapper uim;
	 
//github.com/Orange-Carloan/carloan.git
	@Override
	public UserIdentityBean findUserIdentityByUserIdentityId(int id) {
		// TODO Auto-generated method stub
		return uim.findUserIdentityByUserIdentityId(id);
	}
 
	@Override
	public UserIdentityBean findUserIdentityByIdentity(String identity) {
		// TODO Auto-generated method stub
		return uim.findUserIdentityByIdentity(identity);
	}

	@Override
	public UserIdentityBean findUserIdentityByContractId(int id) {
		// TODO Auto-generated method stub
		return uim.findUserIdentityByContractId(id);
	}

}
