package org.orange.carloan.beans;

import java.util.Date;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:11
 */
public class UserIdentityBean {

	private String address;
	private Date birthday;
	private Date endDate;
	private int gender;
	private int id;
	private String identity;
	private String nation;
	private String organ;
	private Date stratDate;
	private String type;
	private String userName;
	private ContractInformationBean contractInformationBean;
	
	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}
	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getOrgan() {
		return organ;
	}
	public void setOrgan(String organ) {
		this.organ = organ;
	}
	public Date getStratDate() {
		return stratDate;
	}
	public void setStratDate(Date stratDate) {
		this.stratDate = stratDate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	@Override
	public String toString() {
		return "UserIdentityBean [address=" + address + ", birthday=" + birthday + ", endDate=" + endDate + ", gender="
				+ gender + ", id=" + id + ", identity=" + identity + ", nation=" + nation + ", organ=" + organ
				+ ", stratDate=" + stratDate + ", type=" + type + ", userName=" + userName
				+ ", contractInformationBean=" + contractInformationBean + "]";
	}

}