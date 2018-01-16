package org.orange.carloan.userCreditmag.dao.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userCreditmag.mapper.UserCreditMapper;
import org.springframework.stereotype.Repository;
@Repository
public class UserCreditDaoImpl implements IUserCreditDao{
//
	@Resource
	private UserCreditMapper um;
	 
	@Override  
	public UserCreditBean findUserCredByUserCredId(int id) {
//		 TODO Auto-generated method stub
		return um.findUserCredByUserCredId(id);
	}
	
	

}
