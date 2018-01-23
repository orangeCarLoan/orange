package org.orange.carloan.signmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.signmag.repository.SignRepository;
import org.orange.carloan.signmag.service.ISignWritService;
import org.springframework.stereotype.Service;

@Service
public class SignWritServiceImpl implements ISignWritService {

	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@Resource
	private SignRepository signRepository;
	
	@Override
	public void saveSign(int contractInformationId, SignBean sign, int isSubmit) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationRepository.findOne(contractInformationId);
//		signRepository.saveAndFlush(sign); 
		bean.setSignBean(sign);
//		sign.setSignAdjunctBean(null);
		if(isSubmit == 1) {
			
			bean.setState(8);
			bean.setIsFallback(0);
			contractInformationRepository.saveAndFlush(bean);
		}else {
			
			contractInformationRepository.saveAndFlush(bean);
		}
	}

	@Override
	public void deleteSign(int contractInformationId, String fallbackContent) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationRepository.findOne(contractInformationId);
		
		bean.setFallbackContent(fallbackContent);
		bean.setState(6);
		bean.setIsFallback(1);
		
		contractInformationRepository.saveAndFlush(bean);
	}

}