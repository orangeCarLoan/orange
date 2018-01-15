package org.orange.carloan.beans;

import java.util.List;

public class CompanyBean {

	private int id;
	private String name;

	private List<ContractInformationBean> contracts;
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