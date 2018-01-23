package org.orange.carloan.contractinformationmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RestController
@RequestMapping("/contract")
public class ContractInformationController {

	
	@Resource
	private IContractInformationWritService contractInformationWritServiceImpl;
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findUserIdentity(@RequestParam Map<String, Object> map) {
		String num = (String) map.get("pageNumber");
		String size = (String) map.get("pageSize");
		int pageNumber = 1,pageSize=5;
		if(num != null && num.matches("[\\d]")) {
			pageNumber = Integer.parseInt(num);
		}
		if(size != null && size.matches("[\\d]")) {
			pageSize = Integer.parseInt(size);
		}
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.PROGRESS);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("saleName"));
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName"));
		sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.filterOutAllExcept("approvalQuota","approvalPeriod"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","contract","state","contractionDate","auditorDate","adviceBean","userIdentityBean","companyBean","userMessageBean"));
		//serializeAllExcept()里面填不要的属性，占无
		sfp.addFilter("pageFilter", SimpleBeanPropertyFilter.serializeAllExcept());
		om.setFilterProvider(sfp);
		String json = "";
		try {
			json = om.writeValueAsString(page);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("-----------------------------------");
		return json;
	}
	
	
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
