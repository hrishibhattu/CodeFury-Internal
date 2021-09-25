package com.toyodo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.toyodo.dao.impl.EmployeeDAOImpl;
import com.toyodo.model.Employee;
import com.toyodo.notification.Notify;
import com.toyodo.service.EmployeeService;
import com.toyodo.service.impl.EmployeeServiceImpl;

@WebServlet("/EmployeeLogin")
public class EmployeeLoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmployeeLoginController() {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
		
		String employeeID = request.getParameter("employeeID");
		String password = request.getParameter("employeePassword");
		Employee employeeLogin = new Employee(employeeID, password);
		EmployeeService employeeService = new EmployeeServiceImpl();
		String loginID = employeeService.employeeLogin(employeeLogin);
		System.out.println("LoginID: " + loginID);
		HttpSession session = request.getSession();
		System.out.println("Session ID: " + session.getId());
		session.setAttribute("loginID", employeeID);
		RequestDispatcher rd;
		if (loginID.equals("valid")) {
			request.setAttribute("employeeID", employeeID);
			rd = request.getRequestDispatcher("JSP/employeeOrderManagement.jsp");
			rd.forward(request, response);
		} else {
			request.setAttribute("loginStatus", Notify.LOGINERROR);
			rd = request.getRequestDispatcher("/JSP/employeeLogin.jsp");
			rd.forward(request, response);
		}
	}

}