package org.orange.carloan.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

import com.fasterxml.jackson.annotation.JsonFilter;

//合同信息
@Entity
@Table(name="t_contractinformation")
@JsonFilter(value="contractFilter")
public class ContractInformationBean implements Serializable {

	/** 
	 * 
	 */
	private static final long serialVersionUID = -3198085201613764861L;

	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;//id
	
	@Column(name="auditor")
	private String auditor;//审核人
	
	@Column(name="contract")
	private String contract;//合同编号
	
	@Column(name="state")
	private int state;//状态
	
	@Column(name="is_fallback")
	private int isFallback;//是否回退
	
	@Column(name="fallback_content")
	private String fallbackContent;//回退意见
	
	@Column(name="creditstatus")
	private String creditstatus;//放款状态
	
	@Column(name="auditor_date")
	private Date auditorDate;//审核时间
	
	@Column(name="contraction_date")
	private Date contractionDate;//合同时间
	
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="company_id")
	private CompanyBean companyBean;//客户来源（分公司）
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="usermessage_id")
	private UserMessageBean userMessageBean;//客户基本信息外键
	
	@OneToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="contractInformationBean")
	private List<CarMessageBean> carMessageBeans;//车辆信息外键
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="usercredit_id")
	private UserCreditBean userCreditBean;//客户信用信息外键
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="advice_id")
	private AdviceBean adviceBean;//综合意见外键
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="sign_id")
	private SignBean signBean;//客户签约外键
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="useridentity_id")
	private UserIdentityBean userIdentityBean;//客户身份信息外键
	
	@ManyToMany(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="contracts")
	private List<AdminBean> admins;
	
	
	
	public int getIsFallback() {
		return isFallback;
	}
	public void setIsFallback(int isFallback) {
		this.isFallback = isFallback;
	}
	public List<CarMessageBean> getCarMessageBeans() {
		return carMessageBeans;
	}
	public void setCarMessageBeans(List<CarMessageBean> carMessageBeans) {
		this.carMessageBeans = carMessageBeans;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getContract() {
		return contract;
	}
	public void setContract(String contract) {
		this.contract = contract;
	}
	
	public String getAuditor() {
		return auditor;
	}
	public void setAuditor(String auditor) {
		this.auditor = auditor;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getFallbackContent() {
		return fallbackContent;
	}
	public void setFallbackContent(String fallbackContent) {
		this.fallbackContent = fallbackContent;
	}
	public String getCreditstatus() {
		return creditstatus;
	}
	public void setCreditstatus(String creditstatus) {
		this.creditstatus = creditstatus;
	}
	public CompanyBean getCompanyBean() {
		return companyBean;
	}
	public void setCompanyBean(CompanyBean companyBean) {
		this.companyBean = companyBean;
	}
	public UserMessageBean getUserMessageBean() {
		return userMessageBean;
	}
	public void setUserMessageBean(UserMessageBean userMessageBean) {
		this.userMessageBean = userMessageBean;
	}
	public UserCreditBean getUserCreditBean() {
		return userCreditBean;
	}
	public void setUserCreditBean(UserCreditBean userCreditBean) {
		this.userCreditBean = userCreditBean;
	}
	public AdviceBean getAdviceBean() {
		return adviceBean;
	}
	public void setAdviceBean(AdviceBean adviceBean) {
		this.adviceBean = adviceBean;
	}
	public SignBean getSignBean() {
		return signBean;
	}
	public void setSignBean(SignBean signBean) {
		this.signBean = signBean;
	}
	public UserIdentityBean getUserIdentityBean() {
		return userIdentityBean;
	}
	public void setUserIdentityBean(UserIdentityBean userIdentityBean) {
		this.userIdentityBean = userIdentityBean;
	}
	public List<AdminBean> getAdmins() {
		return admins;
	}
	public void setAdmins(List<AdminBean> admins) {
		this.admins = admins;
	}
	
	public Date getAuditorDate() {
		return auditorDate;
	}
	public void setAuditorDate(Date auditorDate) {
		this.auditorDate = auditorDate;
	}
	public Date getContractionDate() {
		return contractionDate;
	}
	public void setContractionDate(Date contractionDate) {
		this.contractionDate = contractionDate;
	}
	@Override
	public String toString() {
		return "ContractInformationBean [id=" + id + ", auditor=" + auditor + ", contract=" + contract + ", state="
				+ state + ", isFallback=" + isFallback + ", fallbackContent=" + fallbackContent + ", creditstatus="
				+ creditstatus + ", auditorDate=" + auditorDate + ", contractionDate=" + contractionDate
				+ ", companyBean=" + companyBean + ", userMessageBean=" + userMessageBean + ", carMessageBeans="
				+ carMessageBeans + ", userCreditBean=" + userCreditBean + ", adviceBean=" + adviceBean + ", signBean="
				+ signBean + ", userIdentityBean=" + userIdentityBean + ", admins=" + admins + "]";
	}
}
