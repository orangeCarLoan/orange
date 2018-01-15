package org.orange.carloan.beans;

import java.io.Serializable;

//客户基本信息附件
public class UserAdjunctBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -6196311390769405372L;
	
	private int id;
	//身份证原件
	private String Idcard;
	//车贷申请表
	private String carLoanFrom;
	//其他附件
	private String atherAdjunct;
	//客户基本信息附件与客户基本信息是多对一的关系，所以在一的这边应该有多的那边的引用
	private UserMessageBean userMsg;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getIdcard() {
		return Idcard;
	}
	public void setIdcard(String idcard) {
		Idcard = idcard;
	}
	public String getCarLoanFrom() {
		return carLoanFrom;
	}
	public void setCarLoanFrom(String carLoanFrom) {
		this.carLoanFrom = carLoanFrom;
	}
	public String getAtherAdjunct() {
		return atherAdjunct;
	}
	public void setAtherAdjunct(String atherAdjunct) {
		this.atherAdjunct = atherAdjunct;
	}
	public UserMessageBean getUserMsg() {
		return userMsg;
	}
	public void setUserMsg(UserMessageBean userMsg) {
		this.userMsg = userMsg;
	}
	@Override
	public String toString() {
		return "UserAdjunct [id=" + id + ", Idcard=" + Idcard + ", carLoanFrom=" + carLoanFrom + ", atherAdjunct="
				+ atherAdjunct + "]";
	}
}
