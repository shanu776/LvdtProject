package com.lvdtTest.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="add_model")
public class AddModel {

	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	@Column(name="model_no")
	private String model_no;
	@Column(name="customer_name")
	private String customer_name;
	@Column(name="model_name")
	private String model_name;
	@Column(name="job_entry_type")
	private String job_entry_type;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getModel_no() {
		return model_no;
	}
	public void setModel_no(String model_no) {
		this.model_no = model_no;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getJob_entry_type() {
		return job_entry_type;
	}
	public void setJob_entry_type(String job_entry_type) {
		this.job_entry_type = job_entry_type;
	}	
	
}
