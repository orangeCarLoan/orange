package org.orange.carloan.carMessagemag.service.impl;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarGoodsBean;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.carMessagemag.repository.ICarGoodsRepository;
import org.orange.carloan.carMessagemag.repository.ICarMessageRepository;
import org.orange.carloan.carMessagemag.service.ICarMessageWritService;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.springframework.stereotype.Service;

@Service
public class CarMessageWritServiceImpl implements ICarMessageWritService{

	@Resource
	private IContractInformationRepository contractInformationRepository;
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@Resource
	private ICarMessageRepository iCarMessageRepository;
	@Resource
	private ICarGoodsRepository iCarGoodsRepository;
	
	
	@Override
	public boolean saveCarMessage(int contractInformationId, List<CarMessageBean> carMessage, int isSubmit) {
		// TODO Auto-generated method stub
		 ContractInformationBean bean1 = contractInformationRepository.findOne(contractInformationId);
		 for (Iterator iterator = carMessage.iterator(); iterator.hasNext();) {
			CarMessageBean carMessageBean = (CarMessageBean) iterator.next();
			carMessageBean.setContractInformationBean(bean1);
		}
		if(bean1.getState()==0) {
			return false;
		}
		bean1.setCarMessageBeans(carMessage);
		if(isSubmit==1) {
			if(bean1.getIsFallback()==0||bean1.getIsFallback()==2) {
				bean1.setState(3);
			}else {
				bean1.setState(5);
			}
			bean1.setIsFallback(0);
		}
		contractInformationRepository.saveAndFlush(bean1);
		return true;
	}

	public boolean saveCarMessage(int contractInformationId, CarMessageBean carMessage, int isSubmit) {
		ContractInformationBean bean1 = contractInformationRepository.findOne(contractInformationId);
		if(isSubmit==1) {
			if(bean1.getIsFallback()==0||bean1.getIsFallback()==2) {
				bean1.setState(3);
			}else {
				bean1.setState(5);
			}
			bean1.setIsFallback(0);
		}
		bean1.getCarMessageBeans().add(carMessage);
		contractInformationRepository.saveAndFlush(bean1);
		/*carMessage.setContractInformationBean(bean1);
		List<CarGoodsBean> goodss = carMessage.getCarGoods();
		carMessage.setCarGoods(null);
		iCarMessageRepository.saveAndFlush(carMessage);
		for (Iterator iterator = goodss.iterator(); iterator.hasNext();) {
			CarGoodsBean carGoodsBean = (CarGoodsBean) iterator.next();
			iCarGoodsRepository.saveAndFlush(carGoodsBean);
		}*/
		
		
		return true;
	}
	
	
	@Override
	public boolean saveCarMessage(int contractInformationId, int carMessageIds[],int[] carPrice, int isSubmit) {
		// TODO Auto-generated method stub
		
		 ContractInformationBean bean1 = contractInformationRepository.findOne(contractInformationId);
		 List<CarMessageBean> bean = bean1.getCarMessageBeans();
		 boolean bool = false;
		 for (int i = 0; i < bean.size(); i++) {
			CarMessageBean carMessage = bean.get(i);
			boolean boo = false;
			for (int j = 0; j < carMessageIds.length; j++) {
				if(carMessage.getId()==carMessageIds[j]) {
					carMessage.setCarPrice(carPrice[j]);
					boo = true;
					break;
				}
			}
			if(!boo) {
				bool = true;
			}
		 }
		 if(isSubmit==1) {
			 if(bool) {
				 return false;
			 }
			 bean1.setState(4);
		 }
		 contractInformationRepository.saveAndFlush(bean1);
		 return true;
	}

	@Override
	public boolean updateCarMessage(String fallbackContent, int contractInformationId) {
		// TODO Auto-generated method stub
		if(fallbackContent==null||fallbackContent==""){
			return false;
		}else{
			ContractInformationBean bean = contractInformationRepository.findOne(contractInformationId);
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
