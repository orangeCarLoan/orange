package org.orange.carloan.userCreditmag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.userCreditmag.service.IUserCreditWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RequestMapping("/userCredit")
@Controller
public class UserCreditController {

	
	@Resource
	private IUserCreditWritService userCreditWritService;
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public @ResponseBody String findUserIdentity(String contract, String username, String identity,String state, int pageNumber, int pageSize ) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("contract", contract);
		map.put("username", username);
		map.put("identity", identity);
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, 	StateUtil.USER_CREDIT);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("saleName"));
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
	
	
	
	/**
	 * 根据合同id查询用户信用信息
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/{id}",method= {RequestMethod.GET},produces= {"application/json;charset=utf-8"})	
	public @ResponseBody String findUserCredByContractId(@PathVariable("id")int id) {
		UserCreditBean userCreditBean=userCreditWritService.findUserCredByContractId(id);
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("userCreditFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
		om.setFilterProvider(sfp);
		String json = "";
		try {
			json = om.writeValueAsString(userCreditBean);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}
	
	
	@RequestMapping(value="/{id}/{isSubmit}",method= {RequestMethod.POST},produces= {"application/json;charset=utf-8"})
	public @ResponseBody String saveUserCredit(int contractId,UserCreditBean userCredit,@PathVariable("isSubmit")int isSubmit) {
		//此处的数值“int uid=2”是车贷录入页面中，点击“申请信息录入”按钮获取的合同id可以用隐藏input储存id值，再用ajax传过来
		userCreditWritService.saveUserCredit(contractId, userCredit, isSubmit);
		return "true";
	}
}
