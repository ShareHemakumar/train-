<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*,java.util.*" %>
<html>
<head>
    <title>Railway Crossings</title>
    <link rel="stylesheet" href="UserHomecss.css" />
    
</head>
<body>
 
<div class="header">
    <h2>Railway Crossings</h2>
    <a href="Login.jsp" class="logout-link">Logout</a>
</div>
 
<div class="filter-buttons">
    <a href="UserHome.jsp?filter=all">All Crossings</a>
    <a href="UserHome.jsp?filter=favorites">Favorites</a>
</div>
 
<div class="search-container">
    <form action="UserHome.jsp" method="get">
        <input type="hidden" name="filter" value="<%= request.getParameter("filter") != null ? request.getParameter("filter") : "all" %>"/>
        <input type="text" name="search" placeholder="Search by name..." value="<%= request.getParameter("search") != null ? request.getParameter("search") : "" %>" />
        <input type="submit" value="Search" />
    </form>
</div>
 
<div class="crossings-container">
 
<%
    String filter = request.getParameter("filter");
    if (filter == null) filter = "all";
 
    String search = request.getParameter("search");
    if (search != null) {
        search = search.trim().toLowerCase();
    } else {
        search = "";
    }
 
    List<String> favorites = (List<String>) session.getAttribute("favorites");
    if (favorites == null) {
        favorites = new ArrayList<>();
        session.setAttribute("favorites", favorites);
    }
 
    String addFav = request.getParameter("addfav");
    String removeFav = request.getParameter("removefav");
 
    // Add favorite if requested
    if (addFav != null && !favorites.contains(addFav)) {
        favorites.add(addFav);
        session.setAttribute("favorites", favorites);
    }
 
    // Remove favorite if requested
    if (removeFav != null && favorites.contains(removeFav)) {
        favorites.remove(removeFav);
        session.setAttribute("favorites", favorites);
    }
 
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/railway", "root", "Hemakumar@2001");
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM railwaycrossing");
 
        boolean foundAny = false;
 
        while (rs.next()) {
            String crossingName = rs.getString("name");
 
            // Filter favorites or all
            if ("favorites".equals(filter) && !favorites.contains(crossingName)) {
                continue;
            }
 
            // Search filter
            if (!search.isEmpty() && !crossingName.toLowerCase().contains(search)) {
                continue;
            }
 
            foundAny = true;
%>
    <div class="crossing">
        <h3><%= crossingName %></h3>
        <p>Status: <span class="status <%= rs.getString("status").equalsIgnoreCase("Closed") ? "closed" : "open" %>">
            <%= rs.getString("status") %>
        </span></p>
        <p><strong>Person-in-Charge:</strong> <%= rs.getString("personincharge") %></p>
        <p><strong>Train Schedule:</strong> <%= rs.getString("trainschedules") %></p>
        <p><strong>Landmark:</strong> <%= rs.getString("landmark") %></p>
        <p><strong>Address:</strong> <%= rs.getString("address") %></p>
        <div class="btn-container">
            <% if (!favorites.contains(crossingName)) { %>
                <a href="UserHome.jsp?filter=<%=filter%>&search=<%= java.net.URLEncoder.encode(search, "UTF-8") %>&addfav=<%= crossingName %>" class="btn">Add to Favorite</a>
            <% } else { %>
                <a href="UserHome.jsp?filter=<%=filter%>&search=<%= java.net.URLEncoder.encode(search, "UTF-8") %>&removefav=<%= crossingName %>" class="btn" style="background-color:#f44336;">Unfavorite</a>
            <% } %>
        </div>
    </div>
<%
        }
 
        if (!foundAny) {
            out.println("<p style='text-align:center; font-family: Georgia; color:#555;'>No railway crossings found for filter: " + filter + (search.isEmpty() ? "" : " and search: " + search) + "</p>");
        }
 
        con.close();
    } catch (Exception e) {
        out.println("<p style='color:red; text-align:center;'>Error fetching railway crossings: " + e.getMessage() + "</p>");
    }
%>
 
</div>
 
</body>
</html>