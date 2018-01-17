package org.orange.carloan.userIdentitymag.service;

import org.orange.carloan.beans.UserIdentityBean;

/**
 * 客户身份信息业务方法
 * @author Administrator
 *
 */
public interface IUserIdentityService {
 
	/**
	 * 首先根据userIdentity中的身份证号查询数据库中是否有该用户，
	 * 如果有，则返回false，不能再重复添加该客户。
	 * 
	 * 否则
	 * 首先创建一个合同信息类，生成一个唯一的合同编号
	 * 然后将userIdentity保存至合同信息类中
	 * 查询出管理员所在公司对象，然后放入合同信息类
	 * 并将合同信息类的状态改为1
	 * 执行合同信息的repository的save(合同信息类)方法
	 * 然后返回true
	 * 
	 * @param userIdentity 客户身份信息类
	 */
	public boolean saveUserIdentity(UserIdentityBean userIdentity);
	
	
}
