package org.orange.carloan.userMessagemag.service;

import org.orange.carloan.beans.UserMessageBean;

/**
 * 客户基本信息业务方法
 * @author Administrator
 *
 */
public interface IUserMessageWritService {

	/**
	 * 根据contractInformationId查询出合同信息，在将userMessage放入合同类属性中，
	 * 在根据isSubmit判断，如果为1，
	 * 		判断合同类中的回退状态（isFallback)
	 * 		如果等于0，则将合同信息类的状态改为2。
	 * 		如果等于1，则将合同信息类的状态改为5。
	 * 		并将回退状态（isFallback）改为0
	 * 		在执行合同信息类的update方法。
	 * isSubmit如果等于0，
	 * 直接执行合同信息类的update方法。
	 * 
	 * @param userMessage
	 */
	//1
	public boolean saveUserMessage(int contractInformationId, UserMessageBean userMessage,int isSubmit);
	
	
	
	
	
	
	
	
	
	
	
//	/**
//	 * 更新并保存数据
//	 * @param umb 传入对象
//	 */
//	public void updateUserMessage(UserMessageBean umb);
//	/**
//	 * 根据ID删除数据
//	 * @param id
//	 */
//	public void deletUserMessage(int id);
//	
//	public void saveUserMessageBean(UserMessageBean umb);
}
