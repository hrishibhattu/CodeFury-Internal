# CodeFury-Internal

## Project structure
```elixir
── WebContent
│   ├── CSS
│   │   └── layout.css
│   ├── JSP
│   │   ├── customerLogin.jsp
│   │   ├── customerOrderManagement.jsp
│   │   ├── employeeImportProducts.jsp
│   │   ├── employeeLogin.jsp
│   │   ├── employeeOrderList.jsp
│   │   ├── employeeOrderManagement.jsp
│   │   ├── employeeQuote.jsp
│   │   └── index.jsp
│   ├── META-INF
│   │   └── MANIFEST.MF
│   └── WEB-INF
│       ├── lib
│       │   ├── hamcrest-2.2.jar
│       │   ├── hamcrest-core-2.2.jar
│       │   ├── json-simple-1.1.1.jar
│       │   ├── jstl-1.2.jar
│       │   ├── junit-4.13.2.jar
│       │   └── mysql-connector-java-8.0.19.jar
│       ├── nav
│       │   ├── dashboardNav.html
│       │   ├── indexNav.html
│       │   └── sidebarNav.html
│       └── web.xml
└── src
    └── com
        └── toyodo
            ├── controller
            │   ├── CustomerLoginController.java
            │   ├── EmployeeImportProducts.java
            │   ├── EmployeeLoginController.java
            │   └── LogoutController.java
            ├── dao
            │   ├── CustomerDAO.java
            │   ├── EmployeeDAO.java
            │   └── impl
            │       ├── CustomerDAOImpl.java
            │       └── EmployeeDAOImpl.java
            ├── factory
            │   ├── CustomerDAOFactory.java
            │   └── EmployeeDAOFactory.java
            ├── model
            │   ├── Company.java
            │   ├── Customer.java
            │   ├── Employee.java
            │   ├── Invoice.java
            │   ├── Order.java
            │   └── Products.java
            ├── notification
            │   └── Notify.java
            ├── service
            │   ├── CustomerService.java
            │   ├── EmployeeService.java
            │   └── impl
            │       ├── CustomerServiceImpl.java
            │       └── EmployeeServiceImpl.java
            └── utils
                ├── DBConnection.java
                └── dbresource.properties
```
