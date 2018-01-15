package org.orange.carloan.userCreditmag.service;

import org.orange.carloan.beans.UserCreditBean;

/**
 * 客户信用信息业务方法
 * @author Administrator
 *
 */
public interface IUserCreditService {

	/**
	 * 判断userCredit是否为null，
	 * 是则返回false。，
	 * 否则
	 * 根据contractInformationId查询出合同类。
	 * 然后将userCredit存入合同类的客户信用信息类。
	 * 执行update方法。
	 * 返回true
	 */
	//6
	public boolean saveUserCredit(int contractInformationId,UserCreditBean userCredit);
	
	
}
