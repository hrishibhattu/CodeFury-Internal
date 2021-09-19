package com.toyodo.service;

import java.util.List;

import com.toyodo.model.Employee;
import com.toyodo.model.Order;
import com.toyodo.model.Products;

public interface EmployeeService {
	String employeeLogin(Employee employeeLogin);
	List<Order> listOrder();
	List<Products> listProducts();
}
