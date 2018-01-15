package org.orange.carloan.headauditmag.service;

import org.orange.carloan.beans.AdviceBean;

public interface IHeadAuditService {

	/**
	 * 判断录入信息是否为空，若问为空，则返回false，若不为空，则查询合同Id，
	 * 在判断是否提交，0返回false就只保存信息，1返回true则保存信息同时改变状态码+1
	 * @param contratId
	 * @param bean
	 * @param isSubmit
	 */
	public void updateStateAndSaveAdvice(int contratId,AdviceBean bean,int isSubmit);
	
	/**
	 * 判断回退意见是否为空，若为空，则返回false什么都不做，
	 * 若不为空，则就查询合同id，并且更改状态码-1
	 * @param contratId
	 * @param advice
	 */
	public void updateStateToBack(int contratId,String advice);
}
