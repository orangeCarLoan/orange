package carloan.testUserIdentity;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.beans.ContractInformationBean;
import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userIdentitymag.service.IUserIdentityWritService;
import org.orange.carloan.utils.DateUtils;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class TestUserIdentity {
	
	@Resource
	private IUserIdentityDao userIdentityDaoImpl;
	@Resource
	private IUserIdentityWritService userIdentityWritServiceImpl;
	
	@Test
	public void testFindUserIdentityByUserIdentityId() {
		 UserIdentityBean bean = userIdentityDaoImpl.findUserIdentityByUserIdentityId(1);
		 System.out.println(bean);
	}
	@Test
	public void testFindUserIdentityByIdentity() {
		 String identity="510121199512341234";
		 UserIdentityBean bean = userIdentityDaoImpl.findUserIdentityByIdentity(identity);
		 System.out.println(bean);
	}
	@Test
	public void testSaveUserIdentity() {
		UserIdentityBean bean = new UserIdentityBean();
		ContractInformationBean bean1 = new ContractInformationBean();
		bean.setAddress("成华");
		try {
			bean.setBirthday(DateUtils.shortStr2Date("1980-01-26"));
			bean.setStratDate(DateUtils.shortStr2Date("2012-12-12"));
			bean.setEndDate(DateUtils.shortStr2Date("2022-12-12"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		bean.setContractInformationBean(bean1);
		bean.setGender(0);
		bean.setIdentity("510131188015431628");
		bean.setType("中期贷款");
		bean.setNation("汉族");
		bean.setOrgan("成都发证机关");
		bean.setUserName("王五");
		userIdentityWritServiceImpl.saveUserIdentity(bean,1);
	}
	
}
