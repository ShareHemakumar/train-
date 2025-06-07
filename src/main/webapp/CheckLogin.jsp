<%@page import="com.railway.dao.RailwayCrossingDao"%>
 
<html>
<body>
<%
        String userType = request.getParameter("user"); // this will now get either "admin" or "user"
        String email = request.getParameter("email");
        String pass = request.getParameter("pass");
 
        
        String result = RailwayCrossingDao.checkLogin(email, pass, userType);
 
        if ("admin".equals(result)) {
			    %>
			<jsp:forward page="AdminHome.jsp"/>
			<%
        } else if ("user".equals(result)) {
			    %>
			<jsp:forward page="UserHome.jsp"/>
			<%
        } else {
			    %>
			<jsp:forward page="Login.jsp"/>
			<%
        }
    %>
</body>
</html>