package org.orange.carloan.userIdentitymag.service;

import org.orange.carloan.beans.UserIdentityBean;

/**
 * 客户身份信息业务方法
 * @author Administrator
 *
 */
public interface IUserIdentityWritService {
 
	/**
	 * 首先创建一个合同信息类，生成一个唯一的合同编号
	 * 然后将userIdentity保存至合同信息类中
	 * 查询出管理员所在公司对象，然后将公司类放入合同信息类中
	 * 并将合同信息类的状态改为1
	 * 执行合同信息的repository的save(合同信息类)方法
	 * 
	 * @param userIdentity 客户身份信息类
	 */
	public void saveUserIdentity(UserIdentityBean userIdentity);
	
	
}
