package org.orange.carloan.letteronmag.dao;

import javax.annotation.Resource;

import org.orange.carloan.beans.AdviceBean;
import org.orange.carloan.letteronmag.mapper.IAdviceMapper;
import org.springframework.stereotype.Repository;

@Repository
public class LetterOnDaoImpl implements ILetterOnDao {

	@Resource
	private IAdviceMapper mapper;
	
	@Override
	public AdviceBean findAdviceByAdviceId(int id) {
		// TODO Auto-generated method stub
		return mapper.findAdviceByAdviceId(id);
	}
 
}
