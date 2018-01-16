package carloan;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.beans.PageBean;
import org.orange.carloan.beans.UserMessageBean;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.orange.carloan.userMessagemag.dao.impl.UserMessageDaoImpl;
import org.orange.carloan.userMessagemag.repository.UserMessageRepository;
import org.orange.carloan.userMessagemag.service.IUserMessageWritService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:Spring-context.xml" })
public class TestMessage {

	@Resource
	private IUserMessageWritService userMessageWrit;
	@Resource
	private UserMessageRepository  userMessageRepository; 
	
	@Resource
	private UserMessageDaoImpl userMessageDaoImpl;
	
	@Test
	public void testRead() {
		
	}
	
	//测试Dao层
	@Test
	public void testDaoceng(){
		
		
		System.out.println(userMessageDaoImpl.findUserMessageByContractId(1));
		
	}
	
	
	
	//修改数据，先查后改
//	@Test
//	public void TestupdateUserMessageBean() {
//		UserMessageBean um=userMessageRepository.findOne(1);
//		um.setAddress("测试34");
//		userMessageWrit.updateUserMessage(um);
//	}
//	 //删除数据，根据ID
//	@Test
//	public void TestdeletUserMessage() {
//		
//		userMessageWrit.deletUserMessage(1);
//	}
//	@Test
//	public void testsave() {
//		UserMessageBean umb=new UserMessageBean();
//		umb.setAddress("测试类");
//		umb.setChannel("12d");
//		
//		
//		userMessageWrit.saveUserMessageBean(umb);
//	}
}
