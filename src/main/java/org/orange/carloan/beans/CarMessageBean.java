package org.orange.carloan.beans;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class CarMessageBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1213369175537382994L;
	private int id;
	//机动车辆号牌
	private String carPlate;
	//厂牌型号
	private String labelType;
	//发动机号
	private String engineno;
	//颜色
	private String color;
	//初次登记日期
	private Date firstTime;
	//年检有限期
	private String yesrValidity;
	//车架号
	private String chassisnum;
	//车辆评估价格
	private double carPrice;
	//目前已行驶里程数 
	private String currentTripNum;
	//身份证是否交付
	private int IDCard;
	//车辆购置证/发票是否交付
	private int carPurchase;
	//交强保险单是否交付
	private int insurance;
	//车辆钥匙是否交付
	private int carKey;
	//车辆钥匙几把
	private int carKeyNum;
	//机动车登记证是否交付
	private int carCertificate;
	//商业保险单是否交付
	private int commercial;
	//车辆行驶证是否交付
	private int carLicense;
	//车辆原始发票是否交付
	private int carInvoice;
	//车辆完税证是否交付
	private int carPayment;
	//进口车辆证明是否交付
	private int carProve;
	//车内物品外键--车辆与物品是多对一的关系
	private List<CarGoodsBean> carGoods;
	//合同信息表
	private ContractInformationBean contractInformationBean;
	//客户车辆附件表
	private CarAdjunctBean carAdjuncts;
	
	
	public ContractInformationBean getContractInformationBean() {
		return contractInformationBean;
	}
	public void setContractInformationBean(ContractInformationBean contractInformationBean) {
		this.contractInformationBean = contractInformationBean;
	}
	public void setCarAdjuncts(CarAdjunctBean carAdjuncts) {
		this.carAdjuncts = carAdjuncts;
	}
	public CarMessageBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCarPlate() {
		return carPlate;
	}
	public void setCarPlate(String carPlate) {
		this.carPlate = carPlate;
	}
	public String getLabelType() {
		return labelType;
	}
	public void setLabelType(String labelType) {
		this.labelType = labelType;
	}
	public String getEngineno() {
		return engineno;
	}
	public void setEngineno(String engineno) {
		this.engineno = engineno;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public Date getFirstTime() {
		return firstTime;
	}
	public void setFirstTime(Date firstTime) {
		this.firstTime = firstTime;
	}
	public String getYesrValidity() {
		return yesrValidity;
	}
	public void setYesrValidity(String yesrValidity) {
		this.yesrValidity = yesrValidity;
	}
	public String getChassisnum() {
		return chassisnum;
	}
	public void setChassisnum(String chassisnum) {
		this.chassisnum = chassisnum;
	}
	public double getCarPrice() {
		return carPrice;
	}
	public void setCarPrice(double carPrice) {
		this.carPrice = carPrice;
	}
	public String getCurrentTripNum() {
		return currentTripNum;
	}
	public void setCurrentTripNum(String currentTripNum) {
		this.currentTripNum = currentTripNum;
	}
	public int getIDCard() {
		return IDCard;
	}
	public void setIDCard(int iDCard) {
		IDCard = iDCard;
	}
	public int getCarPurchase() {
		return carPurchase;
	}
	public void setCarPurchase(int carPurchase) {
		this.carPurchase = carPurchase;
	}
	public int getInsurance() {
		return insurance;
	}
	public void setInsurance(int insurance) {
		this.insurance = insurance;
	}
	public int getCarKey() {
		return carKey;
	}
	public void setCarKey(int carKey) {
		this.carKey = carKey;
	}
	public int getCarKeyNum() {
		return carKeyNum;
	}
	public void setCarKeyNum(int carKeyNum) {
		this.carKeyNum = carKeyNum;
	}
	public int getCarCertificate() {
		return carCertificate;
	}
	public void setCarCertificate(int carCertificate) {
		this.carCertificate = carCertificate;
	}
	public int getCommercial() {
		return commercial;
	}
	public void setCommercial(int commercial) {
		this.commercial = commercial;
	}
	public int getCarLicense() {
		return carLicense;
	}
	public void setCarLicense(int carLicense) {
		this.carLicense = carLicense;
	}
	public int getCarInvoice() {
		return carInvoice;
	}
	public void setCarInvoice(int carInvoice) {
		this.carInvoice = carInvoice;
	}
	public int getCarPayment() {
		return carPayment;
	}
	public void setCarPayment(int carPayment) {
		this.carPayment = carPayment;
	}
	public int getCarProve() {
		return carProve;
	}
	public void setCarProve(int carProve) {
		this.carProve = carProve;
	}
	public List<CarGoodsBean> getCarGoods() {
		return carGoods;
	}
	public void setCarGoods(List<CarGoodsBean> carGoods) {
		this.carGoods = carGoods;
	}
	@Override
	public String toString() {
		return "CarMessageBean [id=" + id + ", carPlate=" + carPlate + ", labelType=" + labelType + ", engineno="
				+ engineno + ", color=" + color + ", firstTime=" + firstTime + ", yesrValidity=" + yesrValidity
				+ ", chassisnum=" + chassisnum + ", carPrice=" + carPrice + ", currentTripNum=" + currentTripNum
				+ ", IDCard=" + IDCard + ", carPurchase=" + carPurchase + ", insurance=" + insurance + ", carKey="
				+ carKey + ", carKeyNum=" + carKeyNum + ", carCertificate=" + carCertificate + ", commercial="
				+ commercial + ", carLicense=" + carLicense + ", carInvoice=" + carInvoice + ", carPayment="
				+ carPayment + ", carProve=" + carProve + ", carGoods=" + carGoods + ", contractInformationBean="
				+ contractInformationBean + ", carAdjuncts=" + carAdjuncts + "]";
	}
}
