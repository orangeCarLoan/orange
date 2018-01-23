package org.orange.carloan.adminmag.repository;


import org.orange.carloan.beans.AdminBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface IAdminRepository extends JpaRepository<AdminBean, Integer>,JpaSpecificationExecutor<AdminBean>{

	
	
}
