package carloan;

import java.util.List;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.orange.carloan.beans.CarMessageBean;
import org.orange.carloan.carMessagemag.service.ICarMessageReadService;
import org.orange.carloan.carMessagemag.service.ICarMessageWritService;
import org.orange.carloan.contractinformationmag.service.IContractInformationReadService;
import org.orange.carloan.contractinformationmag.service.IContractInformationWritService;
import org.orange.carloan.dividemag.service.IDivideWritService;
import org.orange.carloan.letteronmag.service.ILetterOnReadService;
import org.orange.carloan.letteronmag.service.ILetterOnWritService;
import org.orange.carloan.makeloanmag.service.IMakeLoanWritService;
import org.orange.carloan.signcheckmag.service.ISignCheckReadService;
import org.orange.carloan.signcheckmag.service.ISignCheckWritService;
import org.orange.carloan.signmag.service.ISignReadService;
import org.orange.carloan.signmag.service.ISignWritService;
import org.orange.carloan.userCreditmag.service.IUserCreditWritService;
import org.orange.carloan.userIdentitymag.service.IUserIdentityWritService;
import org.orange.carloan.userMessagemag.service.IUserMessageReadService;
import org.orange.carloan.userMessagemag.service.IUserMessageWritService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-context.xml")
public class TestService {

	@Resource
	private ICarMessageReadService carMessageReadServiceImpl;
	@Resource
	private ICarMessageWritService carMessageWritServiceImpl;
	@Resource
	private IContractInformationReadService contractInformationReadServiceImpl;
	@Resource
	private IContractInformationWritService contractInformationWritServiceImpl;
	@Resource
	private IDivideWritService divideWritServiceImpl;
	@Resource
	private ILetterOnReadService letterOnReadServiceImpl;
	@Resource
	private ILetterOnWritService letterOnWritServiceImpl;
	@Resource
	private IMakeLoanWritService makeLoanWritServiceImpl;
	@Resource
	private ISignCheckReadService signCheckReadServiceImpl;
	@Resource
	private ISignCheckWritService signCheckWriteServiceImpl;
	@Resource
	private ISignReadService signReadServiceImpl;
	@Resource
	private ISignWritService signWritServiceImpl;
	@Resource
	private IUserCreditWritService userCreditWritServiceImpl;
	@Resource
	private IUserIdentityWritService userIdentityWritServiceImpl;
	@Resource
	private IUserMessageReadService userMessageReadServiceImpl;
	@Resource
	private IUserMessageWritService userMessageWritServiceImpl;
	
	@Test
	public void test() {
		List<CarMessageBean> car = carMessageReadServiceImpl.findCarMessageByContractId(1);
		System.out.println(car.getClass());
		System.out.println(car.get(0).getClass());
		System.err.println(car.get(0).getCarPlate());
		System.err.println(car.get(0).getCarAdjuncts());
		System.err.println(car.get(0).getCarGoods());
	}
}
