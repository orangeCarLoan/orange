package org.orange.carloan.contractinformationmag.service;

import java.util.Map;

import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.PageBean;

/**
 * 合同的查询方法
 * @author Administrator
 *
 */
public interface IContractInformationReadService {

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
	public PageBean findContractInformationByMap(Map<String,Object> map,PageBean page,int state);
//	/**身份证读取界面查询
//	 * 
//	 * @param contract（合同编号）
//	 * @param username（借款人）
//	 * @param companyName（分公司）
//	 * @param page page对象中需要有当前要查询的页码和要查询多少条数据
//	 * @param state 状态
//	 * @return
//	 */
//	public PageBean findContractInformationToIdentity(String contract,String username,String companyName,PageBean page);
//	/**客户基本信息、车辆信息(评估师和定价师)、客户信用信息、分公司签约、签约复审
//	 * 界面查询
//	 * 
//	 * @param contract（合同编号）
//	 * @param username（借款人）
//	 * @param companyName（分公司）
//	 * @param page page对象中需要有当前要查询的页码和要查询多少条数据
//	 * @param state 状态
//	 * @return
//	 */
//	public PageBean findContractInformationByOrdinary(String contract,String username,String companyName,PageBean page,int state);
//	
//	/**分公司和总公司信审查询方法
//	 * 
//	 * @param auditor 审核人姓名
//	 * @param contract（合同编号）
//	 * @param username（借款人）
//	 * @param companyName（分公司）
//	 * @param page page对象中需要有当前要查询的页码和要查询多少条数据
//	 * @param state 状态
//	 * @return
//	 */
//	public PageBean findContractInformationByLetterOn(String auditor,String contract,String username,String companyName,PageBean page,int state);
//	/**审核分单中合同查询方法
//	 * 
//	 * @param contract（合同编号）
//	 * @param username（借款人）
//	 * @param identity（身份证号）、
//	 * @param page page对象中需要有当前要查询的页码和要查询多少条数据
//	 * @param state 状态
//	 * @return
//	 */
//	public PageBean findContractInformationBySingle(String contract,String username,String identity,PageBean page,int state);
//	
//	/**放款合同查询
//	 * 
//	 * 需要根据放款的状态查询
//	 * @param contract 合同编号
//	 * @param username 借款人
//	 * @param identity 身份证号
//	 * @param type 产品类型
//	 * @param companyName 分公司
//	 * @param creditStatus 放款状态
//	 * @param page 
//	 * @return
//	 */
//	public PageBean findContractInformationByLending(String contract,String username,String identity,String type,String companyName,String creditStatus,PageBean page);
//	
//	/**车贷进度
//	 * 待定
//	 * @param map
//	 * @param page
//	 * @return
//	 */
//	public PageBean findContractInformationByProgress(Map<String,Object> map,PageBean page);
//	
	/**
	 * 根据合同id查询合同中所有信息
	 * @param contratId
	 * @return
	 */
	public ContractInformationBean findContractInformationByContractId(int contratId);
	
}
