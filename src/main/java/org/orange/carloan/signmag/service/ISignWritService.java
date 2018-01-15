package org.orange.carloan.signmag.service;

import org.orange.carloan.beans.SignBean;

/**
 * 签约业务方法
 * @author Administrator
 *
 */
public interface ISignWritService {

	/**签约的保存或提交方法
	 * 
	 * 首先根据contractInformationId查询出合同类，
	 * 然后将签约信息存入合同类中，
	 * 判断isSubmit，如果为1
	 * 则将合同的状态码改为8，
	 * 并将回退状态（isFallback）改为0
	 * 然后执行合同的update方法。
	 * 如果为0，直接执行合同的update方法。
	 */
	//7
	public void saveSign(int contractInformationId,SignBean sign,int isSubmit);
	
	/**签约的回退方法
	 * 
	 * 根据contractInformationId查询合同，
	 * 然后将回退信息设置为fallbackContent，
	 * 在将合同类中状态改为6
	 * 并将回退状态（isFallback）改为1
	 * 在执行update方法
	 * 
	 */
	public void deleteSign(int contractInformationId,String fallbackContent);
}
