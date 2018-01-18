package org.orange.carloan.signcheckmag.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.signcheckmag.service.ISignCheckReadService;
import org.orange.carloan.signmag.dao.ISignDao;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.springframework.stereotype.Service;

@Service
public class SignCheckReadServiceImpl implements ISignCheckReadService{

	@Resource
	private ISignDao signDaoImpl;
	@Resource
	private IUserMessageDao userMessageDaoImpl;
	@Resource
	private ICarMessageDao carMessageDaoImpl;
	@Override
	public List<Object> findSignCheckByContractId(int contratId) {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<Object>();
		SignBean bean = signDaoImpl.findSignByContractId(contratId);
		UserMessageBean bean1 = userMessageDaoImpl.findUserMessageByContractId(contratId);
		List<CarMessageBean> bean2 = carMessageDaoImpl.findCarMessageByContractId(contratId);
		list.add(bean);
		list.add(bean1);
		list.add(bean2);
		return list;
	}

}
