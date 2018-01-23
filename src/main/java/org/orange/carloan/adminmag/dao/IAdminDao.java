package org.orange.carloan.adminmag.dao;

import java.util.List;
import java.util.Map;

import org.orange.carloan.beans.AdminBean;

public interface IAdminDao {

	/**
     * 根据管理员名字查询管理员
     * @param adminName
     * @return
     */
	public AdminBean findByName(String adminName);
	/**
	 * 根据管理员id查询管理员
	 * @param id
	 * @return
	 */
	public AdminBean findById(int id);
	
	public List<AdminBean> findAdminByRoleName(String roleName);
	
	public List<AdminBean> findAdminByMap(Map map);
	public int findAdminSizeByMap(Map map);
}