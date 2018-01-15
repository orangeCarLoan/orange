package org.orange.carloan.signmag.service;

import org.orange.carloan.beans.SignBean;

/**
 * 签约业务方法
 * @author Administrator
 *
 */
public interface ISignService {

	/**签约的保存或提交方法
	 * 
	 * sign为签约表的信息，如果是提交则，需要验证该签约中的签约附件不能为空。
	 * 
	 * 首先根据contractInformationId查询出合同类，
	 * 然后将签约信息存入合同类中，
	 * 如果是提交，则修改状态
	 * 
	 * 然后执行合同的update方法。
	 */
	public void saveSign(int contractInformationId,SignBean sign,int isSubmit);
	
	
}
