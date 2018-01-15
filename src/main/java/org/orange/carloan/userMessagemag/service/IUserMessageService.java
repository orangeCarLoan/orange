package org.orange.carloan.userMessagemag.service;

import org.orange.carloan.beans.UserMessageBean;

/**
 * 客户基本信息业务方法
 * @author Administrator
 *
 */
public interface IUserMessageService {

	/**
	 * userMessage中需要判断联系人是否为空并且大小要大于3个，
	 * 还有基本信息附件属性也需要判断是否为空，
	 * 其中有一个为空则返回false，
	 * 然后根据contractInformationId查询出合同信息，在将userMessage放入器属性中，
	 * 在根据isSubmit判断，如果为true，这将合同信息类的状态3。否则不不改变状态
	 * 在执行合同信息类的update方法。
	 * 
	 * @param userMessage
	 */
	//12
	public boolean saveUserMessage(int contractInformationId, UserMessageBean userMessage,boolean isSubmit);
	
}
