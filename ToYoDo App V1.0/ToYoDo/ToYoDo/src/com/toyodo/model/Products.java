package com.toyodo.model;

public class Products {
	private String product_id;
	private String name;
	private Double price;
	private String category;
	public String getProduct_id() {
		return product_id;
	}
	public void setProduct_id(String product_id) {
		this.product_id = product_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Products(String product_id, String name, Double price, String category) {
		super();
		this.product_id = product_id;
		this.name = name;
		this.price = price;
		this.category = category;
	}
	
}
