package org.orange.carloan.carMessagemag.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.carMessagemag.mapper.CarMessageMapper;
import org.springframework.stereotype.Repository;

@Repository
public class CarMessageDaoImpl implements ICarMessageDao {
	@Resource
	public CarMessageMapper cm;

	@Override
	public CarMessageBean findCarMessageByCarMessageId(int id) {
		// TODO Auto-generated method stub
		return cm.findCarMessageByCarMessageId(id);
	}

	@Override
	public List<CarMessageBean> findCarMessageByContractId(int contratId) {
		// TODO Auto-generated method stub
		return cm.findCarMessageByContractId(contratId);
	}

}
