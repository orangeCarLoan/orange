package org.orange.carloan.letteronmag.dao;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.letteronmag.mapper.IAdviceMapper;

@Resource
public class LetterOnDaoImpl implements ILetterOnDao {

	private IAdviceMapper mapper;
	
	@Override
	public AdviceBean findAdviceByAdviceId(int id) {
		// TODO Auto-generated method stub
		return mapper.findAdviceByAdviceId(id);
	}

}
