package org.orange.carloan.letteronmag.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.letteronmag.dao.ILetterOnDao;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.springframework.stereotype.Service;
@Service
public class LetterOnReadServiceImpl implements ILetterOnReadService{
    @Resource
	private ILetterOnDao letter;
    @Resource
	private IUserMessageDao userMessage;
    @Resource
	private ICarMessageDao carMessage;
    @Resource
	private IUserCreditDao userCredit;
	
	
	@Override
	public List<Object> findBranchAuditByContractId(int contratId) {
		
		AdviceBean advice = letter.findAdviceByAdviceId(contratId);
		UserMessageBean userMessage1 = userMessage.findUserMessageByContractId(contratId);
		List<CarMessageBean> list = carMessage.findCarMessageByContractId(contratId);
		UserCreditBean usercredit = userCredit.findUserCredByUserCredId(contratId);
		List<Object> list1 = new ArrayList<Object>();
		list1.add(advice);
		list1.add(userMessage1);
		list1.add(usercredit);
		list1.add(list);
		return list1;
	}

	
}
