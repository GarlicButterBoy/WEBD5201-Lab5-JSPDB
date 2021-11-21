
<%! String title = "RESET Operation"; %>
<%@ include file="./header.jsp" %>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>


<sql:update dataSource = "${snapshot}" var = "count">
         DELETE * Employees
         <sql:param value = "${empId}" />
      </sql:update>


<%@ include file="./footer.jsp" %>