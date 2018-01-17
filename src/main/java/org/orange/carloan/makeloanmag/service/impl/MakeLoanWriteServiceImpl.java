package org.orange.carloan.makeloanmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.makeloanmag.service.IMakeLoanWritService;

public class MakeLoanWriteServiceImpl implements IMakeLoanWritService {

	@Resource
	private IContractInformationRepository contractInformationRepository;
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public void updateState(int contratId) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contratId);
		bean.setCreditstatus("已放款");
		contractInformationRepository.saveAndFlush(bean);
 
	}

}
