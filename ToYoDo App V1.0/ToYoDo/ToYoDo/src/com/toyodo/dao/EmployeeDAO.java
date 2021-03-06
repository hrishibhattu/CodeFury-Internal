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

	String getEmployeeDetailsByEmpId(String empId);

	void importProducts(List<Products> products);

	void closeConnection();

	String getLastAccessTime(String employeeId, String currentAccessTime);
}
