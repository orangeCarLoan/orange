package org.orange.carloan.carMessagemag.repository;

import org.orange.carloan.beans.CarMessageBean;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ICarMessageRepository extends JpaRepository<CarMessageBean, Integer>{

}
