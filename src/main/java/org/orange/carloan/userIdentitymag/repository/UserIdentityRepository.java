package org.orange.carloan.userIdentitymag.repository;

import org.orange.carloan.beans.UserIdentityBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface UserIdentityRepository extends JpaRepository<UserIdentityBean, Integer>,JpaSpecificationExecutor<UserIdentityBean>{

}
