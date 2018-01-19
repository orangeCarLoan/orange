package org.orange.carloan.signmag.controller;

import javax.annotation.Resource;

import org.orange.carloan.beans.SignBean;
import org.orange.carloan.signmag.service.ISignReadService;
import org.orange.carloan.signmag.service.ISignWritService;
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
	
	@RequestMapping(value="/find",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findSign(int contractId) {
		String json = "";
		if(contractId!=0) {
			SignBean sign = signReadServiceImpl.findSignByContractId(contractId);
			
			ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
			SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
			
			//serializeAllExcept()里面填不要的属性，占无
			sfp.addFilter("signFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
			sfp.addFilter("signAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept());
			om.setFilterProvider(sfp);
			try {
				json = om.writeValueAsString(sign);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return json;
	}
	@RequestMapping(value="/save",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public String saveSign(int contractId,int isSubmit,SignBean sign,@RequestParam("fileName")CommonsMultipartFile[] files) {
		if(contractId!=0&&(isSubmit==0||isSubmit==1)) {
			signWritServiceImpl.saveSign(contractId, sign, isSubmit);
		
			for (CommonsMultipartFile file : files) {
				System.out.println(file.getOriginalFilename());
			}
		}
		return null;
	}
	
}
