<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="java.sql.*;" %>
<%@page import="java.util.*;" %>
<%@page import="connectioncode.connectionclass;" %>
<%connectionclass con=new connectionclass();
String alertstatus="",status="";
%>
<%
    String pass="";
if(request.getParameter("btn")!=null)
{
    String sques=request.getParameter("tuser");
    String sans=request.getParameter("tans");
    String qry="select pass from admin where sques='"+sques+"' and sans='"+sans+"'";
ResultSet rs=con.record(qry);
if(rs.next())
{
    pass=rs.getString("pass");
alertstatus="alert-danger";
     
}
    else
{
     status="Invalid Security Question or Security ans Try Again!";
     alertstatus="alert-danger";
       
}
    
}

%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
 <meta name="viewport" content="width=device=width,initial-scale=1.0" >
 <title>Admin forget Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
 <script type="text/javascript" src="css/jquery.min.js" ></script>
 <script type="text/javascript" src="css/popper.min.js" ></script>
 <script type="text/javascript" src="css/bootstrap.min.js" ></script>
</head>

    <body>
<div class="container">
<div class="row">
<div class="col-md-3"></div>
<div class="col-md-6">
    <h1 class="center">Forget passsword</h1>
    
   <br><br>
   <form class="form" id="frm" name="frm" action="" method="post" class="center" >
       <div clas="form-group">
<label for="l1">Enter Security Question</label>
<input type="text" id="tuser" name="tuser" class="form-control" placeholder="Enter Security Question!" >
</div>
       <div class="form-group">
           <label for="li">Enter Security Answer</label>
           <input type="text" id="tans" name="tans" class="form-control" placeholder="Enter Security Ans">
            </div>
       <div class="form-group" >
           <div class="center">
           <input type="submit" id="btn" name="btn" class="btn-info"  value="Show Password">          
       </div>
           </div>     
   </form>
<div class="<%=alertstatus%>">
<h5><%=pass %></h5>
</div>
      
</div>
<div class="<%=alertstatus%>">
<h5><%=status %></h5>
</div>
<div class="col-md-3"></div>                
</div>    
</div>

</body>
</html>
