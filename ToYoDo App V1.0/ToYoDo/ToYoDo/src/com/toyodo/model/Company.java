package com.toyodo.model;

public class Company {
	private String company_name;
	private String address;
	private String city;
	private String gst_number;
	@Override
	public String toString() {
		return "Company [company_name=" + company_name + ", address=" + address + ", city=" + city + ", gst_number="
				+ gst_number + "]";
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGst_number() {
		return gst_number;
	}
	public void setGst_number(String gst_number) {
		this.gst_number = gst_number;
	}
	public Company(String company_name, String address, String city, String gst_number) {
		super();
		this.company_name = company_name;
		this.address = address;
		this.city = city;
		this.gst_number = gst_number;
	}
	public Company() {
		super();
	}
}
