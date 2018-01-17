package org.orange.carloan.letteronmag.service;

import java.util.List;

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
	public List<Object> findBranchAuditByContractId(int contratId);
}
