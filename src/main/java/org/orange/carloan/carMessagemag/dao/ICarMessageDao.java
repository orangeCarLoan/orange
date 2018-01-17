package org.orange.carloan.carMessagemag.dao;

import java.util.List;

import org.orange.carloan.beans.CarMessageBean;

public interface ICarMessageDao {
 
	/**
	 * 根据车辆信息id查询车辆信息
	 * @param id
	 * @return
	 */
	public CarMessageBean findCarMessageByCarMessageId(int id);
	/**
	 * 根据合同id查询车辆信息
	 * @param contratId
	 * @return
	 */
	public List<CarMessageBean> findCarMessageByContractId(int contratId);
	
}
