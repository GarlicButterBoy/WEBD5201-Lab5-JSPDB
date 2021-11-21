<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
 "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<!-- IMPORTS -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib prefix="x"   uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="com.mysql.jdbc.*"%>
<%@ page import="webd5201.lab5.flintn.*" %>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<html>
   <head>
      <title><%= title %></title>
   </head>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="./index.jsp">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./select.jsp">SELECT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./update.jsp">UPDATE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./delete.jsp">DELETE</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./insert.jsp">INSERT</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="./reset.jsp">RESET</a>
      </li>
    </ul>
  </div>
</nav>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/test?characterEncoding=utf8"
         user = "root"  password = "100303769"/>
 
