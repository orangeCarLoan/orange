package org.orange.carloan.dividemag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;
@RestController
@RequestMapping("/divdea")
public class DivdeController {

	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	@Resource
	private IContractInformationWritService contractInformationWritServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findUserIdentity(String contract, String username, String identity,String state, int pageNumber, int pageSize ) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("contract", contract);
		map.put("username", username);
		map.put("identity", identity);
		int states[] = StateUtil.DIVIDE;
		if(state.equals("0")) {
			states = StateUtil.HEADAUDIT;
		}else if(state.equals("1")){
			states = StateUtil.SIGNCHECK;
		}
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, states);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.filterOutAllExcept("approvalPeriod"));
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userPhone","saleName"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity","type"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","contract","contractionDate","state","auditor","userIdentityBean","companyBean","adviceBean","userMessageBean"));
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
	@RequestMapping(value="update",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean updateAuditor(int contractId,String auditor) {
		try {
			contractInformationWritServiceImpl.updateContractAuditorById(contractId, auditor);
			return true;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
		
	}
	
	
}
