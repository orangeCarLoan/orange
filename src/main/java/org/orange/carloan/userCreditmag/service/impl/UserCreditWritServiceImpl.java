package org.orange.carloan.userCreditmag.service.impl;
import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.userCreditmag.service.IUserCreditWritService;
import org.springframework.stereotype.Service;
@Service
public class UserCreditWritServiceImpl implements IUserCreditWritService {

	
	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public boolean saveUserCredit(int contractInformationId, UserCreditBean userCredit,int isSubmit) {
//		这里的mybatis查找会出现一个Unkown Entity的错误
//		 ContractInformationBean contranctBean = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		ContractInformationBean contranctBean = contractInformationRepository.findOne(contractInformationId);
		System.out.println(userCredit);
		 System.out.println(contranctBean);
		 if(contranctBean.getState()==0) {
				return false;
			}else {
				contranctBean.setUserCreditBean(userCredit);
				if(isSubmit==1) {
					contranctBean.setState(5);
				}
				contractInformationRepository.saveAndFlush(contranctBean);
				return true;
			}

	}

}
