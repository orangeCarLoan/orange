package carloan.testUserIdentity;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.beans.UserIdentityBean;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"classpath:spring-context.xml"})
public class TestUserIdentity {
	
	@Resource IUserIdentityDao userIdentityDaoImpl;
	
	@Test
	public void testFindUserIdentityByUserIdentityId() {
		 UserIdentityBean bean = userIdentityDaoImpl.findUserIdentityByUserIdentityId(1);
		 System.out.println(bean);
	}
}
