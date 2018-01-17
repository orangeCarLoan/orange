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
		/**根据状态查询不同界面的合同信息
		 * 分公司和总公司审核需要根据审核人姓名查询
		 * 
		 * @param map 根据状态传入的可选参数
		 * contract（合同编号）、username（借款人）、companyName（分公司）
		 * identity（身份证号）、creditStatus （放款状态）、type（产品类型）
		 * reviewDate（复审日期）、loanStratDate（放款开始时间）loanEndDate（放款结束时间）
		 * paymentStratDate（还款开始时间）、paymentEndDate（还款结束时间）
		 * intoStratDate（进件开始时间）、intoEndDate（进件结束时间）
		 * index,size
		 * @param page对象中需要有当前要查询的页码和要查询多少条数据
		 * @param state 状态，从StateUtil类中可获取你需要查询的状态
		 * @return
		 */
		Map<String, Object> mapp = new HashMap<String,Object>();
		//先添加公共的查询
		mapp.put("index", (page-1)*size); 
		System.out.println((page-1)*size+"++++++++++++++++++++++++++++++++");
		mapp.put("size", size);
		//如果不是客户身份信息界面、车贷进度查看，就需要根据状态查询
		if(state!=StateUtil.USER_IDENTITY&&state!=StateUtil.PROGRESS) {
			mapp.put("state", state);
		}
		if(map != null) {
			mapp.put("contract", map.get("contract"));
			mapp.put("username", map.get("username"));
			
			//如果是审核分单界面就添加客户身份查询、否则添加分公司查询
			if(state==StateUtil.DIVIDE) {
				mapp.put("identity", map.get("identity"));
			}else {
				mapp.put("companyName", map.get("companyName"));
			}
			//如果是车贷进度查询界面，则添加如下查询
			if(state==StateUtil.PROGRESS) {
				mapp.put("reviewDate", map.get("reviewDate"));
				mapp.put("type", map.get("type"));
				mapp.put("companyName", map.get("companyName"));
				mapp.put("loanStratDate", map.get("loanStratDate"));
				mapp.put("loanEndDate", map.get("loanEndDate"));
				mapp.put("intoStratDate", map.get("intoStratDate"));
				//还款时间待定
			}
			if(state==StateUtil.MAKELOAN) {
				mapp.put("identity", map.get("identity"));
				mapp.put("type", map.get("type"));
				mapp.put("creditStatus", map.get("creditStatus"));
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
		return contractInformationDaoImpl.findContractInformationByContractId(contratId);
	}

}
