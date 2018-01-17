package org.orange.carloan.userMessagemag.dao.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.orange.carloan.userMessagemag.mapper.IUserMessageMapper;
import org.springframework.stereotype.Repository;

@Repository
public class UserMessageDaoImpl implements IUserMessageDao {

	@Resource
	private IUserMessageMapper userMessageMapper;
	@Override
	public UserMessageBean findUserMessageByUserMessageId(int id) {
		// TODO Auto-generated method stub
		return userMessageMapper.findUserMessageByUserMessageId(id);
	}
 
	@Override
	public UserMessageBean findUserMessageByContractId(int contratId) {
		// TODO Auto-generated method stub
		return userMessageMapper.findUserMessageByContractId(contratId);
	}
	
	

}
