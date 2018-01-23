package org.orange.carloan.userMessagemag.repository;

import org.orange.carloan.beans.ContactBean;
import org.springframework.data.jpa.repository.JpaRepository;

public interface IContactRepository extends JpaRepository<ContactBean, Integer>{

}
