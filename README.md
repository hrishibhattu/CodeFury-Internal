# CodeFury-Internal

└───src:
    └───main:
        ├───java:
        │   └───com:
        │          └───toyodo:
        │               ├───dao: 
        │               │       CustomerDAO.java
        │               │       EmployeeDAO.java
        |               |       ...
                                ├───impl: 
                                │       CustomerDAOImpl.java
                                │       EmployeeDAOImpl.java
        |               |               ...
        |               |
        │               ├───controller:
        │               │       CustomerDAO.java
        │               │       EmployeeDAO.java
        |               |       ...  
        │               │
        │               ├───models:
        │               │       Customer.java
        │               │       Products.java
        │               │       Order.java
        │               │       Invoice.java
        |               |       Company.java
        |               |       Employee.java
        |               |       ...
        |               |       
        │               |───service:
        │               |       CustomerService.java
        │               |       EmployeeService.java
        |               |       ...
                                ├───impl: 
                                │       CustomerServiceImpl.java
                                │       EmployeeServiceImpl.java
        |               |               ...
        |               |       
        │               |───servlet:
        │               |       CustomerLogInServlet.java
        │               |       EmployeeLogInServlet.java
        │               |       ProfileServlet.java
        │               |       LogOutServlet.java
        |               |       ...
        |               | 
        │               |───utils:
        |               |       ...
        |               | 
        │               |───exception:
        │               |       EntityTypeException.java
        |               |       ...
        │
        ├───resources:
        │   └───META-INF:
        │           persistence.xml
        │
        └───webapp:
            ├───css:
            │       bootstrap.min.css (optional)
            │       style.css
            │
            ├───img:
            │       [PNG/JPG files]
            │
            ├───js:
            │       formValidation.js
            │       bootstrap.min.js (optional)
            │       jquery-3.2.1.min.js (optional)
            │
            └───WEB-INF:
                |───lib:
                |       jstl-1.2.jar
                |       mysql-connector-java-8.0.19.jar
                │
                |───views:
                |       index.jsp (homepage)
                |       customerlogin.jsp
                |       employeelogin.jsp
                |       error.jsp (404)
                |       ...
                |
                |───nav:
                |       indexNav.html
                |       orderManagementNav.html
                |
                | web.xml
