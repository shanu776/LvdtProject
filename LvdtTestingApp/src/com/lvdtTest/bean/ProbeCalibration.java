package com.lvdtTest.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="probe_calibration")
public class ProbeCalibration {

	@Id
	@Column(name="id")
	private Integer id;
	@Column(name="ref1")
	private String ref1;
	@Column(name="ref2")
	private String ref2;
	@Column(name="nominalval")
	private String nominalval;
	@Column(name="scale_factor")
	private String scaleFactor;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getRef1() {
		return ref1;
	}
	public void setRef1(String ref1) {
		this.ref1 = ref1;
	}
	public String getRef2() {
		return ref2;
	}
	public void setRef2(String ref2) {
		this.ref2 = ref2;
	}
	public String getNominalval() {
		return nominalval;
	}
	public void setNominalval(String nominalval) {
		this.nominalval = nominalval;
	}
	public String getScaleFactor() {
		return scaleFactor;
	}
	public void setScaleFactor(String scaleFactor) {
		this.scaleFactor = scaleFactor;
	}
	
	
}
