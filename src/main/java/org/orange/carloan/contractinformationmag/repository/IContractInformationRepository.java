package org.orange.carloan.contractinformationmag.repository;

import org.orange.carloan.beans.ContractInformationBean;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface IContractInformationRepository extends JpaRepository<ContractInformationBean, Integer>,JpaSpecificationExecutor<ContractInformationBean> {

}
