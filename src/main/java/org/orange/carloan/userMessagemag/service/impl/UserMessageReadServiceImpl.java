package org.orange.carloan.userMessagemag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.orange.carloan.userMessagemag.repository.IUserMessageRepository;
import org.orange.carloan.userMessagemag.service.IUserMessageReadService;
import org.springframework.stereotype.Service;
@Service
public class UserMessageReadServiceImpl implements IUserMessageReadService {

	@Resource
	private IUserMessageDao userMessageDaoImpl;
	@Override
	public UserMessageBean findUserMessageByContractId(int contratId) {
		// TODO Auto-generated method stub
		return userMessageDaoImpl.findUserMessageByContractId(contratId);
	}

}
