
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="All_Components/allCss.jsp" %>
        
    </head>
    <body>
        
        
        
 
        <%
            String email = (String)session.getAttribute("usem");
            
        %>
<%
 
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst = con.prepareStatement("select * from job where status=? order by job_id desc");

pst.setString(1, "Active");
%>
        
      
        
        
        <h3 class="text-center mt-4 mb-4 text-primary">All Jobs</h3>
        
        <div class="container-fluid">
            <div class="row" >
                     <%
                        ResultSet rs=pst.executeQuery();
                        while(rs.next())
                        {
                            session.setAttribute("id", rs.getString(1));
                    %>
  <div class="col-md-6" style=" margin-left: 400px">
    <div class="card mt-2">
      <div class="card-body">
          <h5 class="card-title text-center"><%= rs.getString(2) %></h5>
        <h5 class="card-title"><%= rs.getString(3) %></h5>
        <div class="row">
              <div class="col-md-4">
                  <h6><i class="fas fa-solid fa-lock-keyhole"></i>Category: <%= rs.getString(5) %></h6>
              </div>
            <div class="col-md-4">
                  <h6><i class="fas fa-solid fa-location-dot"></i>Location: <%= rs.getString(4) %></h6>
              </div>
            <div class="col-md-4">
                <h6><i class="fas fa-solid fa-calendar-days"></i>Publish Date: <%= rs.getTimestamp(9) %></h6>
              </div>
          </div>
        <p class="card-text"><i class="fa-regular fa-message-medical"></i><%= rs.getString(7) %></p>
        

        
        
        <%
        if(email==null)
        {
        %>
        <a href="login.jsp" class="btn pl-5 pr-5" style="border-color: blue;border-width: 1;border-style: solid; border-radius: 20px; margin-left: 250px">Apply Now</a>
        
        <%
        }
        else
        {
        %>
        <a href="apply_form.jsp?id=<%= rs.getString(1) %>" class="btn pl-5 pr-5" style="border-color: blue;border-width: 1;border-style: solid; border-radius: 20px; margin-left: 250px">Apply Now</a>
        <%
        }
        %>
        
        
      </div>
    </div>
  </div>
    
  <%
  }
  %>    
    
</div>
 </div>
     







<!--------------------- Modal ----------------------------->

<!--
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="text-center">Apply Job</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
        
        
        <c:if test="">
            <h5 class="text-center text-success"></h5>
            <c:remove var="succMsg" scope="session" />
        </c:if>
        
        
        
        <c:if test="">
            <h5 class="text-center text-danger"></h5>
            <c:remove var="failedMsg" scope="session" />
        </c:if>
        
        
        
        
      <div class="modal-body">
        <form action="apply_job" method="post" enctype="multipart/form-data">
            <input type="text" value="" name="id">
            
            <div class="form-group">
                <label for="exampleInputEmail1">Enter Name*</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Name" required="required" name="name">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Enter Email*</label>
                <input type="eamil" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required="required" name="email">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">Enter Mobile No.*</label>
                <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Moblie No." required="required" name="phone">
            </div>
                                
            <div class="form-group">
                <label for="exampleInputEmail1">Enter Course*</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Course" required="required" name="course">
            </div>
                                   
            <div class="form-group">
                <label for="exampleInputEmail1">Enter Experience*</label>
                <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Experience" required="required" name="experience">
            </div>
                                
            <div class="form-group">
                <label for="exampleInputEmail1">Upload Resume*</label>
                <input type="file" class="form-control-file" id="exampleInputEmail1"  required="required" name="resume">
            </div>
            
            <div class="form-group">
                <button type="submit" class="btn btn-primary pl-5 pr-5" style="border-radius: 20px; margin-left: 150px;">Apply Now</button>
            </div>
            
                                
        </form>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
  -->  

    </body>
</html>
