package org.orange.carloan.letteronmag.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.springframework.stereotype.Service;
@Service
public class LetterOnReadServiceImpl implements ILetterOnReadService{
    @Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	
	@Override
	public List<Object> findBranchAuditByContractId(int contratId) {
		ContractInformationBean con = contractInformationDaoImpl.findContractInformationByContractId(contratId);
		List<Object> list1 = new ArrayList<Object>();
		list1.add(con);
		return list1;
	}

	
}
