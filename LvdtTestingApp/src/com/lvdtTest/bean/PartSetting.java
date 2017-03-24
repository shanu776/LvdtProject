package com.lvdtTest.bean;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="part_setting")
public class PartSetting {

	@Id
	@GeneratedValue
	@Column(name="id")
	private Integer id;
	
	@Column(name="model_no")
	private String model_no;
	
	@Column(name="model_name")
	private String model_name;
	
	@Column(name="parameter_name")
	private String parameter_name;
	
	@Column(name="parameter_no")
	private String parameter_no;
	
	@Column(name="dia")
	private String dia;
	
	@Column(name="height")
	private String height;
	
	@Column(name="apg_no")
	private String apg_no;
	
	@Column(name="iteration")
	private String iteration;
	
	@Column(name="depth_of_set")
	private String depth_of_set;
	
	@Column(name="token_limit")
	private String token_limit;
	
	@Column(name="no_of_master")
	private String no_of_master;
	
	@Column(name="spec")
	private String spec;
	
	@Column(name="usl")
	private String usl;
	
	@Column(name="lsl")
	private String lsl;
	
	@Column(name="master_dim")
	private String master_dim;
	
	@Column(name="leaxt_count")
	private String least_count;
	
	@Column(name="color_code")
	private String color_code;

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

	public String getModel_name() {
		return model_name;
	}

	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}

	public String getParameter_name() {
		return parameter_name;
	}

	public void setParameter_name(String parameter_name) {
		this.parameter_name = parameter_name;
	}

	public String getParameter_no() {
		return parameter_no;
	}

	public void setParameter_no(String parameter_no) {
		this.parameter_no = parameter_no;
	}

	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getApg_no() {
		return apg_no;
	}

	public void setApg_no(String apg_no) {
		this.apg_no = apg_no;
	}

	public String getIteration() {
		return iteration;
	}

	public void setIteration(String iteration) {
		this.iteration = iteration;
	}

	public String getDepth_of_set() {
		return depth_of_set;
	}

	public void setDepth_of_set(String depth_of_set) {
		this.depth_of_set = depth_of_set;
	}

	public String getToken_limit() {
		return token_limit;
	}

	public void setToken_limit(String token_limit) {
		this.token_limit = token_limit;
	}

	public String getNo_of_master() {
		return no_of_master;
	}

	public void setNo_of_master(String no_of_master) {
		this.no_of_master = no_of_master;
	}

	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	public String getUsl() {
		return usl;
	}

	public void setUsl(String usl) {
		this.usl = usl;
	}

	public String getLsl() {
		return lsl;
	}

	public void setLsl(String lsl) {
		this.lsl = lsl;
	}

	public String getMaster_dim() {
		return master_dim;
	}

	public void setMaster_dim(String master_dim) {
		this.master_dim = master_dim;
	}

	public String getLeast_count() {
		return least_count;
	}

	public void setLeast_count(String least_count) {
		this.least_count = least_count;
	}

	public String getColor_code() {
		return color_code;
	}

	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	
	
	

	/*@Column(name="id")
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name="model_no")
	public String getModel_no() {
		return model_no;
	}

	public void setModel_no(String model_no) {
		this.model_no = model_no;
	}

	@Column(name="model_name")
	public String getModel_name() {
		return model_name;
	}

	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}

	@Column(name="parameter_name")
	public String getParameter_name() {
		return parameter_name;
	}

	public void setParameter_name(String parameter_name) {
		this.parameter_name = parameter_name;
	}

	@Column(name="parameter_no")
	public String getParameter_no() {
		return parameter_no;
	}

	public void setParameter_no(String parameter_no) {
		this.parameter_no = parameter_no;
	}

	@Column(name="dia")
	public String getDia() {
		return dia;
	}

	public void setDia(String dia) {
		this.dia = dia;
	}

	@Column(name="height")
	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	@Column(name="apg_no")
	public String getApg_no() {
		return apg_no;
	}

	public void setApg_no(String apg_no) {
		this.apg_no = apg_no;
	}

	@Column(name="iteration")
	public String getIteration() {
		return iteration;
	}

	public void setIteration(String iteration) {
		this.iteration = iteration;
	}

	@Column(name="depth_of_set")
	public String getDepth_of_set() {
		return depth_of_set;
	}

	public void setDepth_of_set(String depth_of_set) {
		this.depth_of_set = depth_of_set;
	}

	@Column(name="token_limit")
	public String getToken_limit() {
		return token_limit;
	}

	public void setToken_limit(String token_limit) {
		this.token_limit = token_limit;
	}

	@Column(name="no_of_master")
	public String getNo_of_master() {
		return no_of_master;
	}

	public void setNo_of_master(String no_of_master) {
		this.no_of_master = no_of_master;
	}

	@Column(name="spec")
	public String getSpec() {
		return spec;
	}

	public void setSpec(String spec) {
		this.spec = spec;
	}

	@Column(name="usl")
	public String getUsl() {
		return usl;
	}

	public void setUsl(String usl) {
		this.usl = usl;
	}

	@Column(name="lsl")
	public String getLsl() {
		return lsl;
	}

	public void setLsl(String lsl) {
		this.lsl = lsl;
	}

	@Column(name="master_dim")
	public String getMaster_dim() {
		return master_dim;
	}

	public void setMaster_dim(String master_dim) {
		this.master_dim = master_dim;
	}

	@Column(name="least_count")
	public String getLeast_count() {
		return least_count;
	}

	public void setLeast_count(String least_count) {
		this.least_count = least_count;
	}

	@Column(name="color_code")
	public String getColor_code() {
		return color_code;
	}

	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	
	*/
	
}
