package org.orange.carloan.beans;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

//客户签约
@Entity
@Table(name="t_sign")
public class SignBean implements Serializable{

	/** 
	 * 
	 */
	private static final long serialVersionUID = -6169220175537062592L;

	/**
	 * id
	 */
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	/**
	 * 咨询服务费
	 */
	@Column(name="consulting")
	private double consulting;
	
	/**
	 * 额度上限
	 */
	@Column(name="credit_limit")
	private double creditLimit;
	
	/**
	 * 审批额度
	 */
	@Column(name="quota")
	private double quota;
	
	/**
	 * 约定放款日期
	 */
	@Column(name="agreed_loan_date")
	private Date agreedLoanDate;
	
	/**
	 * 放款/还款银行
	 */
	@Column(name="bank")
	private String bank;
	
	/**
	 * 放款/还款账号
	 */
	@Column(name="account")
	private String account;
	
	/**
	 * 放款/还款开户银行（支行）
	 */
	@Column(name="deposit_bank")
	private String depositBank;
	
	/**
	 * 签约附件外键
	 */
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="signadjunct_id")
	private SignAdjunctBean signAdjunctBean;

	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="signBean")
	private ContractInformationBean contractInformationBean;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getConsulting() {
		return consulting;
	}

	public void setConsulting(double consulting) {
		this.consulting = consulting;
	}

	public double getCreditLimit() {
		return creditLimit;
	}

	public void setCreditLimit(double creditLimit) {
		this.creditLimit = creditLimit;
	}

	public double getQuota() {
		return quota;
	}

	public void setQuota(double quota) {
		this.quota = quota;
	}

	public Date getAgreedLoanDate() {
		return agreedLoanDate;
	}

	public void setAgreedLoanDate(Date agreedLoanDate) {
		this.agreedLoanDate = agreedLoanDate;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getDepositBank() {
		return depositBank;
	}

	public void setDepositBank(String depositBank) {
		this.depositBank = depositBank;
	}

	public SignAdjunctBean getSignAdjunctBean() {
		return signAdjunctBean;
	}

	public void setSignAdjunctBean(SignAdjunctBean signAdjunctBean) {
		this.signAdjunctBean = signAdjunctBean;
	}

	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}

	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}

	@Override
	public String toString() {
		return "SignBean [id=" + id + ", consulting=" + consulting + ", creditLimit=" + creditLimit + ", quota=" + quota
				+ ", agreedLoanDate=" + agreedLoanDate + ", bank=" + bank + ", account=" + account + ", depositBank="
				+ depositBank + ", signAdjunctBean=" + signAdjunctBean + ", contractInformationBean="
				+ contractInformationBean + "]";
	}

}
