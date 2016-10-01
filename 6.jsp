<%-- 
    Document   : index
    Created on : Aug 19, 2016, 12:59:05 PM
    Author     : vkoloyu
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>adding</title>
    </head>
    <body>
        <h1>Hello World!</h1>
       ${id}
            
            
        <ul>
       
        <% 
        Class.forName("org.sqlite.JDBC");
        Connection c = DriverManager.getConnection("jdbc:sqlite:C:/sqlite/test.db", "", "");
        Statement s = c.createStatement();
        String g = request.getParameter("id");
        String w = request.getParameter("name");
        
        
        
//s.executeUpdate("INSERT INTO VKOLOYU.PEOPLE (id, name, city) VALUES (+'g'+, +'w'+, +'e'+)");

PreparedStatement pst = c.prepareStatement("INSERT INTO first (a, b) VALUES (?,?)");
pst.setString (1, g);
pst.setString (2, w);


int i = pst.executeUpdate();



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