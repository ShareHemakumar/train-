<%@page import="com.railway.bean.RailwayCrossingBean"%>
<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%
    String name = request.getParameter("name");
 
    if (name == null || name.trim().isEmpty()) {
        out.println("Invalid crossing name.");
        return;
    }
 
    RailwayCrossingBean rcb = RailwayCrossingDao.selectByName(name);
 
    if (rcb == null) {
        out.println("Crossing not found.");
        return;
    }
 
    // Set crossing bean in session for future use if needed
    session.setAttribute("update", rcb);
%>
 
<html>
<head>
    <link rel="stylesheet" href="AddFormcss.css" />
    <title>Update Railway Crossing</title>
</head>
<body>
<h1>Railway Crossing</h1>
<h6>Update Railway Crossing Information</h6>
 
<%
    String currentStatus = rcb.getStatus();
%>
 
<form action="UpdateCrossingForm.jsp" method="post">
    Enter name :
    <input type="text" name="name" value="<%= rcb.getName() != null ? rcb.getName() : "" %>" readonly/><br/>
 
    Enter Address :
    <input type="text" name="address" value="<%= rcb.getAddress() != null ? rcb.getAddress() : "" %>" /><br/>
 
    Enter landmark :
    <input type="text" name="landmark" value="<%= rcb.getLandmark() != null ? rcb.getLandmark() : "" %>" /><br/>
 
    Enter trainschedules:
    <input type="text" name="trainschedules" value="<%= rcb.getTrainschedules() != null ? rcb.getTrainschedules() : "" %>" /><br/>
 
    Enter PersonIncharge :
    <input type="text" name="personincharges" value="<%= rcb.getPersonincharges() != null ? rcb.getPersonincharges() : "" %>" /><br/>
 
    Enter status : <br/>
    <div>
        <input type="radio" id="open" name="status" value="Open" <%= "Open".equalsIgnoreCase(currentStatus) ? "checked" : "" %> />
        <label for="open">Open</label>
 
        <input type="radio" id="closed" name="status" value="Closed" <%= "Closed".equalsIgnoreCase(currentStatus) ? "checked" : "" %> />
        <label for="closed">Closed</label><br/><br/>
    </div>
 
    <button type="submit">Update Railway Crossing</button>
</form>
</body>
</html>
 