package org.orange.carloan.letteronmag.service;

import org.orange.carloan.beans.ContractInformationBean;

/**
 * 分公司信审管理
 * @author Administrator
 *
 */
public interface ILetterOnReadService {
 
	/**
	 * 根据合同id查询分公司所需要的信息
	 * @param contratId
	 * @return
	 */
	public ContractInformationBean findBranchAuditByContractId(int contratId);
}
