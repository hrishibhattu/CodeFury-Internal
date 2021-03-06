package com.toyodo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.toyodo.dao.impl.CustomerDAOImpl;
import com.toyodo.model.Customer;
import com.toyodo.notification.Notify;
import com.toyodo.service.CustomerService;
import com.toyodo.service.impl.CustomerServiceImpl;

/**
 * Servlet implementation class CustomerLogInServlet
 */
@WebServlet("/CustomerLogin")
public class CustomerLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CustomerLoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String customerNameID = request.getParameter("customerNameID");
		String password = request.getParameter("customerPassword");
		CustomerService customerService = new CustomerServiceImpl();
		Customer customerLogin = new Customer(customerNameID, customerNameID, password);
		String loginID = customerService.customerLogin(customerLogin);
		System.out.println("LoginID: " + loginID);
		HttpSession session = request.getSession();
		System.out.println("Session ID: " + session.getId());
		session.setAttribute("loginID", customerNameID);
		RequestDispatcher rd;
		if (loginID.equals("valid")) {
			request.setAttribute("customerNameID", customerNameID);
			rd = request.getRequestDispatcher("/JSP/customerOrderManagement.jsp");
			rd.forward(request, response);
		}
		else {
			request.setAttribute("loginStatus", Notify.LOGINERROR);
			rd = request.getRequestDispatcher("/JSP/customerLogin.jsp");
			rd.forward(request, response);
		}
			
	}
	

}
