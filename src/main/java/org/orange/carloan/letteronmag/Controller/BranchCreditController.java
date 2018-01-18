package org.orange.carloan.letteronmag.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.orange.carloan.letteronmag.service.ILetterOnWritService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 分公司信审controller
 * @author ASUS
 *
 */
@RequestMapping("/branch")
@Controller
public class BranchCreditController {

	@Resource
	private ILetterOnReadService letterOnReadServiceImpl;
	@Resource
	private ILetterOnWritService letterOnWritServiceImpl;
	
	@RequestMapping(value="/findAll",method=RequestMethod.POST,produces="application/json;charset=utf-8")
	public @ResponseBody List findAll(@RequestBody Map m) {
		
		int id = (int)m.get("id");
		List<Object> list = new ArrayList<Object>();
			list = letterOnReadServiceImpl.findBranchAuditByContractId(id);
		return list;
	}
	@RequestMapping(value="/saveBranch",method=RequestMethod.POST)
    public void saveBranchAudit(@RequestParam("map")Map map,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
             
		int id = (int)map.get("contractId");
		UserCreditBean userCredit = (UserCreditBean)map.get("userCredit");//信用信息
		AdviceBean advice =(AdviceBean)map.get("advice");//综合意见
		int[] contactIds = (int[])map.get("contactIds");
		int[] knowLoan =(int[])map.get("knowLoan");//是否知晓贷款
		int isSubmit =(int)map.get("isSubmit"); //回退状态
		
		letterOnWritServiceImpl.saveBranchAudit(id, userCredit, advice,contactIds, knowLoan, isSubmit);
				
		request.getRequestDispatcher("返回审核界面").forward(request, response);
	}
	@RequestMapping(value="/branchAudit",method=RequestMethod.POST)
	public String branchAudit(@RequestParam("map")Map map) {
		
		int id = (int)map.get("contractId");
		int state = (int)map.get("state");
		String backInfo = (String)map.get("backInfo");
		
		letterOnWritServiceImpl.updateBranchAudit(backInfo, id, state);
		
		return "redirect:http://localhost:8080/carloan/jsp/carInfo.jsp";
		
	}
	
}
