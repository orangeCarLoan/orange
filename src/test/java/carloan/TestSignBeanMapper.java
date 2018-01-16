package carloan;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.signmag.dao.impl.SignDaoImpl;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-context.xml" })
public class TestSignBeanMapper {

	@Resource
	private SignDaoImpl s;
	
	@Test
	public void testFind() {
		
		SignBean bean1 = s.findSignBySignId(1);
		
		SignBean bean2 = s.findSignByContractId(1);
		
		System.out.println(bean1);
		System.out.println(bean2);
	}
}
