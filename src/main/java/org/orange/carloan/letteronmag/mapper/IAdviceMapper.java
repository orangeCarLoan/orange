package org.orange.carloan.letteronmag.mapper;

import org.orange.carloan.beans.AdviceBean;

public interface IAdviceMapper {

	/**
	 * 根据综合意见表id查询审核的综合意见信息
	 * @param id
	 * @return
	 */
	public AdviceBean findAdviceByAdviceId(int id);
	 
}
