package org.orange.carloan.signmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.signmag.service.ISignWritService;
import org.springframework.stereotype.Service;

@Service
public class SignWritServiceImpl implements ISignWritService {

	@Resource
	private IContractInformationRepository contractInformationRepository;
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public void saveSign(int contractInformationId, SignBean sign, int isSubmit) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		
		bean.setSignBean(sign);
		
		if(isSubmit == 1) {
			
			bean.setState(8);
			bean.setIsFallback(0);
			contractInformationRepository.save(bean);
		}else {
			
			contractInformationRepository.save(bean);
		}
	}

	@Override
	public void deleteSign(int contractInformationId, String fallbackContent) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		
		bean.setFallbackContent(fallbackContent);
		bean.setState(6);
		bean.setIsFallback(1);
		
		contractInformationRepository.save(bean);
	}

}
