package org.orange.carloan.dividemag.service;

/**
 * 审核分单
 * @author Administrator
 *
 */
public interface IDivideWritService {

	/**保存或者修改审核人员方法
	 * 
	 * 依次查询此单合同id，将合同中的审核人改为person
	 * 然后执行update方法
	 * @param contratId
	 * @param person
	 */
	//6 8
	public void updateCheckPerson(int[] contratId,String person);
	
	/**自动分单方法
	 * 
	 * 待定
	 * @param contratId
	 * @param person
	 */
	public void saveCheckPerson(int[] contratId);
}
