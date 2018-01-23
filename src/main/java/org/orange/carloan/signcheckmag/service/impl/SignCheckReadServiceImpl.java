package org.orange.carloan.signcheckmag.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
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
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@Override
	public List<Object> findSignCheckByContractId(int contratId) {
		// TODO Auto-generated method stub
		List<Object> list = new ArrayList<Object>();
		//查出客户签约表内所包含的信息，签约附件
		SignBean bean = signDaoImpl.findSignByContractId(contratId);
		//可以查出包含外键客户基本信息在内的客户详情。usermessage+useridentity
		UserMessageBean bean1 = userMessageDaoImpl.findUserMessageByContractId(contratId);
		List<CarMessageBean> bean2 = carMessageDaoImpl.findCarMessageByContractId(contratId);
		ContractInformationBean bean3=contractInformationDaoImpl.findContractInformationByContractId(contratId);
		list.add(bean);
		list.add(bean1);
		list.add(bean2);
		list.add(bean3);
		return list;
	}

}
