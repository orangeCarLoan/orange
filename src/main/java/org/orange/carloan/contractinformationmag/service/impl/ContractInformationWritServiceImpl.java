package org.orange.carloan.contractinformationmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.springframework.stereotype.Service;

@Service
public class ContractInformationWritServiceImpl implements IContractInformationWritService {
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@Resource
	private IContractInformationRepository contractInformationRepository;
	
	@Override
	public void deleteContractInformation(int contractInformationId) {
		ContractInformationBean bean = contractInformationRepository.findOne(contractInformationId);
		bean.setState(0);
		contractInformationRepository.saveAndFlush(bean);
	}

	@Override
	public void updateContractAuditorById(int contractId, String auditor) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationRepository.findOne(contractId);
		bean.setAuditor(auditor);
		contractInformationRepository.saveAndFlush(bean);
	}

}
