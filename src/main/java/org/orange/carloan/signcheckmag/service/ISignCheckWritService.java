package org.orange.carloan.signcheckmag.service;

import org.orange.carloan.beans.UserMessageBean;

/**
 * 签约复核
 * @author Administrator
 *
 */
public interface ISignCheckWritService {

	/**签约复核保存或提交方法
	 * 查询合同Id，
	 * 判断审核人是否与AdminName相等，
	 * 如果不相等，直接返回false
	 * 否者
	 * 判断是否提交，0则只保存信息，
	 * 1则将合同类的状态改为9,并且将放款状态改为"放款中"
	 * 然后执行update方法
	 * @param contratId
	 * @param isSubmit
	 * @param maxdeadline
	 */
	//8
	public boolean updateStateAndSaveCheckMsg(int contratId,int isSubmit,String AdminName);
	
	/**签约复核回退方法
	 * 
	 * 查询合同id
	 * 保存回退意见同时改变状态码7
	 * 并将回退状态（isFallback）改为1
	 * 然后执行update方法
	 * @param contratId
	 * @param advice
	 */
	public void updateStateToBack(int contratId,String advice);
}
