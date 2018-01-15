package org.orange.carloan.carMessagemag.service;

import org.orange.carloan.beans.CarMessageBean;

public interface ICarMessageReadService {

	/**
	 * 根据合同id查询车辆信息
	 * @param contratId
	 * @return
	 */
	public CarMessageBean findCarMessageByContractId(int contratId);
	
}
