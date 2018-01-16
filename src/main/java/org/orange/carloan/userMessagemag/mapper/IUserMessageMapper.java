package org.orange.carloan.userMessagemag.mapper;

import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.orange.carloan.beans.UserMessageBean;

public interface IUserMessageMapper {

	/**
	 * 根据客户基本信息id查询客户基本信息，传入一方ID
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
