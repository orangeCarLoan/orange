package org.orange.carloan.userIdentitymag.dao.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userIdentitymag.mapper.UserIdentityMapper;
import org.springframework.stereotype.Repository;

@Repository
public class UserIdentityDaoImpl implements IUserIdentityDao {
	
	@Resource UserIdentityMapper uim;
	  
	@Override
	public UserIdentityBean findUserIdentityByUserIdentityId(int id) {
		// TODO Auto-generated method stub
		return uim.findUserIdentityByUserIdentityId(id);
	}

}
