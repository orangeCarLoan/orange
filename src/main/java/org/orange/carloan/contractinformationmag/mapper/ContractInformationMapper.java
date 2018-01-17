package org.orange.carloan.contractinformationmag.mapper;

import java.util.List;
import java.util.Map;

import org.orange.carloan.beans.ContractInformationBean;

public interface ContractInformationMapper {
	 
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
	
	/**
	 * 根据公司id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationByCompanyId(int id);
	/**
	 * 根据客户基本信息id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationByUserMessageId(int id);
	
	/**
	 * 根据客户信息id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationByUserCreditId(int id);
	/**
	 * 根据综合意见id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationByAdviceId(int id);
	/**
	 * 根据签约表id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationBySignId(int id);
	/**
	 * 根据客户身份id查询合同
	 * @param id
	 * @return
	 */
	public ContractInformationBean findContractInformationByUserIdentityId(int id);
}
