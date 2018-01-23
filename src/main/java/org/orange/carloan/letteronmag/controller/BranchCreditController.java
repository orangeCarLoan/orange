package org.orange.carloan.letteronmag.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.orange.carloan.letteronmag.service.ILetterOnWritService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ser.impl.SimpleBeanPropertyFilter;
import com.fasterxml.jackson.databind.ser.impl.SimpleFilterProvider;

/**
 * 分公司信审controller
 * @author ASUS
 *
 */
@RequestMapping("/branch")
@RestController
public class BranchCreditController {

	@Resource
	private ILetterOnReadService letterOnReadServiceImpl;
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
		
		
		PageBean page = contractInformationReadServiceImpl.findContractInformationByMap(map, pageNumber, pageSize, StateUtil.BRANCHAUDIT);
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
	
	
	@RequestMapping(value="/findAll",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public @ResponseBody String findAll(int id) {
		
		
		ContractInformationBean bean = letterOnReadServiceImpl.findBranchAuditByContractId(id);
			
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
			sfp.addFilter("contractFilter", SimpleBeanPropertyFilter.filterOutAllExcept("isFallback","fallbackContent","userMessageBean","carMessageBeans","userCreditBean","adviceBean","userIdentityBean"));
			sfp.addFilter("userIdentityFilter", SimpleBeanPropertyFilter.filterOutAllExcept("userName","identity"));

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
	
	@RequestMapping(value="/saveBranch",method=RequestMethod.POST,produces="application/json;charset=utf-8")
    public @ResponseBody boolean saveBranchAudit(UserCreditBean userCred,AdviceBean advice,int credId,int adviceId,int[] conId,int []knowLoan,int contractId,int isSubmit){
		System.out.println(userCred);
		System.out.println(advice);
		System.out.println(credId);
		System.out.println(adviceId);
		System.out.println(isSubmit);
		System.out.println(contractId);
		for (int i = 0; i < conId.length; i++) {
			System.out.println(conId[i]);
		}
		for (int i = 0; i < knowLoan.length; i++) {
			System.out.println(knowLoan[i]);
		}
		
		userCred.setId(credId);
		advice.setId(adviceId);
		try {
			letterOnWritServiceImpl.saveBranchAudit(contractId, userCred, advice, conId, knowLoan, isSubmit);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}

	}
	
	/*@RequestMapping(value="/saveBranch",method=RequestMethod.POST)
    public @ResponseBody String saveBranchAudit(@RequestBody Map map){
             
		int id = (int)map.get("contractId");
		UserCreditBean userCredit =new UserCreditBean();//信用信息		
		userCredit.setMaxSituation(Integer.parseInt((String)map.get("maxSituation")));
		userCredit.setMaxNumber((Integer.parseInt((String)map.get("maxNumber"))));
		userCredit.setNoccLae((Integer.parseInt((String)map.get("noccLae"))));
		userCredit.setCreditCardUsageRate((String)(map.get("creditCardUsageRate")));
		userCredit.setCreditCard((Integer.parseInt((String)map.get("creditCard"))));
		userCredit.setOtherCreditLoans((Integer.parseInt((String)map.get("otherCreditLoans"))));
		AdviceBean adv = new AdviceBean();
		adv.setProductCategory((String)map.get("productCategory"));
		adv.setApprovalPeriod(Integer.parseInt((String)map.get("approvalPeriod")));
		adv.setConclusion((String)map.get("conclusion"));
		adv.setApprovalQuota(Integer.parseInt((String)map.get("approvalQuota")));
		adv.setBranchOpinion((String)map.get("firstComment"));
		
		int a[] = new int[3];
		a[0] = Integer.parseInt(map.get("id1")+"");
		a[1] = Integer.parseInt(map.get("id2")+"");
		a[2] = Integer.parseInt(map.get("id3")+"");
		
		int[] knowLoan = new int[3];
		knowLoan[0] = Integer.parseInt(map.get("knowLoan1")+"");
		knowLoan[1] = Integer.parseInt(map.get("knowLoan2")+"");
		knowLoan[2] = Integer.parseInt(map.get("knowLoan3")+"");
		
		int isSubmit =(int)map.get("isSubmit"); //回退状态
		
		letterOnWritServiceImpl.saveBranchAudit(id, userCredit, adv,a, knowLoan, isSubmit);
			
		return "redirect:http://localhost:8080/carloan/jsp/branchCompany.jsp";
	}*/
	@RequestMapping(value="/branchAudit",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public @ResponseBody boolean branchAudit(int contractId,int state,String backInfo) {
		
		letterOnWritServiceImpl.updateBranchAudit(backInfo, contractId, state);
		
		return true;
		
	}
	
}
