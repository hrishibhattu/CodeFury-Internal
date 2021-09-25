package com.toyodo.dao;

import com.toyodo.model.Customer;

public interface CustomerDAO {
	void createConnection();
	String customerLogin(Customer customerLogin);
	void closeConnection();
	String getLastAccessTime(String customerId, String currentAccessTime);
	String getCustomerDetailsByEmpId(String custId);
}
