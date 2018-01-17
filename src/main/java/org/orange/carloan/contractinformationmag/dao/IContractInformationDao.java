package org.orange.carloan.contractinformationmag.dao;

import java.util.List;
import java.util.Map;

import org.orange.carloan.beans.ContractInformationBean;

public interface IContractInformationDao {
	 
	/**
	 * 根据条件返回有多少行数据
	 * @param map
	 * @return
	 */
	public int findContractInformationSizeByMap(Map<String,Object> map);
	/**
	 * 根据条件返回合同
	 * @param map
	 * @param page
	 * @param state
	 * @return
	 */
	public List<ContractInformationBean> findContractInformationByMap(Map<String,Object> map);
	/**
	 * 根据合同id查询合同中所有信息
	 * @param contratId
	 * @return
	 */
	public ContractInformationBean findContractInformationByContractId(int contratId);
	
	
}
