<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%@page import="com.railway.bean.RailwayCrossingBean"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <link rel="stylesheet" href="AdminHomecss.css" />
</head>

<body>

    <h1>Admin Home Page</h1>

    <div class="logout-container">
        <form action="Login.jsp" method="get">
            <button type="submit" class="logout-btn">Logout</button>
        </form>
    </div>

    <div class="action-bar">
        <form action="AddForm.jsp">
            <%
                RailwayCrossingBean r = new RailwayCrossingBean();
                session.setAttribute("add", r);
            %>
            <button type="submit">Add</button>
        </form>

        <form action="SearchResult.jsp" method="get">
            <input type="text" name="searchName" class="search-input" placeholder="Enter crossing name" required />
            <button type="submit">Search</button>
        </form>
    </div>

    <table>
        <thead>
            <tr>
                <th>Sr.No</th>
                <th>Name</th>
                <th>Address</th>
                <th>Landmark</th>
                <th>Train Schedule</th>
                <th>Person In-charge</th>
                <th>Status</th>
                <th id="act">Action</th>
            </tr>
        </thead>
        <tbody>
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
                    <form action="UpdateForm.jsp" method="get" style="display: inline;">
                        <input type="hidden" name="name" value="<%= rcb.getName() %>" />
                        <% session.setAttribute("update", rcb); %>
                        <button type="submit">Update</button>
                    </form>
                    <form action="DeleteCrossingForm.jsp" method="get" style="display: inline;">
                        <input type="hidden" name="name" value="<%= rcb.getName() %>" />
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        <%
                i++;
            }
        %>
        </tbody>
    </table>

</body>
</html>
