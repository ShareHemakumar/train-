<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%@page import="com.railway.bean.RailwayCrossingBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Crossing</title>
</head>
<body>
<h1>Add Crossing Page</h1>
 <jsp:useBean id="rcb" class="com.railway.bean.RailwayCrossingBean">
 <jsp:setProperty name="rcb" property="*"/>
 </jsp:useBean>
<%
   


    int result = RailwayCrossingDao.AddByName(rcb);
 
    if(result == 1){
%>
<jsp:forward page="AdminHome.jsp"/>
<%
    } else {
        out.println("Add Failed");
    }
%>
 
</body>
</html>