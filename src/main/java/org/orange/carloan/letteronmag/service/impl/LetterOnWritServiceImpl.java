package org.orange.carloan.letteronmag.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.ContactBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.letteronmag.service.ILetterOnWritService;
import org.orange.carloan.userCreditmag.repository.UserCreditRepository;
import org.springframework.stereotype.Service;
@Service
public class LetterOnWritServiceImpl implements ILetterOnWritService{
    @Resource
	private IContractInformationDao contractInfo;
    @Resource
    IContractInformationRepository contractInfoRepository;
	@Resource
	private UserCreditRepository userCredit;
	@Override
	public void saveBranchAudit(int contractInformationId, UserCreditBean userCredit, AdviceBean advice, int[] knowLoan,
			int isSubmit) {
		ContractInformationBean contract1 = contractInfo.findContractInformationByContractId(contractInformationId);
		contract1.setUserCreditBean(userCredit);
		contract1.setAdviceBean(advice);
		UserMessageBean user = contract1.getUserMessageBean();
		List<ContactBean> list = user.getContactBean();
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setKnowLoan(knowLoan[i]);
		}
		if(isSubmit==1) {
			contract1.setState(6);
			contract1.setIsFallback(0);
		}
		contractInfoRepository.save(contract1);
		
	}
	@Override
	public void updateBranchAudit(String fallbackContent, int contractInformationId, int state) {
		ContractInformationBean contract1 = contractInfo.findContractInformationByContractId(contractInformationId);
		if(state==0) {
			contract1.setState(1);
		}else if(state==1) {
			contract1.setState(2);
		}
		contract1.setFallbackContent(fallbackContent);
		contract1.setIsFallback(1);
		contractInfoRepository.save(contract1);
	}
	@Override
	public boolean updateStateAndSaveAdvice(int contratId, AdviceBean bean, int isSubmit, String AdminName) {
		ContractInformationBean contract1 = contractInfo.findContractInformationByContractId(contratId);
		contract1.setAdviceBean(bean);
		if(contract1.getAuditor().equals(AdminName)) {
			if(contract1.getState()==1) {
				contract1.setState(7);
				contract1.setIsFallback(0);
			}
		}else {
			return false;
		}
		    contractInfoRepository.save(contract1);
		             return false;
	}
	@Override
	public boolean updateStateToBack(int contratId, String advice) {
		if(advice.length()==0) {
			return false;
		}else {
		ContractInformationBean contract1 = contractInfo.findContractInformationByContractId(contratId);
		contract1.setState(5);
		contract1.setFallbackContent(advice);
		contract1.setIsFallback(1);
		contractInfoRepository.save(contract1);
		}
		return false;
	}
	
		
	

}
