package org.orange.carloan.userMessagemag.dao;

import org.orange.carloan.beans.UserMessageBean;

public interface IUserMessageDao {

	/**
	 * 根据客户基本信息id查询客户基本信息
	 * @param id
	 * @return
	 */
	public UserMessageBean findUserMessageByUserMessageId(int id);
	/**
	 * 根据合同id查询客户基本信息
	 * @param contratId
	 * @return
	 */
	public UserMessageBean findUserMessageByContractId(int contratId);
}
