package org.orange.carloan.userMessagemag.repository;

import org.orange.carloan.beans.UserMessageBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

public interface UserMessageRepository extends JpaRepository<UserMessageBean, Integer>,JpaSpecificationExecutor<UserMessageBean>{
	
//	@Modifying
//	@Query(value="insert UserMessageBean as u into u.address value ?1")
//	public void updateMessageBean(String useraddress,int id);

}
