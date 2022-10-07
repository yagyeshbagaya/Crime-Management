<%@include file="header.jsp" %>
 
<%
    String uname="";
    String pass="";
    String sques="";
    String sans="";
    
String uid=session.getAttribute("uid").toString();
String qry="select * from admin where uid='"+uid+"' ";
ResultSet rs=con.record(qry);
if(rs.next())
{ 
    uname=rs.getString("uname");
    pass=rs.getString("pass");
     sques=rs.getString("sques");
     sans=rs.getString("sans");
}
String qr="";
if(request.getParameter("btn1")!=null)
{
    uname = "Admin Harish";
    sques=rs.getString("sques") + uid;
    sans=rs.getString("sans") + uid;
}



%>



<div class="row" >
    <%@ include file="sidebar.jsp" %> 
    <div class="col-md-10 col-sm-12" >
    <h3 class="mt-1 p-2 bg-dark text-light" >Profile Update Page</h3>
    <form class="form" id="frm" name="frm" action="" method="post" >
          <div class="form-row" >
              <div class="form-group col-md-6" >
                  <label for="l1" >User Name</label>
                  <input type="text" id="tuser" name="tuser" class="form-control" value="<%=uname%>" placeholder="Enter User Name!" >
              </div>
          </div>
          <div class="form-row" >
               <div class="form-group col-md-3" >
                  <label for="l1" >Password</label>
                  <input type="password" id="tpwd" name="tpwd" class="form-control" value="<%=pass%>" placeholder="Enter Password!" >
               </div>
           </div>
          
          
         <div class="form-row" >
             <div class="form-group col-md-6" >
                <label for="l1" >Security Question</label>
                <input type="text" id="tsecquest" name="tsecquest" value="<%=sques%>" class="form-control" placeholder="Enter Security Question!" >
             </div>
              
             <div class="form-group col-md-6" >
                <label for="l1" >Security Answer</label>
                <input type="text" id="tsecans" name="tsecans" value="<%=sans%>" class="form-control" placeholder="Enter Security Answer!" >
             </div>
         </div>
          
         <div class="form-group" >
            <input type="submit" id="btn1" name="btn1" value="Update" class="btn btn-primary" />
          </div>
     </form>
   </div>
</div>
 <%@include file="footer.jsp" %>

    
</body>
</html>
