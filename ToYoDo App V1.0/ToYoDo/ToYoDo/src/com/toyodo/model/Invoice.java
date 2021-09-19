package com.toyodo.model;

import java.util.Date;
import java.util.List;

public class Invoice {
	private String Invoice_ID;
	private Date Invoice_date;
	private Customer Customer_Details;
	private Order Order_Details;
	private List<Products> product_list;
	private String type;
	private int total_gst_amount;
	private int total_invoice_value;
	private String status;
	public Invoice(String invoice_ID, Date invoice_date, Customer customer_Details, Order order_Details,
			List<Products> product_list, String type, int total_gst_amount, int total_invoice_value, String status) {
		super();
		Invoice_ID = invoice_ID;
		Invoice_date = invoice_date;
		Customer_Details = customer_Details;
		Order_Details = order_Details;
		this.product_list = product_list;
		this.type = type;
		this.total_gst_amount = total_gst_amount;
		this.total_invoice_value = total_invoice_value;
		this.status = status;
	}
	public Invoice() {
		super();
	}
	public String getInvoice_ID() {
		return Invoice_ID;
	}
	public void setInvoice_ID(String invoice_ID) {
		Invoice_ID = invoice_ID;
	}
	public Date getInvoice_date() {
		return Invoice_date;
	}
	public void setInvoice_date(Date invoice_date) {
		Invoice_date = invoice_date;
	}
	public Customer getCustomer_Details() {
		return Customer_Details;
	}
	public void setCustomer_Details(Customer customer_Details) {
		Customer_Details = customer_Details;
	}
	public Order getOrder_Details() {
		return Order_Details;
	}
	public void setOrder_Details(Order order_Details) {
		Order_Details = order_Details;
	}
	public List<Products> getProduct_list() {
		return product_list;
	}
	public void setProduct_list(List<Products> product_list) {
		this.product_list = product_list;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getTotal_gst_amount() {
		return total_gst_amount;
	}
	public void setTotal_gst_amount(int total_gst_amount) {
		this.total_gst_amount = total_gst_amount;
	}
	public int getTotal_invoice_value() {
		return total_invoice_value;
	}
	public void setTotal_invoice_value(int total_invoice_value) {
		this.total_invoice_value = total_invoice_value;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Invoice [Invoice_ID=" + Invoice_ID + ", Invoice_date=" + Invoice_date + ", Customer_Details="
				+ Customer_Details + ", Order_Details=" + Order_Details + ", product_list=" + product_list + ", type="
				+ type + ", total_gst_amount=" + total_gst_amount + ", total_invoice_value=" + total_invoice_value
				+ ", status=" + status + "]";
	}
}
