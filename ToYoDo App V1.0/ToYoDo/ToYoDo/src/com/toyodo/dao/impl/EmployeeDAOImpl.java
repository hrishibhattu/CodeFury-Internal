package com.toyodo.dao.impl;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.toyodo.dao.EmployeeDAO;
import com.toyodo.model.Employee;
import com.toyodo.model.Order;
import com.toyodo.model.Products;
import com.toyodo.utils.DBConnection;

/*
 * @author JAVATAR
 * */

public class EmployeeDAOImpl implements EmployeeDAO {
	private static EmployeeDAOImpl employeeDAOImpl;
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;

	private List<Order> listOrder = new ArrayList<Order>();
	private List<Products> listProducts = new ArrayList<Products>();
	
	public static EmployeeDAOImpl createObject() {
		if (employeeDAOImpl == null) {
			synchronized (EmployeeDAOImpl.class) {
				employeeDAOImpl = new EmployeeDAOImpl();
			}
		}
		return employeeDAOImpl;
	}


	@Override
	public void createConnection() {
		con = DBConnection.createConnection();
	}
	
	
	@Override
	public String employeeLogin(Employee employeeLogin) {
		createConnection();
		String credential = "invalid";
		try {
			String strlogin = "SELECT * FROM `employee` WHERE `employee_id` = ? AND `password` = ?";
			ps = con.prepareStatement(strlogin);
			ps.setString(1, employeeLogin.getEmployee_id());
			ps.setString(2, employeeLogin.getPassword());
			rs = ps.executeQuery();
			if (rs.next())
				credential = "valid";
		} catch (SQLException sqlex) {
			System.out.println(sqlex);
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return credential;
	}

	@Override
	public List<Order> listOrder() {
		createConnection();
//		clear the previous record on every request to avoid appending list of orders
		if(!listOrder.isEmpty())
			listOrder.clear();
	
		PreparedStatement ps = null;
		ResultSet rs = null;
		Order order = null;
		final String strsql = "SELECT * FROM `order`";
		try {
			ps = con.prepareStatement(strsql);
			rs = ps.executeQuery();
			while (rs.next()) {
				order = new Order(rs.getString("order_id"), rs.getDate("order_date"), rs.getString("customer_id"),
						rs.getString("customer_shipping_address"), rs.getString("list_of_products"),
						rs.getDouble("total_order_value"), rs.getDouble("shipping_cost"),
						rs.getString("shipping_agency"), rs.getString("status"));
				listOrder.add(order);
			}
		} catch (SQLException sqlex) {
			System.out.println(sqlex);
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listOrder;
	}
	

	@Override
	public List<Products> listProducts() {
		createConnection();
//		clear the previous record on every request to avoid appending list of orders
		if(!listProducts.isEmpty())
			listProducts.clear();
	
		PreparedStatement ps = null;
		ResultSet rs = null;
		Products product = null;
		final String strsql = "SELECT * FROM `products`";
		try {
			ps = con.prepareStatement(strsql);
			rs = ps.executeQuery();
			while (rs.next()) {
				product = new Products(rs.getString("product_id"), rs.getString("name"), rs.getDouble("price"),
						rs.getString("category"));
				listProducts.add(product);
			}
		} catch (SQLException sqlex) {
			System.out.println(sqlex);
		} finally {
			if (ps != null) {
				try {
					ps.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return listProducts;
	}
	

	@Override
	public void closeConnection() {
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}


	@Override
	public void importProducts(List<Products> products) {
		createConnection();
		PreparedStatement ps = null;
		String insertSql = "INSERT INTO products VALUES (?, ?, ?, ?) ON DUPLICATE KEY UPDATE name=?, price=?, category=?";
		try {
			ps = con.prepareStatement(insertSql);
			for(Products p: products) {
				ps.setString(1, p.getProduct_id());
				ps.setString(2, p.getName());
				ps.setDouble(3, p.getPrice());
				ps.setString(4, p.getCategory());
				ps.setString(5, p.getName());
				ps.setDouble(6, p.getPrice());
				ps.setString(7, p.getCategory());
				ps.execute();
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}