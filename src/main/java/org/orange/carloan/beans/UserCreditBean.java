package org.orange.carloan.beans;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
 
@Entity
@Table(name="t_usercredit")
public class UserCreditBean  implements Serializable {

	/**
	 *  
	 */
	private static final long serialVersionUID = 8266367616021550600L;
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibIdentity", strategy="identity")
	@GeneratedValue(generator="hibIdentity")
	private Integer id;
	
	@Column(name="house_property",length=20)
	private Integer houseProperty;
	
	@Column(name="House_loan",length=20)
	private Integer houseLoan;
	
	@Column(name="car_property",length=20)
	private Integer carProperty;
	
	@Column(name="car_loan",length=20)
	private Integer carLoan;
	
	@Column(name="max_overdue_situation",length=20)
	private Integer maxSituation;
	
	@Column(name="max_overdue_number",length=20)
	private Integer maxNumber;
	
	@Column(name="credit_card_usage_rate",length=20)
	private String creditCardUsageRate;
	
	@Column(name="nocc_lae",length=20)
	private Integer noccLae;
	
	@Column(name="other_credit_loans",length=20)
	private Integer otherCreditLoans;
	
	@Column(name="credit_card",length=20)
	private Integer creditCard;
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="userCreditBean")
	private ContractInformationBean contractInformationBean;
	
	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}

	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}

	public UserCreditBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getHouseProperty() {
		return houseProperty;
	}

	public void setHouseProperty(Integer houseProperty) {
		this.houseProperty = houseProperty;
	}

	public Integer getHouseLoan() {
		return houseLoan;
	}

	public void setHouseLoan(Integer houseLoan) {
		this.houseLoan = houseLoan;
	}

	public Integer getCarProperty() {
		return carProperty;
	}

	public void setCarProperty(Integer carProperty) {
		this.carProperty = carProperty;
	}

	public Integer getCarLoan() {
		return carLoan;
	}

	public void setCarLoan(Integer carLoan) {
		this.carLoan = carLoan;
	}

	public Integer getMaxSituation() {
		return maxSituation;
	}

	public void setMaxSituation(Integer maxSituation) {
		this.maxSituation = maxSituation;
	}

	public Integer getMaxNumber() {
		return maxNumber;
	}

	public void setMaxNumber(Integer maxNumber) {
		this.maxNumber = maxNumber;
	}

	public String getCreditCardUsageRate() {
		return creditCardUsageRate;
	}

	public void setCreditCardUsageRate(String creditCardUsageRate) {
		this.creditCardUsageRate = creditCardUsageRate;
	}

	public Integer getNoccLae() {
		return noccLae;
	}

	public void setNoccLae(Integer noccLae) {
		this.noccLae = noccLae;
	}

	public Integer getOtherCreditLoans() {
		return otherCreditLoans;
	}

	public void setOtherCreditLoans(Integer otherCreditLoans) {
		this.otherCreditLoans = otherCreditLoans;
	}

	public Integer getCreditCard() {
		return creditCard;
	}

	public void setCreditCard(Integer creditCard) {
		this.creditCard = creditCard;
	}

	@Override
	public String toString() {
		return "UserCreditBean [id=" + id + ", houseProperty=" + houseProperty + ", houseLoan=" + houseLoan
				+ ", carProperty=" + carProperty + ", carLoan=" + carLoan + ", maxSituation=" + maxSituation
				+ ", maxNumber=" + maxNumber + ", creditCardUsageRate=" + creditCardUsageRate + ", noccLae=" + noccLae
				+ ", otherCreditLoans=" + otherCreditLoans + ", creditCard=" + creditCard + ", contractInformationBean="
				+ contractInformationBean + "]";
	}
	
	
	

}
