package org.orange.carloan.signcheckmag.service.impl;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.signcheckmag.service.ISignCheckWritService;
import org.springframework.stereotype.Service;

@Service
public class SignCheckWritServiceImpl implements ISignCheckWritService {
	
	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public boolean updateStateAndSaveCheckMsg(int contratId, int isSubmit, String AdminName) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationRepository.findOne(contratId);
		boolean flag=false;
//		if(bean.getAuditor().equals(AdminName)){
			if(isSubmit==1){
				bean.setState(9);
				bean.setCreditstatus("放款中");
				contractInformationRepository.saveAndFlush(bean);
				return flag=true;
			}else{
//				contractInformationRepository.saveAndFlush(bean);
//				return flag=true;
//			}
//		}else{
			return flag;
		}
	}

	@Override
	public boolean updateStateToBack(Integer contratId, String advice) {
		// TODO Auto-generated method stub
		boolean falg=false;
		if(advice!=null) {
			ContractInformationBean bean = contractInformationRepository.findOne(contratId);
			bean.setFallbackContent(advice);
			bean.setState(7);
			bean.setIsFallback(1);
			contractInformationRepository.saveAndFlush(bean);
			return falg=true;
		}else {
			System.out.println("错误的");
		}
		return falg;
	}

}
