package carloan;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.adminmag.dao.IAdminDao;
import org.orange.carloan.beans.AdminBean;
import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.beans.SignBean;
import org.orange.carloan.beans.UserCreditBean;
import org.orange.carloan.carMessagemag.dao.ICarMessageDao;
import org.orange.carloan.contractinformationmag.dao.IContractInformationDao;
import org.orange.carloan.letteronmag.dao.ILetterOnDao;
import org.orange.carloan.signmag.dao.ISignDao;
import org.orange.carloan.userCreditmag.dao.IUserCreditDao;
import org.orange.carloan.userIdentitymag.dao.IUserIdentityDao;
import org.orange.carloan.userMessagemag.dao.IUserMessageDao;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-context.xml")
public class Testa {


	@Resource
	private IAdminDao adminDaoImpl;
	@Resource
	private ICarMessageDao carMessageDaoImpl;
	@Resource
	private IContractInformationDao contractInformationDao;
	@Resource
	private ILetterOnDao letterOnDaoImpl;
	@Resource
	private ISignDao signDaoImpl;
	@Resource
	private IUserCreditDao userCreditDaoImpl;
	@Resource
	private IUserIdentityDao userIdentityDaoImpl;
	@Resource
	private IUserMessageDao userMessageDaoImpl;
	@Test
	public void daoTest() {
		AdminBean bean =  adminDaoImpl.findByName("123");
		System.out.println(bean.getCompanyId().getName());
		
		CarMessageBean car = carMessageDaoImpl.findCarMessageByCarMessageId(1);
		System.out.println(car.getCarGoods());
		
		AdviceBean advice = letterOnDaoImpl.findAdviceByAdviceId(1);
		System.out.println(advice.getBranchOpinion());
		
		SignBean sign = signDaoImpl.findSignBySignId(1);
		System.out.println(sign.getContractInformationBean().getContract());
		SignBean sign1 = signDaoImpl.findSignByContractId(1);
		System.out.println(sign1.getBank());
		
		UserCreditBean cred = userCreditDaoImpl.findUserCredByUserCredId(1);
		System.out.println(cred.getContractInformationBean().getContract());
		
//		UserIdentityBean user = userIdentityDaoImpl.findUserIdentityByUserIdentityId(1);
//		System.out.println(user.getAddress());
//		System.out.println(user.getContractInformationBean().getContract());
		
//		UserMessageBean user = userMessageDaoImpl.findUserMessageByUserMessageId(1);
//		System.out.println(user.getAddress());
//		System.out.println(user.getContractInformationBean().getContract());
//		System.out.println(user.getUserAdjunctBean());
	}
	
	
//	@org.junit.Test
//	public void test() {
//		Map<String,Object> map = new HashMap<String,Object>();
//		//map.put("type", "aaa");
//		map.put("index", 0);
//		map.put("size", 10);
//		int i = contractInformationDao.findContractInformationSizeByMap(map);
//		List<ContractInformationBean> list = contractInformationDao.findContractInformationByMap(map);
//		System.out.println(i);
//		System.out.println(list);
//	}
}