package org.orange.carloan.adminmag.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.orange.carloan.beans.AdminBean;

public interface IAdminMapper {

	   /**
	    * 根据登录名查询管理员
	    * @param adminName
	    * @return
	    */
		public AdminBean findByName(@Param("adminName")String adminName);
		/**
		 * 根据id查询管理员
		 * @param id
		 * @return
		 */
		public AdminBean findById(int id);
		
		public List<AdminBean> findAdminByRoleName(@Param("roleName")String roleName);
	
		public List<AdminBean> findAdminByMap(Map map);
		public int findAdminSizeByMap(Map map);
}