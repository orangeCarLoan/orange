package org.orange.carloan.letteronmag.dao;

import org.orange.carloan.beans.AdviceBean;

public interface ILetterOnDao {

	/**
	 * 根据综合意见表id查询审核的综合意见信息
	 * @param id
	 * @return
	 */
	public AdviceBean findAdviceByAdviceId(int id);
	
	/**
	 * 根据合同id查询综合意见
	 * @param id
	 * @return
	 */
	public AdviceBean findAdviceByContractId(int id);
	 
}
