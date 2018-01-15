package org.orange.carloan.makeloanmag.service;

public interface IMakeLoanService {

	//点击提交放款时，查询合同Id，改变状态码+1
	public void updateState(int contratId);
}
