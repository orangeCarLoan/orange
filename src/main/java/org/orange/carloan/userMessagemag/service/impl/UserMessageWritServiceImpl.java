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
		Boolean flag=false;
		if(isSubmit==0) {
			System.out.println("这是提交状态="+isSubmit);
			userMessageRepository.saveAndFlush(userMessage);
			System.out.println("你更改了如下信息："+userMessage+"/r");
			return flag=false;
		}else if(isSubmit==1) {
			System.out.println("这是提交状态="+isSubmit);
			if(userMessage.getContractInformationBean().getIsFallback()==0) {
				userMessage.getContractInformationBean().setState(2);
				userMessageRepository.saveAndFlush(userMessage);
				System.out.println("修改了状态为2");
			}else if(userMessage.getContractInformationBean().getIsFallback()==2) {
				userMessage.getContractInformationBean().setState(5);
				userMessage.getContractInformationBean().setIsFallback(0);
				userMessageRepository.saveAndFlush(userMessage);
				System.out.println("修改了状态为5回退状态为0");
			}
			return flag=true;
		}
		
		
		return flag;
	}
	/**
	 * 根据contractInformationId查询出合同信息，在将userMessage放入合同类属性中，
	 * 在根据isSubmit判断，如果为1，
	 * 		判断合同类中的回退状态（isFallback)
	 * 		如果等于0，则将合同信息类的状态改为2。ContractInformationBean-state
	 * 		如果等于2，则将合同信息类的状态改为5。
	 * 		并将回退状态（isFallback）改为0---ContractInformationBean-is_fallback
	 * 		在执行合同信息类的update方法。
	 * isSubmit如果等于0，
	 * 直接执行合同信息类的update方法。
	 * 
	 * @param userMessage
	 */
	
	
	
	
	
	
	
	
	
	
	
	
	
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
