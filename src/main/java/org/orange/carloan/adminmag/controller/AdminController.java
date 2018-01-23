package org.orange.carloan.adminmag.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.adminmag.service.IAdminReadService;
import org.orange.carloan.adminmag.service.IAdminWritService;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@Resource
	private IAdminWritService adminWritServiceImpl;
	
	@RequestMapping(method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findAdmin(String companyName,String roleName, int pageNumber, int pageSize ) {
		Map map = new HashMap();
		map.put("rolename", roleName);
		map.put("companyName", companyName);
		PageBean page = adminReadServiceImpl.findAdminByMap(map, pageNumber, pageSize);
		
		ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
		SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
		System.out.println(((AdminBean)(page.getRows().get(0))).getRealName());
		//只序列化括号内的属性。goods为@JsonFilter(value="xxx")设置的xxx
		sfp.addFilter("roleFilter", SimpleBeanPropertyFilter.filterOutAllExcept("roleName"));
		sfp.addFilter("companyFilter", SimpleBeanPropertyFilter.filterOutAllExcept("name"));
		//serializeAllExcept()里面填不要的属性，占无
		sfp.addFilter("adminFilter", SimpleBeanPropertyFilter.serializeAllExcept("contracts","logs"));
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
	
	@RequestMapping("/addOrUpage")//
	public boolean addAdmin(AdminBean admin,int company,int role) {
		System.out.println(admin);
		System.out.println(company);
		System.out.println(role);
		adminWritServiceImpl.saveOrUpdateAdmin(admin, company, role);
		return true;
	}
	@RequestMapping("/delete")//
	public boolean deleteAdmin(int adminId) {
		adminWritServiceImpl.deleteAdmin(adminId);
		return true;
	}
	
	@RequestMapping("/audit")//审核人
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
