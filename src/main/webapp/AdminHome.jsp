<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%@page import="com.railway.bean.RailwayCrossingBean"%>
<%@page import="java.util.ArrayList"%>

<html>

	<head>
   <link rel="stylesheet" href="AdminHomecss.css" />

</head>

	
	<body>
	
		<div class="header">
    <h2>Admin Home Page</h2>
</div>
		<%
		
		ArrayList<RailwayCrossingBean> all=RailwayCrossingDao.selectAll();%>
		<div class="logout-container">
    		<form action="Login.jsp" method="get">
        	<button type="submit" class="logout-btn">Logout</button>
   			</form>
		</div>
		
		<div style="display: flex; justify-content: space-between; align-items: center; margin: 30px auto; max-width: 1200px;"">
			<form action="AddForm.jsp" style="margin-left: 80px;">
				<%RailwayCrossingBean r = new RailwayCrossingBean();
				session.setAttribute("add",r); %>
				<button type="submit" style="width:200px">Add</button>		
			</form>
		
			<form action="SearchResult.jsp" method="get" style="display: flex; gap: 12px;">
        		<input type="text" name="searchName" placeholder="Enter crossing name" required
               	style="padding: 10px 15px; font-size: 1rem; border-radius: 12px; border: 1px solid #ccc; outline: none;" />
        		<button type="submit">Search</button>
    		</form>	
		</div>

		<table border="4">
		<tr>
            <th>Sr.No</th>
            <th>Name</th>
            <th>Address</th>
            <th>Landmark</th>
            <th>Train Schedule</th>
            <th>Person In-charge</th>
            <th>Status</th>
            <th>Action</th>
        </tr>
 
        <%
            ArrayList<RailwayCrossingBean> allCrossings = RailwayCrossingDao.selectAll();
            int i = 1;
            for (RailwayCrossingBean rcb : allCrossings) {
        %>
            <tr>
                <td><%= i %></td>
                <td><%= rcb.getName() %></td>
                <td><%= rcb.getAddress() %></td>
                <td><%= rcb.getLandmark() %></td>
                <td><%= rcb.getTrainschedules() %></td>
                <td><%= rcb.getPersonincharges() %></td>
                <td><%= rcb.getStatus() %></td>
                <td>
                    <!-- Update Button -->
                    <form action="UpdateForm.jsp" method="get" style="display: inline;">
                        <input type="hidden" name="name" value="<%= rcb.getName() %>"/>
                        <%
                            session.setAttribute("update", rcb);
                        %>
                        <button type="submit" style="margin-bottom:10px">Update</button>
                    </form>
 
                    <!-- Delete Button -->
                    <form action="DeleteCrossingForm.jsp" method="get" style="display: inline margin-top:10px;">
                        <input type="hidden" name="name" value="<%= rcb.getName() %>"/>
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        <%
                i++;
            }
        %>
 						
		</table>
		
	</body>

</html>