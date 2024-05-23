
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Recruiter Page</title>
        <%@include file="allCss.jsp" %>
        <style type="text/css">
            a{
                text-decoration: none;
                color: black;
            }
            a:hover{
                text-decoration: none;
                color: black;
            }
            .back-img
            {
                background: url("../img/detailuser.jpg");
                width: 100%;
                height: 70vh;
                background-repeat: no-repeat;
                background-size: cover;
            }
            
        </style>
    </head>
    <body>
        
   <%
   String em = (String)session.getAttribute("em");
   %>
  <%
  if(em==null)
  {
      response.sendRedirect("../recruiter_login.jsp");
  }
  else
  {
  %>     
        <%@include file="navbar.jsp" %>
        <div class="container-fluid back-img">
            <div class="text-center">
                <h1 class="text-black p-4">
                    <i class="fa fa-book mr-2 text-grey" aria-hidden="true"></i>Online Job Portal
                </h1>
            </div>
        </div>
        <div class="container">
            <div class="row p-4">
               <div class="col-md-4">
                    <a href="add_job.jsp">
                        <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-plus-square fa-3x text-primary"></i><br>
                            <h4>Add job</h4>
                            -----------------
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="all_jobs.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-eye fa-3x text-danger mr-1"></i><br>
                            <h4>All job</h4>
                            -----------------
                        </div>
                    </div>
                    </a>
                </div>
                <div class="col-md-4">
                   <a href="candidates.jsp">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fas fa-user fa-3x text-warning"></i><br>
                            <h4>Candidates</h4>
                            -----------------
                        </div>
                    </div>
                   </a>
                </div>
                
            </div>
         
            
        </div>
        
 
<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          <div class="text-center">
          <h4>Do You Want Logout</h4>    
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <a href="logout.jsp" type="button" class="btn btn-primary text-white">Logout</a>
          </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>


<!-- end logout model -->
  
 <%
 }
 %>       
            <%@include file="footer.jsp" %>
    </body>
</html>
