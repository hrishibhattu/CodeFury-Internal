package com.toyodo.model;

public class Employee {
	//attributes
	private String employee_id;
	private String name;
	private String password;
	
	//getter setter
	public String getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(String employee_id) {
		this.employee_id = employee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//constructor
	public Employee(String employee_id, String password) {
		
		this.employee_id = employee_id;
		this.password = password;
	}
}
