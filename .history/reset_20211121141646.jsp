
<%! String title = "RESET Operation"; %>
<%@ include file="./header.jsp" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<sql:update dataSource = "${snapshot}" var = "count">
    DELETE * Employees
</sql:update>

<sql:update dataSource = "${snapshot}" var = "result">
    INSERT INTO Employees VALUES (104, 2, 'Nuha', 'Ali');
    INSERT INTO Employees VALUES (100, 18, 'Zara', 'Ali');
Query OK, 1 row affected (0.05 sec)
 
mysql> INSERT INTO Employees VALUES (101, 25, 'Mahnaz', 'Fatma');
Query OK, 1 row affected (0.00 sec)
 
mysql> INSERT INTO Employees VALUES (102, 30, 'Zaid', 'Khan');
Query OK, 1 row affected (0.00 sec)
 
mysql> INSERT INTO Employees VALUES (103, 28, 'Sumit', 'Mittal');
</sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Employees;
      </sql:query>


<%@ include file="./footer.jsp" %>