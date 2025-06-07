<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Delete Crossing</title>
</head>
<body>
  <h1>Delete Crossing Page</h1>
  <%
    String n = request.getParameter("name");
    if (RailwayCrossingDao.deleteByName(n) == 1) {
  %>
    <jsp:forward page="AdminHome.jsp"/>
  <% } else { %>
    <p>Not Deleted</p>
  <% } %>
</body>
</html>