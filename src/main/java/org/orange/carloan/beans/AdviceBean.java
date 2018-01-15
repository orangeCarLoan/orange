package org.orange.carloan.beans;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/**
 *  综合意见表 t_advice
 * @author ASUS
 * 
 */
@Entity
@Table(name="t_advice")
public class AdviceBean {

	/**综合意见id*/
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	/**产品类别*/
	@Column(name="product_category")
	private String productCategory;
	
	/**批准期数*/
	@Column(name="approval_period")
	private int approvalPeriod;
	
	/**结论*/
	@Column(name="conclusion")
	private String  conclusion;
	
	/**审批额度*/
	@Column(name="approval_quota")
	private Integer approvalQuota;
	
	/**分公司初审意见*/
	@Column(name="branch_opinion")
	private String branchOpinion;
	
	/**总公司审核意见*/
	@Column(name="head_opinion")
	private String headOpinion;
	
	@OneToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL,mappedBy="adviceBean")
	private ContractInformationBean contractInformationBean;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}

	public int getApprovalPeriod() {
		return approvalPeriod;
	}

	public void setApprovalPeriod(int approvalPeriod) {
		this.approvalPeriod = approvalPeriod;
	}

	public String getConclusion() {
		return conclusion;
	}

	public void setConclusion(String conclusion) {
		this.conclusion = conclusion;
	}

	public Integer getApprovalQuota() {
		return approvalQuota;
	}

	public void setApprovalQuota(Integer approvalQuota) {
		this.approvalQuota = approvalQuota;
	}


	public String getBranchOpinion() {
		return branchOpinion;
	}

	public void setBranchOpinion(String branchOpinion) {
		this.branchOpinion = branchOpinion;
	}

	public String getHeadOpinion() {
		return headOpinion;
	}

	public void setHeadOpinion(String headOpinion) {
		this.headOpinion = headOpinion;
	}

	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}

	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}

	@Override
	public String toString() {
		return "AdviceBean [id=" + id + ", productCategory=" + productCategory + ", approvalPeriod=" + approvalPeriod
				+ ", conclusion=" + conclusion + ", approvalQuota=" + approvalQuota + ", branchOpinion=" + branchOpinion
				+ ", headOpinion=" + headOpinion + ", contractInformationBean=" + contractInformationBean + "]";
	}
	
}
