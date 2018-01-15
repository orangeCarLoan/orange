package org.orange.carloan.beans;

import java.util.List;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:09
 */
public class AdminBean {

	private CompanyBean companyId;
	private int id;
	private String password;
	private String realName;
	private RoleBean roleId;
	private String userName;
	private List<ContractInformationBean> contracts;
	public CompanyBean getCompanyId() {
		return companyId;
	}
	public void setCompanyId(CompanyBean companyId) {
		this.companyId = companyId;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRealName() {
		return realName;
	}
	public void setRealName(String realName) {
		this.realName = realName;
	}
	public RoleBean getRoleId() {
		return roleId;
	}
	public void setRoleId(RoleBean roleId) {
		this.roleId = roleId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public List<ContractInformationBean> getContracts() {
		return contracts;
	}
	public void setContracts(List<ContractInformationBean> contracts) {
		this.contracts = contracts;
	}
	@Override
	public String toString() {
		return "AdminBean [companyId=" + companyId + ", id=" + id + ", password=" + password + ", realName=" + realName
				+ ", roleId=" + roleId + ", userName=" + userName + ", contracts=" + contracts + "]";
	}
	
}