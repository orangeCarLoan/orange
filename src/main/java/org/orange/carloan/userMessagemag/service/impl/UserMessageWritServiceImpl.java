package org.orange.carloan.userMessagemag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.userMessagemag.repository.UserMessageRepository;
import org.orange.carloan.userMessagemag.service.IUserMessageWritService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class UserMessageWritServiceImpl implements IUserMessageWritService {

	@Resource
	private UserMessageRepository  userMessageRepository; 
	
	@Override
	public boolean saveUserMessage(int contractInformationId, UserMessageBean userMessage, int isSubmit) {
		// TODO Auto-generated method stub
		return false;
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
//
//	@Override
//	public void updateUserMessage(UserMessageBean umb) {
//		// TODO Auto-generated method stub
//		userMessageRepository.saveAndFlush(umb);
//	}
//
//
//	@Override
//	public void deletUserMessage(int id) {
//		// TODO Auto-generated method stub
//		userMessageRepository.delete(id);
//	}
//
//
//	@Transactional
//	public void saveUserMessageBean(UserMessageBean umb) {
//		// TODO Auto-generated method stub
//		userMessageRepository.save(umb);
//	}

}
