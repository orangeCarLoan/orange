package org.orange.carloan.letteronmag.service;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.UserCreditBean;

/**
 * 分公司和总公司信审管理
 * @author Administrator
 *
 */
public interface ILetterOnWritService {

	/**分公司初审保存或提交方法
	 *  
	 * 需要传入客户的信用信息数据和分公司综合意见数据，和是否提交,是否知晓贷款
	 * 
	 * 首先contractInformationId查询合同类，
	 * 然后将客户的信用信息userCredit和综合意见信息advice存入合同类中
	 * 并取出合同类的客户基本信息类，将客户基本信息类中的是否知晓贷款改为knowLoan
	 * 如果submit为1，则将合同类中的状态改为6，
	 * 并将回退状态（isFallback）改为0
	 * 最后执行合同信息的update方法
	 */
	//5
	public void saveBranchAudit(int contractInformationId,UserCreditBean userCredit,AdviceBean advice,int knowLoan,int isSubmit);
	
	/**
	 * 分公司初审回退方法
	 * 
	 * 根据contractInformationId查询出合同类，
	 * 然后根据state修改合同类的状态，如果state为0，
	 * 则修改为1，否则，修改为2
	 * 然后将fallbackContent回退信息存入合同类中。
	 * 并将回退状态（isFallback）改为1
	 * 并将合同类中的
	 * 然后执行update方法
	 * 
	 * @param fallbackContent 回退信息
	 * @param contractInformationId 合同id
	 * @param state 0基本信息回退，1车辆信息回退
	 */
	public void updateBranchAudit(String fallbackContent,int contractInformationId,int state);
	/**总公司信息保存或提交方法
	 * 
	 * 查询合同Id，
	 * 判断审核人是否与AdminName相等，
	 * 如果不相等，直接返回false
	 * 否者
	 * 在判断是否提交，如果是0
	 * 就只保存信息，
	 * 1同时改变状态码7
	 * 并将回退状态（isFallback）改为0
	 * 然后执行update方法
	 * 
	 * @param contratId
	 * @param bean
	 * @param isSubmit
	 */
	//6
	public boolean updateStateAndSaveAdvice(int contratId,AdviceBean bean,int isSubmit,String AdminName);
	
	/**总公司信审回退方法
	 * 
	 * 判断回退意见是否为空，若为空，则返回false什么都不做，
	 * 若不为空，则就查询合同id，并且更改状态码5
	 * 并将合同的意见改为advice。
	 * 并将回退状态（isFallback）改为1
	 * 然后执行update方法
	 * @param contratId
	 * @param advice
	 */
	public boolean updateStateToBack(int contratId,String advice);
}
