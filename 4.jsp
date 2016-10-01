

<%--jdbc:sqlite:C:\sqlite\test.db table first --%>




<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>4</title>
    </head>
    <body>
        <p>from database test.db table "first"</p>
        
        <ul>
        <% 
        Class.forName("org.sqlite.JDBC");
        Connection c = DriverManager.getConnection("jdbc:sqlite:C:/sqlite/test.db", "", "");
        Statement s = c.createStatement();
        ResultSet result = s.executeQuery("SELECT * FROM first");
while (result.next()){
%>
<li>
    <%=result.getString("a") %>
    <%=result.getString("b") %>
   
    
    
    
</li>
                        <%
}   
c.close();
        %>
                </ul>
               
    </body>
</html>