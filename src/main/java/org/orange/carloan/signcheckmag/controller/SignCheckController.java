package org.orange.carloan.signcheckmag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.repository.IContractInformationRepository;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.orange.carloan.signcheckmag.service.ISignCheckReadService;
import org.orange.carloan.signcheckmag.service.ISignCheckWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RestController
@RequestMapping("/signCheck")
public class SignCheckController {

	@Resource
	private ISignCheckWritService signCheckWritServiceImpl;
	
	@Resource	
	private ISignCheckReadService signCheckReadServiceImpl;
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findUserIdentity(String contract, String username, String identity,String state, int pageNumber, int pageSize ) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("contract", contract);
		map.put("username", username);
		map.put("identity", identity);
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.SIGNCHECK);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("saleName"));
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName"));
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","contract","userIdentityBean","companyBean","userMessageBean"));
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
	//查看所有信息
	@RequestMapping(value="/contratId",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findMessageByContractId(int contratId) throws Exception{
		
		ContractInformationBean contract=contractInformationReadServiceImpl.findContractInformationByContractId(contratId);
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("contract","userMessageBean","carMessageBeans","adviceBean","userIdentityBean","companyBean","signBean"));
		//serializeAllExcept()里面填不要的属性，占无
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean","contactBean"));
		sfp.addFilter("userAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept());
		sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.serializeAllExcept("admins","contracts"));
		sfp.addFilter("signFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		sfp.addFilter("signAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("signBean"));
		sfp.addFilter("carMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept("carGoods","contractInformationBean"));
		sfp.addFilter("carAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("carMessageBean"));
		
		om.setFilterProvider(sfp);
		String json = "";
		try {
			json = om.writeValueAsString(contract);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return json;
	}
	@RequestMapping(value="/updateSign",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean updataSignCheck(int contratId) {
		System.out.println(contratId);
		return signCheckWritServiceImpl.updateStateAndSaveCheckMsg(contratId, 1, "aaaaaaaaaa");
		
		
	}
	
	@RequestMapping(value="/updateState",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean updateStateCheck(Integer contratId,String advice) {
		System.out.println(contratId);
		System.out.println("消息是："+advice);
		
			return signCheckWritServiceImpl.updateStateToBack(contratId, advice);
		
		
	}
	
	
	
}
