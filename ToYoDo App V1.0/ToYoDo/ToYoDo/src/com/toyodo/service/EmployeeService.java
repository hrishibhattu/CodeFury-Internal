package com.toyodo.service;

import java.util.List;

import com.toyodo.model.Employee;
import com.toyodo.model.Order;
import com.toyodo.model.Products;

public interface EmployeeService {
	String employeeLogin(Employee employeeLogin);
	List<Order> listOrder();
	List<Products> listProducts();
	void importProducts(List<Products> products);
	public String getEmployeeName(String employeeId);
	String getLastAccessTime(String employeeId, String currentAccessTime);
}
