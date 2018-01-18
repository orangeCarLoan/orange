package org.orange.carloan.signcheckmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.signcheckmag.service.ISignCheckWritService;
import org.springframework.stereotype.Service;

@Service
public class SignCheckWriteServiceImpl implements ISignCheckWritService {
	
	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public boolean updateStateAndSaveCheckMsg(int contratId, int isSubmit, String AdminName) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contratId);
		if(bean.getAuditor().equals(AdminName)){
			if(isSubmit==1){
				bean.setState(9);
				bean.setCreditstatus("放款中");
				contractInformationRepository.saveAndFlush(bean);
				return true;
			}else{
				contractInformationRepository.saveAndFlush(bean);
				return true;
			}
		}else{
			return false;
		}
	}

	@Override
	public void updateStateToBack(int contratId, String advice) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contratId);
		bean.setFallbackContent(advice);
		bean.setState(7);
		bean.setIsFallback(1);
		contractInformationRepository.saveAndFlush(bean);
	}

}
