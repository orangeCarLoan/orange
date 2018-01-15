package org.orange.carloan.signmag.service;

import org.orange.carloan.beans.SignBean;

/**
 * 签约业务方法
 * @author Administrator
 *
 */
public interface ISignReadService {

	/**
	 * 根据合同id查询签约信息
	 * @param contratId
	 * @return
	 */
	public SignBean findSignByContractId(int contratId);
	
}
