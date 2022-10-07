<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;" %>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%@page import="java.text.*;" %>
<%@page import="connectioncode.connectionclass;" %>

<% connectionclass con=new connectionclass(); %>
<html>
<head>
<meta name="viewport" content="width=device=width,initial-scale=1.0" >
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Profile Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script type="text/javascript" src="../css/jquery.min.js" ></script>
        <script type="text/javascript" src="../css/popper.min.js" ></script>
        <script type="text/javascript" src="../css/bootstrap.min.js" ></script>
    </head>
    <body>
        <div class="container-fluid" >
            <div class="row bg-danger text-light p-2" >
                <div class="col-md-5 col-sm-12"  >
                    <h1>Admin Website Panel</h1>                    
                </div>
<div class="col-md-5 col-sm-12"  ></div>
<div class="col-md-2 col-sm-12"  >
<a class="btn btn-info" href="adminprofile.jsp" >Profile</a>
<a class="btn btn-dark" href="logout.jsp" >Logout</a>
</div>
</div>