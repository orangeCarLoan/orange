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
    private IContractInformationRepository contractInfoRepository;
	@Resource
	private UserCreditRepository userCredit;
	@Override
	public void saveBranchAudit(int contractInformationId, UserCreditBean userCredit, AdviceBean advice,int[] contactIds, int[] knowLoan,
			int isSubmit) {
		ContractInformationBean contract1 = contractInfoRepository.findOne(contractInformationId);
		contract1.setUserCreditBean(userCredit);
		contract1.setAdviceBean(advice);
		UserMessageBean user = contract1.getUserMessageBean();
		List<ContactBean> list = user.getContactBean();
		for (int i = 0; i < list.size(); i++) {
			ContactBean con = list.get(i);
			for(int j=0;j<contactIds.length;j++) {
				if(con.getId()==contactIds[j]) {
					con.setKnowLoan(knowLoan[j]);
				}
			}
		}
		if(isSubmit==1) {
			contract1.setState(6);
			contract1.setIsFallback(0);
		}
		contractInfoRepository.saveAndFlush(contract1);
	}
	@Override
	public void updateBranchAudit(String fallbackContent, int contractInformationId, int state) {
		ContractInformationBean contract1 = contractInfoRepository.findOne(contractInformationId);
		if(state==0) {
			contract1.setState(1);
		}else if(state==1) {
			contract1.setState(2);
		}
		contract1.setFallbackContent(fallbackContent);
		contract1.setIsFallback(1);
		contractInfoRepository.saveAndFlush(contract1);
	}
	@Override
	public boolean updateStateAndSaveAdvice(int contratId, AdviceBean bean, int isSubmit, String AdminName) {
		ContractInformationBean contract1 = contractInfoRepository.findOne(contratId);
		contract1.setAdviceBean(bean);
		if(AdminName==null||AdminName.equals("")||contract1.getAuditor().equals(AdminName)) {
			if(isSubmit==1) {
				if(contract1.getIsFallback()==1) {
					contract1.setIsFallback(0);
				}
				contract1.setState(7);
			}
			contractInfoRepository.saveAndFlush(contract1);
			return true;
		}else {
			return false;
		}
	}
	@Override
	public boolean updateStateToBack(int contratId, String advice) {
		if(advice.length()==0) {
			return false;
		}else {
			ContractInformationBean contract1 = contractInfoRepository.findOne(contratId);
			contract1.setState(5);
			contract1.setFallbackContent(advice);
			contract1.setIsFallback(1);
			contractInfoRepository.saveAndFlush(contract1);
		}
		return true;
	}
	
	
		
	

}
