package org.orange.carloan.beans;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="t_caradjunct")
public class CarAdjunctBean implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 3533136069541428240L;

	

	@Id
	@Column(name="id")
	@GenericGenerator(name="hibIdentity", strategy="identity")
	@GeneratedValue(generator="hibIdentity")
	
	private Integer id;
	
	@Column(name="car_assessList",length=20)	
	private String carAssessList;
	
	@Column(name="car_photo",length=42)
	private String carPhoto;
	
	@Column(name="car_register",length=20)
	private String carRegister;
	
	@Column(name="car_license",length=20)
	private String carLicense;
	
	@Column(name="guarantee_compulsory",length=20)
	private String gutCompulsory;
	
	@Column(name="guarantee_ commercial",length=20)
	private String gutCommercial;
	
	@Column(name="other_attachments",length=20)
	private String otherAttachments;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "THEMEID")
	@Cascade({CascadeType.ALL})
	private CarMessageBean carMessageBean;
	
	
	
	public CarMessageBean getCarMessageBean() {
		return carMessageBean;
	}

	public void setCarMessageBean(CarMessageBean carMessageBean) {
		this.carMessageBean = carMessageBean;
	}

	public CarAdjunctBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCarAssessList() {
		return carAssessList;
	}

	public void setCarAssessList(String carAssessList) {
		this.carAssessList = carAssessList;
	}

	public String getCarPhoto() {
		return carPhoto;
	}

	public void setCarPhoto(String carPhoto) {
		this.carPhoto = carPhoto;
	}

	public String getCarRegister() {
		return carRegister;
	}

	public void setCarRegister(String carRegister) {
		this.carRegister = carRegister;
	}

	public String getCarLicense() {
		return carLicense;
	}

	public void setCarLicense(String carLicense) {
		this.carLicense = carLicense;
	}

	public String getGutCompulsory() {
		return gutCompulsory;
	}

	public void setGutCompulsory(String gutCompulsory) {
		this.gutCompulsory = gutCompulsory;
	}

	public String getGutCommercial() {
		return gutCommercial;
	}

	public void setGutCommercial(String gutCommercial) {
		this.gutCommercial = gutCommercial;
	}

	public String getOtherAttachments() {
		return otherAttachments;
	}

	public void setOtherAttachments(String otherAttachments) {
		this.otherAttachments = otherAttachments;
	}

	@Override
	public String toString() {
		return "CarAdjunctBean [id=" + id + ", carAssessList=" + carAssessList + ", carPhoto=" + carPhoto
				+ ", carRegister=" + carRegister + ", carLicense=" + carLicense + ", gutCompulsory=" + gutCompulsory
				+ ", gutCommercial=" + gutCommercial + ", otherAttachments=" + otherAttachments + ", carMessageBean="
				+ carMessageBean + "]";
	}

	
	
	
}
