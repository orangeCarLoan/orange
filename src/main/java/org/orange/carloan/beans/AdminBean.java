package org.orange.carloan.beans;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:09
 */
@Entity
@Table(name="t_admin")
public class AdminBean {
  
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="company_id")
	private CompanyBean companyId;
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id; 
	
	@Column(name="password")
	private String password;
	
	@Column(name="realname")
	private String realName;
	
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="role_id")
	private RoleBean roleId;
	
	@Column(name="username")
	private String userName;
	
	@ManyToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinTable(name="t_admin_contractinformation",
		joinColumns={@JoinColumn(name="admin_id")},
		inverseJoinColumns= {@JoinColumn(name="contractinformation_id")}
	)
	private List<ContractInformationBean> contracts;
	
	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="adminBean")
	private List<LogBean> logs;
	
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