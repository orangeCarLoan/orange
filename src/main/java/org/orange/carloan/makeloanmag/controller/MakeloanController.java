package org.orange.carloan.makeloanmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.makeloanmag.service.IMakeLoanWritService;
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
@RequestMapping("/makeloan")
public class MakeloanController {

	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	@Resource
	private IMakeLoanWritService makeLoanWritServiceImpl;
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
		
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.MAKELOAN);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.filterOutAllExcept("approvalQuota","approvalPeriod"));
		sfp.addFilter("signFilter", SimpleBeanPropertyFilter.filterOutAllExcept("agreedLoanDate","quota"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","contract","creditstatus","adviceBean","signBean","userIdentityBean","companyBean"));
		sfp.addFilter("pageFilter", SimpleBeanPropertyFilter.serializeAllExcept());
		//serializeAllExcept()里面填不要的属性，占无
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
	@RequestMapping(value="/makeloan",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean makeloan(int contratId) {
		try {
			makeLoanWritServiceImpl.updateState(contratId);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	@RequestMapping(value="/check",method=RequestMethod.GET)
	public String checkInfo(@RequestParam int trId) {
		System.out.println("id="+trId);
		ContractInformationBean bean = contractInformationReadServiceImpl.findContractInformationByContractId(trId);
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("userAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("userMsg"));
		sfp.addFilter("contactFilter", SimpleBeanPropertyFilter.serializeAllExcept("userMessageBean"));
		sfp.addFilter("carMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("carGoodsFilter", SimpleBeanPropertyFilter.serializeAllExcept("carMsg"));
		sfp.addFilter("carAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("carMessageBean"));
		sfp.addFilter("userCreditFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("isFallback","fallbackContent","userMessageBean","carMessageBeans","userCreditBean","adviceBean","userIdentityBean","signBean"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity","type"));
		sfp.addFilter("signFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("signAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("signBean"));

		
		om.setFilterProvider(sfp);
		
		String json = "";
		try {
			json = om.writeValueAsString(bean);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}
	
}
