package org.orange.carloan.contractinformationmag.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.utils.StateUtil;
import org.springframework.stereotype.Service;

@Service
public class ContractInformationReadServiceImpl implements IContractInformationReadService {

	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	
	@Override
	public PageBean findContractInformationByMap(Map<String, Object> map, int page,int size, int[] state) {

		Map<String, Object> mapp = new HashMap<String,Object>();
		//先添加公共的查询
		mapp.put("index", (page-1)*size); 
		mapp.put("size", size);
		//如果不是客户身份信息界面、车贷进度查看，就需要根据状态查询
		if(state!=StateUtil.PROGRESS) {
			mapp.put("state", state);
		}
		if(map != null) {
			if(map.get("contract")!=null && !map.get("contract").equals(""))
				mapp.put("contract", map.get("contract"));
			if(map.get("username")!=null && !map.get("username").equals(""))
				mapp.put("username", map.get("username"));
			
			//如果是审核分单界面就添加客户身份查询、否则添加分公司查询
			if(state==StateUtil.DIVIDE) {
				if(map.get("identity")!=null && !map.get("identity").equals(""))
					mapp.put("identity", map.get("identity"));
			}else {
				if(map.get("companyName")!=null && !map.get("companyName").equals(""))
					mapp.put("companyName", map.get("companyName"));
			}
			//如果是车贷进度查询界面，则添加如下查询
			if(state==StateUtil.PROGRESS) {
				if(map.get("reviewDate")!=null && !map.get("reviewDate").equals(""))
					mapp.put("reviewDate", map.get("reviewDate"));
				if(map.get("type")!=null && !map.get("type").equals(""))
					mapp.put("type", map.get("type"));
				if(map.get("companyName")!=null && !map.get("companyName").equals(""))
					mapp.put("companyName", map.get("companyName"));
				if(map.get("loanStratDate")!=null && !map.get("loanStratDate").equals(""))
					mapp.put("loanStratDate", map.get("loanStratDate"));
				if(map.get("loanEndDate")!=null && !map.get("loanEndDate").equals(""))
					mapp.put("loanEndDate", map.get("loanEndDate"));
				if(map.get("intoStratDate")!=null && !map.get("intoStratDate").equals(""))
					mapp.put("intoStratDate", map.get("intoStratDate"));
				//还款时间待定
			}
			if(state==StateUtil.MAKELOAN) {
				if(map.get("identity")!=null && !map.get("identity").equals(""))
					mapp.put("identity", map.get("identity"));
				if(map.get("type")!=null && !map.get("type").equals(""))
					mapp.put("type", map.get("type"));
				if(map.get("creditStatus")!=null && !map.get("creditStatus").equals(""))
					mapp.put("creditStatus", map.get("creditStatus"));
			}
			if(state==StateUtil.HEADAUDIT||state==StateUtil.SIGNCHECK) {
				if(map.get("adminName")!=null && !map.get("adminName").equals(""))
					mapp.put("adminName", map.get("adminName"));
			}
		}
		
		int total = contractInformationDaoImpl.findContractInformationSizeByMap(mapp);
		List<ContractInformationBean> list = contractInformationDaoImpl.findContractInformationByMap(mapp);
		
		PageBean pageBean = new PageBean();
		pageBean.setRows(list);
		pageBean.setTotal(total);
		
		return pageBean;
	}

	@Override
	public ContractInformationBean findContractInformationByContractId(int contratId) {
		// TODO Auto-generated method stub
		ContractInformationBean bean = contractInformationDaoImpl.findContractInformationByContractId(contratId);
		System.err.println(bean.getCompanyBean().getName());
		return bean;
	}

}
