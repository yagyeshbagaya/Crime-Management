<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="javax.servlet.http.HttpSession;" %>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%@page import="connectioncode.connectionclass;" %>
<% connectionclass con=new connectionclass(); %>
<% String status=""; %>
<% String alertstatus=""; %>

<%
    if(request.getParameter("btn1")!=null)
    {
        
 String uname=request.getParameter("tuser").toString();
 String pwd=request.getParameter("tpwd").toString();        
 String qry="select * from admin where uname='"+uname+"' and pass='"+pwd+"'";
  ResultSet rs=con.record(qry);
        
        if(rs.next())
        {
session.setAttribute("uid", rs.getString(1));
session.setAttribute("uname", rs.getString(2));
response.sendRedirect("adminprofile.jsp");
        }
        else
        {
            status="Invalid User Name or Password Try Again!";
            alertstatus="alert-danger";
        }
    }      
 %>
<html>

    <head>
 <meta name="viewport" content="width=device=width,initial-scale=1.0" >
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Admin Login Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script type="text/javascript" src="css/jquery.min.js" ></script>
 <script type="text/javascript" src="css/popper.min.js" ></script>
 <script type="text/javascript" src="css/bootstrap.min.js" ></script>
    </head>
    <body>
 <div class="container" >
 <div class="row" >
 <div class="col-md-3" ></div>
 <div class="col-md-6" >
                    <br><br>
                    <br><br>
<h4 class="display-4 font-weight-normal" > Login Panel</h4>
<form class="form" id="frm" name="frm" action="" method="post" >
<div class="form-group" >
<label for="l1" >Enter User Name</label>
<input type="text" id="tuser" name="tuser" class="form-control" placeholder="Enter User Name!" >
</div>
<div class="form-group" >
<label for="l2" >Enter Password</label>
<input type="password" id="tpwd" name="tpwd" class="form-control" placeholder="Enter Password!" >
</div>
<div class="form-group" >                           
<input type="submit" id="btn1" name="btn1" class="btn btn-dark" value="Login Now" >
<a href="adminforgot.jsp" class="btn btn-info" >Forget Now</a>                            
</div>
                                                
 </form>
 <div class="alert <%=alertstatus%>" >
   <h5><%=status %></h5>
  </div>                    
                    
  </div>
  <div class="col-md-3" ></div>
  </div>
  </div>                
        
        
</body>
</html>
