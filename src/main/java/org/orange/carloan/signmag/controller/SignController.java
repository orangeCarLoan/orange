package org.orange.carloan.signmag.controller;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.SignAdjunctBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.signmag.service.ISignReadService;
import org.orange.carloan.signmag.service.ISignWritService;
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
@RequestMapping("/sign")
public class SignController {

	@Resource
	private ISignReadService signReadServiceImpl;
	@Resource
	private ISignWritService signWritServiceImpl;
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findUserIdentity(String contract, String username, String companyName, int pageNumber, int pageSize) {
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("contract", contract);
		map.put("username", username);
		map.put("companyName", companyName);
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.SIGN);
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("saleName"));
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity"));
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
		return json;
	}
	
	
	@RequestMapping(value="/find",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findSign(int contractId) {
		String json = "";
		if(contractId!=0) {
			ContractInformationBean bean = contractInformationReadServiceImpl.findContractInformationByContractId(contractId);
			
			ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
			SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
			
			sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("contract","userIdentityBean","userMessageBean","signBean","adviceBean"));
			sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity","type"));
			sfp.addFilter("userMessageFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userPhone","saleName","borrowPurpose","duty"));
			sfp.addFilter("adviceFilter", SimpleBeanPropertyFilter.filterOutAllExcept("approvalPeriod","approvalQuota","approvalPeriod"));
			//serializeAllExcept()里面填不要的属性，占无
			sfp.addFilter("signFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
			sfp.addFilter("signAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept());
			
			om.setFilterProvider(sfp);
			try {
				json = om.writeValueAsString(bean);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return json;
	}
	@RequestMapping(value="/save",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public boolean saveSign(int contractId,int isSubmit,int signId,int signAdjunctId,SignBean sign,@RequestParam("fileName")CommonsMultipartFile[] files,SignAdjunctBean signAdjunct) {
		if(contractId!=0&&(isSubmit==0||isSubmit==1)) {
			for(int i=0; i<files.length; i++) {
				if(!files[i].getOriginalFilename().equals("")) {
					if(i==0)
						signAdjunct.setBankCard(files[i].getOriginalFilename());
					if(i==1)
						signAdjunct.setApplicationForm(files[i].getOriginalFilename());
					if(i==2)
						signAdjunct.setLoanContract(files[i].getOriginalFilename());
					if(i==3)
						signAdjunct.setCutAuthorization(files[i].getOriginalFilename());
					if(i==4)
						signAdjunct.setAuthorization(files[i].getOriginalFilename());
					if(i==5)
						signAdjunct.setRefundList(files[i].getOriginalFilename());
					if(i==6)
						signAdjunct.setReplenishDeal(files[i].getOriginalFilename());
					if(i==7)
						signAdjunct.setCarContract(files[i].getOriginalFilename());
					if(i==8)
						signAdjunct.setCarAuthorization(files[i].getOriginalFilename());
					if(i==9)
						signAdjunct.setCarPhoto(files[i].getOriginalFilename());
					if(i==10)
						signAdjunct.setStoragePhoto(files[i].getOriginalFilename());
				}
			}
			sign.setId(signId);
			signAdjunct.setId(signAdjunctId);
			sign.setSignAdjunctBean(signAdjunct);
			try {
				System.out.println(sign);
				signWritServiceImpl.saveSign(contractId, sign, isSubmit);
				return true;
			} catch (Exception e) {
				e.printStackTrace();
				return false;
			}
		}
		return false;
	}
	
}
