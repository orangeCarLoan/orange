package org.orange.carloan.beans;

import java.io.Serializable;

public class CarGoodsBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1526203477202111058L;
	private int id;
	//物品名称
	private String goodsName;
	//物品数量
	private int goodsNum;
	//车内物品与车辆是一对多的关系，一的这边有多的那边的引用
	private CarMessageBean carMsg;
	public CarGoodsBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsNum() {
		return goodsNum;
	}
	public void setGoodsNum(int goodsNum) {
		this.goodsNum = goodsNum;
	}
	public CarMessageBean getCarMsg() {
		return carMsg;
	}
	public void setCarMsg(CarMessageBean carMsg) {
		this.carMsg = carMsg;
	}
	@Override
	public String toString() {
		return "CarGoodsBean [id=" + id + ", goodsName=" + goodsName + ", goodsNum=" + goodsNum + "]";
	}
}