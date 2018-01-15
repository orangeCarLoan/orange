package org.orange.carloan.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 * 签约附件表 t_Signadjunct
 * @author ASUS
 *
 */
@Entity
@Table(name="t_signadjunct")
public class SignAdjunctBean {
    /**签约附件id*/
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	/**银行卡*/
	@Column(name="bank_card")
	private String bankCard;
	
	/**机打申请表(待定)*/
	@Column(name="application_form")
	private String applicationForm;
	
	/**小额借款服务合同(系统生成)*/
	@Column(name="loan_contract")
	private String loanContract;
	
	/**授权扣款委托书(系统生成)*/
	@Column(name="cut_authorization")
	private String cutAuthorization;
	
	/**授权委托书(系统生成)*/
	@Column(name="authorization")
	private String authorization;
	
	/**还款计划表(系统生成)*/
	@Column(name="refund_list")
	private String refundList;
	
	/**补充协议(直接上传)*/
	@Column(name="replenish_deal")
	private String replenishDeal;
	
	/**车辆买卖回购合同(直接上传)*/
	@Column(name="car_contract")
	private String carContract;
	
	/**授权委托书(车辆处理使用)(直接上传)*/
	@Column(name="car_authorization")
	private String carAuthorization;
	
	/**车辆抵押照片*/
	@Column(name="car_photo")
	private String carPhoto;
	
	/**车辆入库照片(非必要)*/
	@Column(name="storage_photo")
	private String storagePhoto;
	
	private SignBean signBean;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBankCard() {
		return bankCard;
	}

	public void setBankCard(String bankCard) {
		this.bankCard = bankCard;
	}

	public String getApplicationForm() {
		return applicationForm;
	}

	public void setApplicationForm(String applicationForm) {
		this.applicationForm = applicationForm;
	}

	public String getLoanContract() {
		return loanContract;
	}

	public void setLoanContract(String loanContract) {
		this.loanContract = loanContract;
	}

	public String getCutAuthorization() {
		return cutAuthorization;
	}

	public void setCutAuthorization(String cutAuthorization) {
		this.cutAuthorization = cutAuthorization;
	}

	public String getAuthorization() {
		return authorization;
	}

	public void setAuthorization(String authorization) {
		this.authorization = authorization;
	}

	public String getRefundList() {
		return refundList;
	}

	public void setRefundList(String refundList) {
		this.refundList = refundList;
	}

	public String getReplenishDeal() {
		return replenishDeal;
	}

	public void setReplenishDeal(String replenishDeal) {
		this.replenishDeal = replenishDeal;
	}

	public String getCarContract() {
		return carContract;
	}

	public void setCarContract(String carContract) {
		this.carContract = carContract;
	}

	public String getCarAuthorization() {
		return carAuthorization;
	}

	public void setCarAuthorization(String carAuthorization) {
		this.carAuthorization = carAuthorization;
	}

	public String getCarPhoto() {
		return carPhoto;
	}

	public void setCarPhoto(String carPhoto) {
		this.carPhoto = carPhoto;
	}

	public String getStoragePhoto() {
		return storagePhoto;
	}

	public void setStoragePhoto(String storagePhoto) {
		this.storagePhoto = storagePhoto;
	}

	public SignBean getSignBean() {
		return signBean;
	}

	public void setSignBean(SignBean signBean) {
		this.signBean = signBean;
	}

	@Override
	public String toString() {
		return "SignAdjunctBean [id=" + id + ", bankCard=" + bankCard + ", applicationForm=" + applicationForm
				+ ", loanContract=" + loanContract + ", cutAuthorization=" + cutAuthorization + ", authorization="
				+ authorization + ", refundList=" + refundList + ", replenishDeal=" + replenishDeal + ", carContract="
				+ carContract + ", carAuthorization=" + carAuthorization + ", carPhoto=" + carPhoto + ", storagePhoto="
				+ storagePhoto + ", signBean=" + signBean + "]";
	}
}
