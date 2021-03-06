package com.toyodo.model;

import java.sql.Date;

public class Order {
	private String order_id;
	private Date order_date;
	private String customer_id;
	private String customer_shipping_address;
	private String list_of_products;
	private double total_order_value;
	private double shipping_cost;
	private String shipping_agency;
	private String status;
	public String getOrder_id() {
		return order_id;
	}
	public void setOrder_id(String order_id) {
		this.order_id = order_id;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_shipping_address() {
		return customer_shipping_address;
	}
	public void setCustomer_shipping_address(String customer_shipping_address) {
		this.customer_shipping_address = customer_shipping_address;
	}
	public String getList_of_products() {
		return list_of_products;
	}
	public void setList_of_products(String list_of_products) {
		this.list_of_products = list_of_products;
	}
	public double getTotal_order_value() {
		return total_order_value;
	}
	public void setTotal_order_value(double total_order_value) {
		this.total_order_value = total_order_value;
	}
	public double getShipping_cost() {
		return shipping_cost;
	}
	public void setShipping_cost(double shipping_cost) {
		this.shipping_cost = shipping_cost;
	}
	public String getShipping_agency() {
		return shipping_agency;
	}
	public void setShipping_agency(String shipping_agency) {
		this.shipping_agency = shipping_agency;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Order(String order_id, Date order_date, String customer_id, String customer_shipping_address,
			String list_of_products, double total_order_value, double shipping_cost, String shipping_agency,
			String status) {
		super();
		this.order_id = order_id;
		this.order_date = order_date;
		this.customer_id = customer_id;
		this.customer_shipping_address = customer_shipping_address;
		this.list_of_products = list_of_products;
		this.total_order_value = total_order_value;
		this.shipping_cost = shipping_cost;
		this.shipping_agency = shipping_agency;
		this.status = status;
	}
	
	
}
