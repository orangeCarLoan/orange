package org.orange.carloan.carMessagemag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.carMessagemag.service.ICarMessageReadService;
import org.springframework.stereotype.Service;
@Service
public class CarMessageReadServiceImpl implements ICarMessageReadService{

	@Resource
	private ICarMessageDao carMessageDaoImpl;
	 
	@Override
	public List<CarMessageBean> findCarMessageByContractId(int contratId) {
		// TODO Auto-generated method stub
		return carMessageDaoImpl.findCarMessageByContractId(contratId);
	}

}
