package org.orange.carloan.signcheckmag.service;

import java.util.List;

/**
 * 签约复核
 * @author Administrator
 *
 */
public interface ISignCheckReadService {
 
	/**
	 * 根据合同id查询签约复核所需要的信息
	 * @param contratId
	 * @return
	 */
	public List<Object> findSignCheckByContractId(int contratId);
}
