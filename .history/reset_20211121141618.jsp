
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
    
</sql:update>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from Employees;
      </sql:query>


<%@ include file="./footer.jsp" %>