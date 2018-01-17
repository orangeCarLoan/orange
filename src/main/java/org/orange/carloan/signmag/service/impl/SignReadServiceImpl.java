package org.orange.carloan.signmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.SignBean;
import org.orange.carloan.signmag.dao.ISignDao;
import org.orange.carloan.signmag.service.ISignReadService;
import org.springframework.stereotype.Service;

@Service
public class SignReadServiceImpl implements ISignReadService {

	@Resource
	private ISignDao SignDaoImpl;
	
	@Override
	public SignBean findSignByContractId(int contratId) {
		// TODO Auto-generated method stub
		return SignDaoImpl.findSignByContractId(contratId);
	}

}
