package org.orange.carloan.adminmag.controller;

import java.util.List;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.service.IAdminReadService;
import org.orange.carloan.beans.AdminBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

@RestController
@RequestMapping("/admin")
public class AdminController {

	@Resource
	private IAdminReadService adminReadServiceImpl;
	
	@RequestMapping("/audit")
	public String findAdminByAudit() {
		List<AdminBean> list = adminReadServiceImpl.findAdminByRoleName("audit");
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("adminFilter", SimpleBeanPropertyFilter.filterOutAllExcept("id","userName"));
		om.setFilterProvider(sfp);
		String json = "";
		try {
			json = om.writeValueAsString(list);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}

	
}
