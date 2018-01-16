package org.orange.carloan.userCreditmag.repository;


import org.orange.carloan.beans.UserCreditBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserCreditRepository extends JpaRepository<UserCreditBean, Long>,JpaSpecificationExecutor<UserCreditBean> {

	
}
