<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;" %>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%@page import="java.text.*;" %>
<%@page import="connectioncode.connectionclass;" %>

<%
session.removeAttribute("uid");    
 response.sendRedirect("adminlogin.jsp");
   
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    </body>
</html>
