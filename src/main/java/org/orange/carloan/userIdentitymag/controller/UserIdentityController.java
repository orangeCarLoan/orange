package org.orange.carloan.userIdentitymag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.contractinformationmag.service.impl.ContractInformationReadServiceImpl;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonFactory.Feature;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RestController
@RequestMapping("/userIdentity")
public class UserIdentityController {

	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findUserIdentity(String contract, String username, String companyName, int pageNumber, int pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("contract", contract);
		map.put("username", username);
		map.put("companyName", companyName);
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.USER_IDENTITY);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","contract","userIdentityBean","companyBean"));
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
		return json;
	}
	
}
