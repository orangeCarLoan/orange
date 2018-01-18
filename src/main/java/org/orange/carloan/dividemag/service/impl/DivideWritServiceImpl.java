package org.orange.carloan.dividemag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.dividemag.service.IDivideWritService;
import org.springframework.stereotype.Service;
@Service
public class DivideWritServiceImpl implements IDivideWritService{
	
	@Resource
	private IContractInformationDao contractInCformationDaoImpl;
	@Resource
	private IContractInformationRepository contractInfomation;
	@Override
	public void updateCheckPerson(int[] contratId, String person) {
		
		for (int i = 0; i < contratId.length; i++) {
			ContractInformationBean contract = contractInCformationDaoImpl.findContractInformationByContractId(contratId[i]);
			contract.getAuditor();
			contractInfomation.saveAndFlush(contract);
		}
		
	}

	@Override
	public void saveCheckPerson(int[] contratId) {
		
		
	}

}
