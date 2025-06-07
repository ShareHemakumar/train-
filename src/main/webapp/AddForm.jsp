<%@page import="com.railway.bean.RailwayCrossingBean"%>
<html>
<head>
<link rel="stylesheet" href="AddFormcss.css">

</head>
<body>
<h1>Railway Crossing</h1>
<h6>Add Railway Crossing Information</h6>
<%RailwayCrossingBean rcb=(RailwayCrossingBean)session.getAttribute("add");%>
<form action="AddCrossingForm.jsp">
Enter name :<input type="text"  name="name"/><br/>
Enter Address :<input type="text"  name="address"/><br/>
Enter landmark :<input type="text"  name="landmark"/><br/>
Enter trainschedules:<input type="text"  name="trainschedules"/><br/>
Enter PersonIncharge : <input type="text"  name="personincharges"/><br/>
Enter status : <input type="text"  name="status"/><br/>
<button type="submit">Add RailwayCrossing</button>
</form>

</body>
</html>