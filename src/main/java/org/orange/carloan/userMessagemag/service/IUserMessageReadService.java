package org.orange.carloan.userMessagemag.service;

import org.orange.carloan.beans.UserMessageBean;

/**
 * 客户基本信息查询业务方法
 * @author Administrator
 *
 */
public interface IUserMessageReadService {

	/**
	 * 根据合同id查询客户基本信息
	 * @param contratId
	 * @return
	 */
	public UserMessageBean findUserMessageByContractId(int contratId);
	
}
