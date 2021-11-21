
<%! String title = "SELECT Operation"; %>
<%@ include file="./header.jsp" %>


      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/test?characterEncoding=utf8"
         user = "root"  password = "100303769"/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from employees;
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

