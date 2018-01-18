package carloan;

import javax.annotation.Resource;

import org.junit.runner.RunWith;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userCreditmag.service.IUserCreditWritService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-context.xml")
public class Test {

	@Resource
	private IUserCreditDao userCreditDaoImpl;
	@Resource
	private IUserCreditWritService userCreditWritService; 
	@Resource
	private IContractInformationDao contractInformationDaoImpl;
	@org.junit.Test
	public void  Test() {
		UserCreditBean bean=new UserCreditBean();
		
		bean=userCreditDaoImpl.findUserCredByUserCredId(1);
		System.out.println(bean);
	}
	@org.junit.Test
	public void  Test2() {
		UserCreditBean bean=userCreditDaoImpl.findUserCredByUserCredId(2);	
		ContractInformationBean bean2=contractInformationDaoImpl.findContractInformationByContractId(2);
		userCreditWritService.saveUserCredit(2, bean,1);
		System.out.println(bean2.getState());
	}
}
