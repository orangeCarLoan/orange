package org.orange.carloan.beans;

import java.util.List;

/**
 * @author Administrator
 * @version 1.0
 * @created 11-һ��-2018 14:37:11
 */
public class RoleBean {

	private int id;
	private String roleName;
	private List<AdminBean> admins;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public List<AdminBean> getAdmins() {
		return admins;
	}
	public void setAdmins(List<AdminBean> admins) {
		this.admins = admins;
	}
	@Override
	public String toString() {
		return "RoleBean [id=" + id + ", roleName=" + roleName + ", admins=" + admins + "]";
	}
	
}