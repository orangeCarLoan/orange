package org.orange.carloan.carMessagemag.service;

import java.util.List;

import org.orange.carloan.beans.CarMessageBean;

/**
 * 车辆信息业务方法
 * @author Administrator
 *
 */
public interface ICarMessageWritService {
 
	/**评估师的保存或提交方法
	 * 
	 * 根据contractInformationId查询出合同类，
	 * 首先判断状态是否被撤销，如果状态码为0，,则返回false，
	 * 否则
	 * 将carMessage放入该合同类属性中，
	 * 判断isSubmit是否为1，
	 * 如果是，
	 * 		判断合同类中的回退状态（is_fallback)
	 * 		如果等于0或者等于2，则将合同信息类的状态改为3。
	 * 		如果等于1，则将合同信息类的状态改为5。
	 * 		并将回退状态（isFallback）改为0
	 * 		在执行合同信息类的update方法。
	 * 否者直接执行update方法
	 * @param carMessage
	 */
	//2
	public boolean saveCarMessage(int contractInformationId,List<CarMessageBean> carMessage,int isSubmit);
	
	/**定价师的保存或提交方法
	 * 根据contractInformationId查询出合同类，
	 * 取出车辆信息属性，将车辆信息属性中的车辆评估价格改为carPrice，
	 * 然后判断isSubmit是否为1，
	 * 如果是，则将合同信息类的状态4，然后执行update方法，
	 * 否则，直接执行车辆信息的update方法即可。
	 * 
	 */
	//3
	public boolean saveCarMessage(int contractInformationId,int[] carPrice,int isSubmit);
	
	/**定价师的回退方法
	 * 
	 * 首先判断fallbackContent信息是否为null或者""，
	 * 如果是，则返回false，
	 * 否则，根据contractInformationId查询出合同类，
	 * 将合同类的回退信息改为fallbackContent，
	 * 并且将合同类中的状态改为2，是否被回退(isFallback)改为2
	 * 然后将合同类中的车辆信息中的车辆评估价格改为0，或null
	 * 
	 * 然后执行合同类的update方法。
	 * @param fallbackContent
	 */
	public boolean updateCarMessage(String fallbackContent,int contractInformationId);
	
}
