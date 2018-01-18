package org.orange.carloan.contractinformationmag.controller;

import javax.annotation.Resource;

import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/contract")
public class ContractInformationController {

	
	@Resource
	private IContractInformationWritService contractInformationWritServiceImpl;
	
	@RequestMapping(value="/delete",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean deleteContract(int contractId) {
		try {
			contractInformationWritServiceImpl.deleteContractInformation(contractId);
			return true;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return true;
		}

	}
	
}
