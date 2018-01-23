package org.orange.carloan.letteronmag.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.springframework.stereotype.Service;
@Service
public class LetterOnReadServiceImpl implements ILetterOnReadService{
	@Resource
	private IContractInformationDao contractInformationDao;
	
	@Override
	public ContractInformationBean findBranchAuditByContractId(int contratId) {
		return contractInformationDao.findContractInformationByContractId(contratId);
//		UserMessageBean user = userMessageDaoImpl.findUserMessageByContractId(contratId);
//		List<CarMessageBean> list = carMessageDaoImpl.findCarMessageByContractId(contratId);
//		UserCreditBean userCredit = userCreditDaoImpl.findUserCredByContractId(contratId);
//		List<Object> list1 = new ArrayList<Object>();
//		list1.add(user);
//		list1.add(list);
//		list1.add(userCredit);
//		return list1;
	}

	
}
