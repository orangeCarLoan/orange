package org.orange.carloan.dividemag.service;

public interface IDivideService {

	/**
	 * 查询此单合同id，再判断审核员是否为空，为空则返回false，不能修改审核员
	 * 不为空则返回true，可以修改审核员，并且修改的审核员不能为原审核员，审核员不能为空
	 * @param contratId
	 * @param person
	 */
	public void updateCheckPerson(int contratId,String person);
	
	/**
	 * 查询此单合同id,在判断此合同中的审核员是否为空，不为空则返回false，不能添加指派审核员
	 * 若为空，返回true，并且判断审核员不能为空
	 * @param contratId
	 * @param person
	 */
	public void saveCheckPerson(int contratId,String person);
}
