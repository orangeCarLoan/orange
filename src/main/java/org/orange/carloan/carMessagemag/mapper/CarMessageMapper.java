package org.orange.carloan.carMessagemag.mapper;

import java.util.List;

import org.orange.carloan.beans.CarMessageBean;

public interface CarMessageMapper {
 
	public CarMessageBean findCarMessageByCarMessageId(int id);
	
	public List<CarMessageBean> findCarMessageByContractId(int contratId);

}
