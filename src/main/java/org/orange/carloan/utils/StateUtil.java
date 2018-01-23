package org.orange.carloan.utils;

public class StateUtil {

	/**
	 * 客户身份证信息状态
	 */
	public static int[] USER_IDENTITY = new int[] {1,2,3,4,5,6,7,8,9,10,11,12,13,14};
	/**
	 * 客户基本信息状态
	 */
	public static int[] USER_MESSAGE = new int[] {1};
	/**
	 * 评估师状态
	 */
	public static int[] CAR_MESSAGE_APPRAISER = new int[] {2};
	/**
	 * 定价师状态
	 */
	public static int[] CAR_MESSAGE_PRICING_DIVISION =  new int[] {3};
	/**
	 * 客户信用信息状态
	 */
	public static int[] USER_CREDIT =  new int[] {4};
	/**
	 * 分公司信审状态
	 */
	public static int[] BRANCHAUDIT =  new int[] {5};
	/**
	 * 总公司信审状态
	 */
	public static int[] HEADAUDIT =  new int[] {6};
	/**
	 * 签约状态
	 */
	public static int[] SIGN =  new int[] {7};
	/**
	 * 签约复审状态
	 */
	public static int[] SIGNCHECK =  new int[] {8};
	/**
	 * 放款状态
	 */
	public static int[] MAKELOAN =  new int[] {9};
	/**
	 * 车贷进度状态
	 */
	public static int[] PROGRESS =  new int[] {100};
	/**
	 * 审核分单状态
	 */
	public static int[] DIVIDE =  new int[] {6,8};
	
}
