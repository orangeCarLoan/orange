package org.orange.carloan.beans;

import java.util.Date;
import java.util.List;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:11
 */
public class UserMessageBean {

	private String address;//现住地址
	private Date applyDate;//申请日期
	private String borrowPurpose;//借款详细用途
	private String channel;//您从何得知正合普惠
	private String clientType;//客户类型
	private String commissioner;//车贷专员
	private String companyAddress;//工作单位地址
	private String companyName;//工作单位全称
	private String companyPhone;//单位电话
	private String companySize;//公司规模
	private String dept;//所在部门
	private String duty;//担任职务
	private String education;//最高学历
	private String employment;//行业类别
	private String fallbackMessage;
	private Date happenTime;//进入该单位时间
	private int hasChild;//有无子女
	private String houseType;//房产状况
	private int id;
	private int income;//月收入
	private String marry;//婚姻状况
	private int maxdeadline;//希望申请最长还款期限
	private int maxlimit;//希望申请借款额度（最低）
	private int minlimit;//希望申请借款额度（最高）
	private String partner;//共同居住者
	private String place;//户籍地址
	private int repayment;//您可以承受的月还款额
	private String saleName;//业务员姓名
	private String telephone;//申请人电话号码
	private String unitNature;//单位性质
	private String userPhone;//申请人手机号
	private String zipCode;//邮政编码
	
	private ContractInformationBean contractInformationBean;
	private List<ContactBean> contactBean;
	private UserAdjunctBean userAdjunctBean;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getApplyDate() {
		return applyDate;
	}
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	public String getBorrowPurpose() {
		return borrowPurpose;
	}
	public void setBorrowPurpose(String borrowPurpose) {
		this.borrowPurpose = borrowPurpose;
	}
	public String getChannel() {
		return channel;
	}
	public void setChannel(String channel) {
		this.channel = channel;
	}
	public String getClientType() {
		return clientType;
	}
	public void setClientType(String clientType) {
		this.clientType = clientType;
	}
	public String getCommissioner() {
		return commissioner;
	}
	public void setCommissioner(String commissioner) {
		this.commissioner = commissioner;
	}
	public String getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(String companyAddress) {
		this.companyAddress = companyAddress;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getCompanyPhone() {
		return companyPhone;
	}
	public void setCompanyPhone(String companyPhone) {
		this.companyPhone = companyPhone;
	}
	public String getCompanySize() {
		return companySize;
	}
	public void setCompanySize(String companySize) {
		this.companySize = companySize;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getDuty() {
		return duty;
	}
	public void setDuty(String duty) {
		this.duty = duty;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getEmployment() {
		return employment;
	}
	public void setEmployment(String employment) {
		this.employment = employment;
	}
	public String getFallbackMessage() {
		return fallbackMessage;
	}
	public void setFallbackMessage(String fallbackMessage) {
		this.fallbackMessage = fallbackMessage;
	}
	public Date getHappenTime() {
		return happenTime;
	}
	public void setHappenTime(Date happenTime) {
		this.happenTime = happenTime;
	}
	public int getHasChild() {
		return hasChild;
	}
	public void setHasChild(int hasChild) {
		this.hasChild = hasChild;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIncome() {
		return income;
	}
	public void setIncome(int income) {
		this.income = income;
	}
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public int getMaxdeadline() {
		return maxdeadline;
	}
	public void setMaxdeadline(int maxdeadline) {
		this.maxdeadline = maxdeadline;
	}
	public int getMaxlimit() {
		return maxlimit;
	}
	public void setMaxlimit(int maxlimit) {
		this.maxlimit = maxlimit;
	}
	public int getMinlimit() {
		return minlimit;
	}
	public void setMinlimit(int minlimit) {
		this.minlimit = minlimit;
	}
	public String getPartner() {
		return partner;
	}
	public void setPartner(String partner) {
		this.partner = partner;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public int getRepayment() {
		return repayment;
	}
	public void setRepayment(int repayment) {
		this.repayment = repayment;
	}
	public String getSaleName() {
		return saleName;
	}
	public void setSaleName(String saleName) {
		this.saleName = saleName;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getUnitNature() {
		return unitNature;
	}
	public void setUnitNature(String unitNature) {
		this.unitNature = unitNature;
	}
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}
	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}
	public List<ContactBean> getContactBean() {
		return contactBean;
	}
	public void setContactBean(List<ContactBean> contactBean) {
		this.contactBean = contactBean;
	}
	public UserAdjunctBean getUserAdjunctBean() {
		return userAdjunctBean;
	}
	public void setUserAdjunctBean(UserAdjunctBean userAdjunctBean) {
		this.userAdjunctBean = userAdjunctBean;
	}
	@Override
	public String toString() {
		return "UserMessageBean [address=" + address + ", applyDate=" + applyDate + ", borrowPurpose=" + borrowPurpose
				+ ", channel=" + channel + ", clientType=" + clientType + ", commissioner=" + commissioner
				+ ", companyAddress=" + companyAddress + ", companyName=" + companyName + ", companyPhone="
				+ companyPhone + ", companySize=" + companySize + ", dept=" + dept + ", duty=" + duty + ", education="
				+ education + ", employment=" + employment + ", fallbackMessage=" + fallbackMessage + ", happenTime="
				+ happenTime + ", hasChild=" + hasChild + ", houseType=" + houseType + ", id=" + id + ", income="
				+ income + ", marry=" + marry + ", maxdeadline=" + maxdeadline + ", maxlimit=" + maxlimit
				+ ", minlimit=" + minlimit + ", partner=" + partner + ", place=" + place + ", repayment=" + repayment
				+ ", saleName=" + saleName + ", telephone=" + telephone + ", unitNature=" + unitNature + ", userPhone="
				+ userPhone + ", zipCode=" + zipCode + ", contractInformationBean=" + contractInformationBean
				+ ", contactBean=" + contactBean + ", userAdjunctBean=" + userAdjunctBean + "]";
	}
	
}