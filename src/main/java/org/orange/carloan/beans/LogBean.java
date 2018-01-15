package org.orange.carloan.beans;

import java.io.Serializable;
import java.util.Date;

//日志表
public class LogBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4634899346962162890L;

	private int id;//id
	private String adminname;//管理员名
	private Date date;//操作时间
	private String content;//内容
	private AdminBean adminBean;//管理员外键
	
	public LogBean() {
		// TODO Auto-generated constructor stub
	}

	public LogBean(int id, String adminname, Date date, String content, AdminBean adminBean) {
		super();
		this.id = id;
		this.adminname = adminname;
		this.date = date;
		this.content = content;
		this.adminBean = adminBean;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public AdminBean getAdminBean() {
		return adminBean;
	}

	public void setAdminBean(AdminBean adminBean) {
		this.adminBean = adminBean;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "LogBean [id=" + id + ", adminname=" + adminname + ", date=" + date + ", content=" + content + "]";
	}
	
	
}
