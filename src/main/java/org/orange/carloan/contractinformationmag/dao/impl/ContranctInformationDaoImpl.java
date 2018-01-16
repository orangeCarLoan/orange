package org.orange.carloan.contractinformationmag.dao.impl;

import java.util.List;
import java.util.Map;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.mapper.ContractInformationMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ContranctInformationDaoImpl implements IContractInformationDao {
	
	private ContractInformationMapper contranctInformationMapper;
	
	@Override
	public int findContractInformationSizeByMap(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return contranctInformationMapper.findContractInformationSizeByMap(map);
	}

	@Override
	public List<ContractInformationBean> findContractInformationByMap(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return contranctInformationMapper.findContractInformationByMap(map);
	}

	@Override
	public ContractInformationBean findContractInformationByContractId(int contratId) {
		// TODO Auto-generated method stub
		return contranctInformationMapper.findContractInformationByContractId(contratId);
	}

}
