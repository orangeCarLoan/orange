package org.orange.carloan.carMessagemag.service;

import org.orange.carloan.beans.CarMessageBean;

/**
 * 车辆信息业务方法
 * @author Administrator
 *
 */
public interface ICarMessageService {

	/**评估师的保存或提交方法
	 * 
	 * 根据contractInformationId查询出合同类，
	 * 首先判断状态是否被撤销，是则返回false，
	 * 否则
	 * 将carMessage放入该合同类属性中，
	 * 判断isSubmit是否为true，
	 * 如果是，
	 * 		判断carMessage和carMessage中的车辆附件属性是否为空，是则返回false
	 * 		不是
	 * 		则判断合同类的状态是3还是4
	 * 		如果是3，则将该合同类的状态改为5，
	 * 		否则，改为6
	 * 		然后执行合同类的update方法
	 * 否者直接执行update方法
	 * @param carMessage
	 */
	//34
	public boolean saveCarMessage(int contractInformationId,CarMessageBean carMessage,boolean isSubmit);
	
	/**定价师的保存或提交方法
	 * 根据contractInformationId查询出合同类，
	 * 取出车辆信息属性，将车辆信息属性中的车辆评估价格改为carPrice，
	 * 然后判断isSubmit是否为true，
	 * 如果是，则将合同信息类的状态5，然后执行update方法，
	 * 否则，直接执行车辆信息的update方法即可。
	 * 
	 */
	//5
	public boolean saveCarMessage(int contractInformationId,int carPrice,boolean isSubmit);
	
	/**定价师的回退方法
	 * 
	 * 首先判断fallbackContent信息是否为null或者""，
	 * 如果是，则返回false，
	 * 否则，根据contractInformationId查询出合同类，
	 * 将合同类的回退信息改为fallbackContent，
	 * 并且将合同类中的车辆状态3
	 * 从合同类属性中取出车辆信息，如果不为null，则执行删除车辆信息的方法
	 * 然后将合同信息类的车辆信息属性设为null。
	 * 然后执行update方法。
	 * @param fallbackContent
	 */
	public boolean updateCarMessage(String fallbackContent,int contractInformationId);
	
}
