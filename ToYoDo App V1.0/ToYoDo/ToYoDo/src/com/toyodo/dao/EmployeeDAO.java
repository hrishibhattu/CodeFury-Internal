package com.toyodo.dao;

import java.util.List;

import com.toyodo.model.Employee;
import com.toyodo.model.Order;
import com.toyodo.model.Products;

public interface EmployeeDAO {
	void createConnection();
	String employeeLogin(Employee employeeLogin);
	List<Order> listOrder();
	List<Products> listProducts();
	void closeConnection();
}
