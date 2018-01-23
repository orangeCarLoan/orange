package org.orange.carloan.userCreditmag.service.impl;
import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userCreditmag.service.IUserCreditWritService;
import org.springframework.stereotype.Service;
@Service
public class UserCreditWritServiceImpl implements IUserCreditWritService {

	
	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	@Resource
	private IUserCreditDao userCreditDao;
	
	@Override
	public boolean saveUserCredit(int contractInformationId, UserCreditBean userCredit,int isSubmit) {
//		这里的mybatis查找会出现一个Unkown Entity的错误
//		 ContractInformationBean contranctBean = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		ContractInformationBean contranctBean = contractInformationRepository.findOne(contractInformationId);
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
	
	/**
	 * 根据合同id查询客户信用信息
	 * @param id
	 * @return
	 */
	public UserCreditBean findUserCredByContractId(int id) {
		
		
		return userCreditDao.findUserCredByContractId(id);
	};

}
