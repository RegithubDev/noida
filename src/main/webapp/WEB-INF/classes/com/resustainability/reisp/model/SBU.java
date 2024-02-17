package com.resustainability.reisp.model;

public class SBU {

	private String id	,company_code,company_name	,sbu_code	,sbu_name,status,from_date,user_id,password,
	
	all_sbu,active_sbu,inActive_sbu;

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFrom_date() {
		return from_date;
	}

	public void setFrom_date(String from_date) {
		this.from_date = from_date;
	}

	public String getAll_sbu() {
		return all_sbu;
	}

	public void setAll_sbu(String all_sbu) {
		this.all_sbu = all_sbu;
	}

	public String getActive_sbu() {
		return active_sbu;
	}

	public void setActive_sbu(String active_sbu) {
		this.active_sbu = active_sbu;
	}

	public String getInActive_sbu() {
		return inActive_sbu;
	}

	public void setInActive_sbu(String inActive_sbu) {
		this.inActive_sbu = inActive_sbu;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCompany_code() {
		return company_code;
	}

	public void setCompany_code(String company_code) {
		this.company_code = company_code;
	}

	public String getSbu_code() {
		return sbu_code;
	}

	public void setSbu_code(String sbu_code) {
		this.sbu_code = sbu_code;
	}

	public String getSbu_name() {
		return sbu_name;
	}

	public void setSbu_name(String sbu_name) {
		this.sbu_name = sbu_name;
	}
	
}
