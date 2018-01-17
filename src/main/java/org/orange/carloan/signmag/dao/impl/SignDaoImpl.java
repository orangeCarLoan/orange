package org.orange.carloan.signmag.dao.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.SignBean;
import org.orange.carloan.signmag.dao.ISignDao;
import org.orange.carloan.signmag.mapper.SignMapper;
import org.springframework.stereotype.Repository;

@Repository
public class SignDaoImpl implements ISignDao {

	@Resource
	private SignMapper mapper;
	 
	@Override
	public SignBean findSignBySignId(int id) {
		// TODO Auto-generated method stub
		return mapper.findSignBySignId(id);
	}

	@Override
	public SignBean findSignByContractId(int contratId) {
		// TODO Auto-generated method stub
		return mapper.findSignByContractId(contratId);
	}

}
