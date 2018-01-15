package org.orange.carloan.beans;
/**
 *  综合意见表 t_advice
 * @author ASUS
 *
 */
public class AdviceBean {

	/**综合意见id*/
	private int id;
	/**产品类别*/
	private String productCategory;
	/**批准期数*/
	private int approvalPeriod;
	/**结论*/
	private String  conclusion;
	/**审批额度*/
	private Integer approvalQuota;
	/**分公司初审意见*/
	private String branchOpinion;
	/**总公司审核意见*/
	private String headOpinion;
	
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
