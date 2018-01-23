package org.orange.carloan.userMessagemag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContactBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserAdjunctBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.userMessagemag.repository.IContactRepository;
import org.orange.carloan.userMessagemag.service.IUserMessageWritService;
import org.springframework.stereotype.Service;
@Service
public class UserMessageWritServiceImpl implements IUserMessageWritService {

	@Resource
	private IContractInformationRepository  contractInformationRepository; 
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@Resource
	private IContactRepository contactRepository;
	@Override
	public boolean saveUserMessage(int contractInformationId, UserMessageBean userMessage, int isSubmit) {
		// TODO Auto-generated method stub
		ContractInformationBean contract = contractInformationRepository.findOne(contractInformationId);
		//ContractInformationBean contract = contractInformationRepository.findOne(contractInformationId);
//		if(contract.getUserMessageBean()!=null)
//			userMessage.setUserAdjunctBean(contract.getUserMessageBean().getUserAdjunctBean());
		contract.setUserMessageBean(userMessage);
		if(userMessage.getContactBean()!=null) {
			List<ContactBean> list = userMessage.getContactBean();
			for (int i = 0; i < list.size(); i++) {
				list.get(i).setUserMessageBean(userMessage);
				
				//contactRepository.saveAndFlush(list.get(i));
			}
		}
		Boolean flag=false;
		if(isSubmit==0) {
			System.out.println("这是提交状态="+isSubmit);
			contractInformationRepository.saveAndFlush(contract);
			//System.out.println("你更改了如下信息："+userMessage+"/r");
			return flag=false;
		}else if(isSubmit==1) {
			System.out.println("这是提交状态="+isSubmit);
			if(contract.getIsFallback()==0) {
				contract.setState(2);
			}else if(contract.getIsFallback()==2) {
				contract.setState(5);
			}
			contract.setIsFallback(0);
			contractInformationRepository.saveAndFlush(contract);
			return flag=true;
		}
		
		
		return flag;
	}
	@Override
	public void updateOrSaveUserAdjunt(int contractInformationId, UserAdjunctBean bean,int isSubmit) {
		// TODO Auto-generated method stub
		ContractInformationBean contract = contractInformationRepository.findOne(contractInformationId);
		contract.getUserMessageBean().setUserAdjunctBean(bean);
		if(isSubmit == 1) {
			if(contract.getIsFallback()==0) {
				contract.setState(2);
			}else if(contract.getIsFallback()==2) {
				contract.setState(5);
			}
			contract.setIsFallback(0);
		}
		contractInformationRepository.saveAndFlush(contract);
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
