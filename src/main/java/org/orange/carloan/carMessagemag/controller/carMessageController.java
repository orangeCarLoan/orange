package org.orange.carloan.carMessagemag.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.CarGoodsBean;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.carMessagemag.service.ICarMessageReadService;
import org.orange.carloan.carMessagemag.service.ICarMessageWritService;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
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
@RequestMapping("/carMessage")
public class carMessageController {

	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	@Resource
	private ICarMessageReadService carMessageReadService;
	@Resource
	private ICarMessageWritService carMessageWritService;
	
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
		
		String permissions = (String) map.get("permissions");
		int pers=0;
		if(permissions!=null&&permissions.matches("[\\d]")) {
			pers = Integer.parseInt(permissions);
		}
		int state[];
		if(pers==1) {
			state = StateUtil.CAR_MESSAGE_APPRAISER;
		}else if(pers==2) {
			state = StateUtil.CAR_MESSAGE_PRICING_DIVISION;
		}else {
			state = new int[StateUtil.CAR_MESSAGE_APPRAISER.length+StateUtil.CAR_MESSAGE_PRICING_DIVISION.length];
			for(int i=0; i<state.length; i++) {
				if(i<StateUtil.CAR_MESSAGE_APPRAISER.length) {
					state[i] = StateUtil.CAR_MESSAGE_APPRAISER[i];
				}else {
					state[i] = StateUtil.CAR_MESSAGE_PRICING_DIVISION[i-StateUtil.CAR_MESSAGE_APPRAISER.length];
				}
			}
		}
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, state);
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
	@RequestMapping(value="/find",method=RequestMethod.GET,produces="application/json;charset=utf-8")
	public String findCarMessage(int contratId) {
		String json = "";
		if(contratId!=0) {
			List<CarMessageBean> car = carMessageReadService.findCarMessageByContractId(contratId);
			
			ObjectMapper om = new ObjectMapper();//定义ObjectMapper转换类
			SimpleFilterProvider sfp = new SimpleFilterProvider();//定义过滤器
			
			//serializeAllExcept()里面填不要的属性，占无
			sfp.addFilter("carAdjunctFilter", SimpleBeanPropertyFilter.serializeAllExcept());
			sfp.addFilter("carGoodsFilter", SimpleBeanPropertyFilter.serializeAllExcept());
			sfp.addFilter("carMessageFilter", SimpleBeanPropertyFilter.serializeAllExcept("contractInformationBean"));
			om.setFilterProvider(sfp);
			try {
				json = om.writeValueAsString(car);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return json;
	}
	
	@RequestMapping(value = "/add", method ={RequestMethod.POST},produces="application/json;charset=utf-8")
    public boolean submitUserList_4(int contractId,int isAdd,int isSubmit,CarMessageBean cars){
        System.out.println(cars);
        List<CarGoodsBean> goodss = cars.getCarGoods();
        for (Iterator iterator = goodss.iterator(); iterator.hasNext();) {
			CarGoodsBean carGoodsBean = (CarGoodsBean) iterator.next();
			carGoodsBean.setCarMsg(cars);
		}
        //如果不是追加
        if(isAdd==0) {
        	List<CarMessageBean> list = new ArrayList<CarMessageBean>();
        	list.add(cars);
        	carMessageWritService.saveCarMessage(contractId, list, isSubmit);
        }else {
        	carMessageWritService.saveCarMessage(contractId, cars, isSubmit);
        }
		
		return true;
    }
}
