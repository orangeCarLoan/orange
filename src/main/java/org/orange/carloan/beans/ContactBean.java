package org.orange.carloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;


//联系人信息类
@Entity
@Table(name="t_contact")
public class ContactBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 2196975359967560927L;
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	//联系人姓名
	@Column(name="contactname")
	private String contactName;
	
	//联系人类型
	@Column(name="contacttype")
	private String contactType;
	
	//和本人关系
	@Column(name="Relation")
	private String relation;
	
	//单位名称
	@Column(name="contactcompany")
	private String contactCompany;
	
	//家庭地址/单位地址
	@Column(name="contactaddress")
	private String contactAddress;	
	
	//联系电话	
	@Column(name="contactphone")
	private String contactPhone;
	
	//是否知晓贷款
	@Column(name="know_loan")
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
