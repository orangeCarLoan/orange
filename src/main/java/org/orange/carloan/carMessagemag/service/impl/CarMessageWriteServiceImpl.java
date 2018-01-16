package org.orange.carloan.carMessagemag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.carMessagemag.service.ICarMessageWritService;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.springframework.stereotype.Service;

@Service
public class CarMessageWriteServiceImpl implements ICarMessageWritService{

	@Resource
	private IContractInformationRepository contractInformationRepository;
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public boolean saveCarMessage(int contractInformationId, List<CarMessageBean> carMessage, int isSubmit) {
		// TODO Auto-generated method stub
		 ContractInformationBean bean1 = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		 
		if(bean1.getState()==0) {
			return false;
		}else {
			bean1.setCarMessageBeans(carMessage);
			if(isSubmit==1) {
				if(bean1.getIsFallback()==0||bean1.getState()==2) {
					bean1.setState(3);
					contractInformationRepository.saveAndFlush(bean1);
					return true;
				}else {
					bean1.setState(5);
					contractInformationRepository.saveAndFlush(bean1);
					return true;
				}
			}else {
				contractInformationRepository.save(bean1);
				return true;
			}
		}
		
	}

	@Override
	public boolean saveCarMessage(int contractInformationId, int[] carPrice, int isSubmit) {
		// TODO Auto-generated method stub
		
		 ContractInformationBean bean1 = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
		 List<CarMessageBean> bean = bean1.getCarMessageBeans();
		 for(int i=0;i<carPrice.length;i++){
			 bean.get(i).setCarPrice(carPrice[i]);
		 }
		 if(isSubmit==1){
			 bean1.setState(4);
			 contractInformationRepository.saveAndFlush(bean1);
			 return true;
		 }else{
			 contractInformationRepository.save(bean1);
			 return true;
		 }
	}

	@Override
	public boolean updateCarMessage(String fallbackContent, int contractInformationId) {
		// TODO Auto-generated method stub
		if(fallbackContent==null||fallbackContent==""){
			return false;
		}else{
			ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contractInformationId);
			bean.setFallbackContent(fallbackContent);
			bean.setState(2);
			bean.setIsFallback(2);
			List<CarMessageBean> list = bean.getCarMessageBeans();
			for (CarMessageBean carMessageBean : list) {
				carMessageBean.setCarPrice(0);
			}
			contractInformationRepository.saveAndFlush(bean);
			return true;
		}
		
	}

}
