package org.orange.carloan.beans;

import java.io.Serializable;


//联系人信息类
public class ContactBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2196975359967560927L;
	
	private int id;
	//联系人姓名
	private String contactName;
	//联系人类型
	private String contactType;
	//和本人关系
	private String relation;
	//单位名称
	private String contactCompany;
	//家庭地址/单位地址
	private String contactAddress;		
	//联系电话		
	private String contactPhone;
	//是否知晓贷款
	private Integer knowLoan;
	//客户基本信息
	private UserMessageBean userMessageBean;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getContactType() {
		return contactType;
	}
	public void setContactType(String contactType) {
		this.contactType = contactType;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getContactCompany() {
		return contactCompany;
	}
	public void setContactCompany(String contactCompany) {
		this.contactCompany = contactCompany;
	}
	public String getContactAddress() {
		return contactAddress;
	}
	public void setContactAddress(String contactAddress) {
		this.contactAddress = contactAddress;
	}
	public String getContactPhone() {
		return contactPhone;
	}
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	public UserMessageBean getUserMessageBean() {
		return userMessageBean;
	}
	public void setUserMessageBean(UserMessageBean userMessageBean) {
		this.userMessageBean = userMessageBean;
	}
	@Override
	public String toString() {
		return "ContactBean [id=" + id + ", contactName=" + contactName + ", contactType=" + contactType + ", relation="
				+ relation + ", contactCompany=" + contactCompany + ", contactAddress=" + contactAddress
				+ ", contactPhone=" + contactPhone + ", knowLoan=" + knowLoan + ", userMessageBean=" + userMessageBean
				+ "]";
	}
	
}
