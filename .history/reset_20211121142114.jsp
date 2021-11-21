
<%! String title = "RESET Operation"; %>
<%@ include file="./header.jsp" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<sql:update dataSource = "${snapshot}" var = "count">
    DELETE * FROM Employees
</sql:update>

<sql:update dataSource = "${snapshot}" var = "result">
    INSERT INTO Employees VALUES (100, 18, 'Zara', 'Ali');
    INSERT INTO Employees VALUES (101, 25, 'Mahnaz', 'Fatma');
    INSERT INTO Employees VALUES (102, 30, 'Zaid', 'Khan');
    INSERT INTO Employees VALUES (103, 28, 'Sumit', 'Mittal');
</sql:update>
 
<sql:query dataSource = "${snapshot}" var = "result">
    SELECT * from Employees;
</sql:query>

<table border = "1" width = "100%">
    <tr>
        <th>Emp ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Age</th>
    </tr>
         
    <c:forEach var = "row" items = "${result.rows}">
    <tr>
        <td><c:out value = "${row.id}"/></td>
        <td><c:out value = "${row.first}"/></td>
        <td><c:out value = "${row.last}"/></td>
        <td><c:out value = "${row.age}"/></td>
    </tr>
    </c:forEach>
</table>


<%@ include file="./footer.jsp" %>