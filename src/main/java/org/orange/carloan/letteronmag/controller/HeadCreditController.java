package org.orange.carloan.letteronmag.controller;
import java.io.IOException;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.letteronmag.service.ILetterOnWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RequestMapping("/head")
@RestController
public class HeadCreditController {

	@Resource
	private ILetterOnWritService letterOnWritServiceImpl;
	
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(value="/main",method=RequestMethod.GET,produces="application/json;charset=utf-8")
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
		//需要验证是不是超级管理员，如果是，则不添加adminName，否者，添加每个管理员的name
		/*if() {
			map.put("adminName", "");
		}*/
		
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.HEADAUDIT);
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
	
	
	@RequestMapping(value="/saveHead",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	 public @ResponseBody boolean saveBranchAudit(AdviceBean advice,int adviceId,int contractId,int isSubmit){
		//需要判断是不是超级管理员，如果是，则adminName可以为null或者"";否者传入管理员name
		/*if() {
			
		}*/
		String adminName = "";
		
		advice.setId(adviceId);
		try {
			return letterOnWritServiceImpl.updateStateAndSaveAdvice(contractId, advice, isSubmit, adminName);
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	@RequestMapping(value="/return",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public @ResponseBody boolean updateStateToBack(int contractId,String advice) {
		
		boolean bool = letterOnWritServiceImpl.updateStateToBack(contractId, advice);
		
		return bool;
	}
	
}
