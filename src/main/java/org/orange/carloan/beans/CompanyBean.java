package org.orange.carloan.beans;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_company")
public class CompanyBean {
	
	@Id 
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	@Column(name="name")
	private String name;
	
	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="companyBean")
	private List<ContractInformationBean> contracts;
	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="companyId")
	private List<AdminBean> admins;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<ContractInformationBean> getContracts() {
		return contracts;
	}
	public void setContracts(List<ContractInformationBean> contracts) {
		this.contracts = contracts;
	}
	public List<AdminBean> getAdmins() {
		return admins;
	}
	public void setAdmins(List<AdminBean> admins) {
		this.admins = admins;
	}
	@Override
	public String toString() {
		return "CompanyBean [id=" + id + ", name=" + name + ", contracts=" + contracts + ", admins=" + admins + "]";
	}
	
}