package org.orange.carloan.beans;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:11
 */
@Entity
@Table(name="t_useridentity")
public class UserIdentityBean {
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="useridentity", strategy="identity")
	@GeneratedValue(generator="useridentity")
	private int id;
	
	@Column
	private String address;
	@Column
	private Date birthday;
	@Column
	private Date endDate;
	@Column
	private int gender;
	@Column
	private String identity;
	@Column
	private String nation;
	@Column
	private String organ;
	@Column
	private Date stratDate;
	@Column
	private String type;
	@Column
	private String userName;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "THEMEID")
	@Cascade({CascadeType.ALL})
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