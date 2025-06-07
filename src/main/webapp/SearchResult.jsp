<%@page import="com.railway.dao.RailwayCrossingDao"%>
<%@page import="com.railway.bean.RailwayCrossingBean"%>
<%@page import="java.util.ArrayList"%>

<%
    String name = request.getParameter("searchName");
    ArrayList<RailwayCrossingBean> list = RailwayCrossingDao.searchByName(name);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results</title>
    <link rel="stylesheet" href="SearchResult.css">
</head>
<body>

    <h2>Search Results for "<%= name %>"</h2>

    <% if (list.isEmpty()) { %>
        <p style="color: red;">No matching crossings found.</p>
    <% } else { %>
        <table>
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Landmark</th>
                    <th>Train Schedules</th>
                    <th>Person In-Charge</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <% for (RailwayCrossingBean rcb : list) { %>
                    <tr>
                        <td><%= rcb.getName() %></td>
                        <td><%= rcb.getAddress() %></td>
                        <td><%= rcb.getLandmark() %></td>
                        <td><%= rcb.getTrainschedules() %></td>
                        <td><%= rcb.getPersonincharges() %></td>
                        <td><%= rcb.getStatus() %></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
    <% } %>

</body>
</html>