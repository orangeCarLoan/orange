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
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

//日志表
@Entity
@Table(name="t_log")
public class LogBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -4634899346962162890L;

	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;//id
	
	
	@Column(name="date")
	private Date date;//操作时间
	
	@Column(name="content")
	private String content;//内容
	
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="admin_id")
	private AdminBean adminBean;//管理员外键
	
	public LogBean() {
		// TODO Auto-generated constructor stub
	}

	public LogBean(int id,  Date date, String content, AdminBean adminBean) {
		super();
		this.id = id;
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
		return "LogBean [id=" + id  + ", date=" + date + ", content=" + content + "]";
	}
	
	
}
