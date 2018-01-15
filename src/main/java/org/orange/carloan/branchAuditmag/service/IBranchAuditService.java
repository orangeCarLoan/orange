package org.orange.carloan.branchAuditmag.service;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.UserCreditBean;

/**
 * 分公司信审管理
 * @author Administrator
 *
 */
public interface IBranchAuditService {

	/**分公司初审保存或提交方法
	 *  
	 * 需要传入客户的信用信息数据和分公司综合意见数据，和是否提交
	 * 首先contractInformationId查询合同类，
	 * 然后将客户的信用信息userCredit和综合意见信息advice存入合同类中
	 * 
	 * 执行合同信息的update方法
	 */
	//7
	public void saveBranchAudit(int contractInformationId,UserCreditBean userCredit,AdviceBean advice,boolean isSubmit);
	
	/**
	 * 分公司初审回退方法
	 * 
	 * 根据contractInformationId查询出合同类，
	 * 然后根据state修改合同类的状态，如果state为0，
	 * 则修改为2，否则，修改为4
	 * 然后将fallbackContent回退信息存入合同类中。
	 * 然后执行update方法
	 * 
	 * @param fallbackContent 回退信息
	 * @param contractInformationId 合同id
	 * @param state 0基本信息回退，1车辆信息回退
	 */
	public void updateBranchAudit(String fallbackContent,int contractInformationId,int state);
	
}
