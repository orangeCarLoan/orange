package org.orange.carloan.signmag.mapper;

import org.orange.carloan.beans.SignBean;

public interface SignMapper {

	/**
	 * 根据签约信息id查询签约信息
	 * @param id
	 * @return
	 */
	public SignBean findSignBySignId(int id);
	/**
	 * 根据合同id查询签约信息
	 * @param contratId
	 * @return
	 */
	public SignBean findSignByContractId(int contratId);
}
