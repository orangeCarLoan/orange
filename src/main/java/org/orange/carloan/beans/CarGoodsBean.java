package org.orange.carloan.beans;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_cargoods")
public class CarGoodsBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1526203477202111058L;
	
	@Id
	@Column(name="id")
	@GenericGenerator(name="hibernate.strategy", strategy="identity")
	@GeneratedValue(generator="hibernate.strategy")
	private int id;
	
	//物品名称
	@Column(name="goods_name")
	private String goodsName;
	
	//物品数量
	@Column(name="goods_num")
	private int goodsNum;
	
	//车内物品与车辆是一对多的关系，一的这边有多的那边的引用
	@ManyToOne(fetch=FetchType.LAZY,cascade=CascadeType.ALL)
	@JoinColumn(name="carmessage_id")
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
