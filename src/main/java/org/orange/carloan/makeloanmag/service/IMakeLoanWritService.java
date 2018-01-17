package org.orange.carloan.makeloanmag.service;

/**
 * 放款
 * @author Administrator
 *
 */
public interface IMakeLoanWritService {
 
	/**
	 * 点击提交放款时，查询合同Id，并将放款状态改为“已放款”
	 * @param contratId
	 */
	//9
	public void updateState(int contratId);
}
