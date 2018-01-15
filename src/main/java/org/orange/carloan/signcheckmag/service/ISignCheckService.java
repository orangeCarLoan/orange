package org.orange.carloan.signcheckmag.service;

import org.orange.carloan.beans.UserMessageBean;

public interface ISignCheckService {

	/**
	 * 此表只能修改用户信息表中的期数，判断输入信息是否为空，若为空则返回false
	 * 若不为空，则查询合同Id，判断是否提交，0则只保存信息，1则保存信息同时改变状态码+1
	 * @param contratId
	 * @param isSubmit
	 * @param maxdeadline
	 */
	public void updateStateAndSaveCheckMsg(int contratId,int isSubmit,UserMessageBean maxdeadline);
	
	/**
	 * 先判断回退意见是否为空，若为空则返回false，若不为空，则查询合同id
	 * 保存回退意见同时改变状态码-1
	 * @param contratId
	 * @param advice
	 */
	public void updateStateToBack(int contratId,String advice);
}
