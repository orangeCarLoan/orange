package org.orange.carloan.userMessagemag.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.orange.carloan.beans.ContactBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.UserAdjunctBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.userMessagemag.service.IUserMessageReadService;
import org.orange.carloan.userMessagemag.service.IUserMessageWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RestController
@RequestMapping("/userMessage")
public class userMessageController {

	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	@Resource
	private IUserMessageReadService userMessageReadServiceImpl;
	@Resource
	private IUserMessageWritService userMessageWritServiceImpl;
	
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
		
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.USER_MESSAGE);
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
	
	@RequestMapping(value="/contratId",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findMessageByContractId(int contratId) throws Exception{
		
		UserMessageBean ub=userMessageReadServiceImpl.findUserMessageByContractId(contratId);
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("fallbackContent","isFallback"));
		//serializeAllExcept()里面填不要的属性，占无
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept());
		sfp.addFilter("userAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept("userMsg"));
		sfp.addFilter("contactFilter", SimpleBeanPropertyFilter.serializeAllExcept("userMessageBean"));
		om.setFilterProvider(sfp);
		String json = "";
		try {
			json = om.writeValueAsString(ub);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return json;
	}
	
	@RequestMapping(value="/add",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean addUserMessage(int contratId,int userMessageId,int contactId[],UserMessageBean user,HttpServletRequest req,
			@RequestParam("fileName")CommonsMultipartFile files[],UserAdjunctBean adjunct,int isSubmit) {
		for (CommonsMultipartFile file : files) {
			System.out.println(file.getOriginalFilename());
		}
		if(files.length>2) {
			if(!files[0].getOriginalFilename().equals("")) {
				adjunct.setIdcard(files[0].getOriginalFilename());
			}
			if(!files[1].getOriginalFilename().equals("")) {
				adjunct.setCarLoanFrom(files[1].getOriginalFilename());
			}
			if(!files[2].getOriginalFilename().equals("")) {
				adjunct.setAtherAdjunct(files[2].getOriginalFilename());
			}
		}
		user.setUserAdjunctBean(adjunct);
		user.setId(userMessageId);
		List<ContactBean> list = null;
		String[] contactNames = req.getParameterValues("contactName");
		String[] contactPhones = req.getParameterValues("contactPhone");
		String[] contactTypes = req.getParameterValues("contactType");
		String[] relations = req.getParameterValues("relation");
		String[] contactCompanys = req.getParameterValues("contactCompany");
		String[] contactAddresss = req.getParameterValues("contactAddress");
		for(int i=0; i<contactId.length; i++) {
			list = new ArrayList<ContactBean>();
			ContactBean con = new ContactBean();
			con.setId(contactId[i]);
			con.setContactAddress(contactAddresss[i]);
			con.setContactCompany(contactCompanys[i]);
			con.setContactName(contactNames[i]);
			con.setContactPhone(contactPhones[i]);
			con.setContactType(contactTypes[i]);
			con.setRelation(relations[i]);
			list.add(con);
		}
		user.setContactBean(list);
		try {
			userMessageWritServiceImpl.saveUserMessage(contratId, user, isSubmit);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	/*@RequestMapping(value="/add/adjunt")
	public boolean addUserMessage(int contratId,@RequestParam("fileName")CommonsMultipartFile files[],UserAdjunctBean adjunct,int isSubmit) {
		for (CommonsMultipartFile file : files) {
			System.out.println(file.getOriginalFilename());
		}
		if(files.length>2) {
			if(!files[0].getOriginalFilename().equals("")) {
				adjunct.setIdcard(files[0].getOriginalFilename());
			}
			if(!files[0].getOriginalFilename().equals("")) {
				adjunct.setCarLoanFrom(files[1].getOriginalFilename());
			}
			if(!files[0].getOriginalFilename().equals("")) {
				adjunct.setAtherAdjunct(files[2].getOriginalFilename());
			}
			userMessageWritServiceImpl.updateOrSaveUserAdjunt(contratId, adjunct, isSubmit);
			return true;
		}
		return true;
	}
	*/
}
