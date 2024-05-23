

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@include file="All_Components/allCss.jsp" %>
<style type="text/css">
    .rad{
        border-radius: 24px;
    }
.back-img{
background: url("img/j4.png");
height: 100vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;
}
* {
  box-sizing: border-box;
}

.row {
  margin-left:-5px;
  margin-right:-5px;
}
  
.column {
  float: left;
  width: 50%;
  padding: 5px;
}

/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}

table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

</style>
</head>
<body>
    
    <div class="container-fluid p-3 bg-light ">
    <div class="row">
        <a href="All_job.jsp"> <div class="col text-success ">
            <h3><i class="fas fa-search"></i>Find Jobs</h3>
            </div></a>
        

        <div class="col-md-3 text-end ml-auto">
            
           <a href="admin.jsp" class="btn btn-primary text-white"><i class=" fa fa-lock"> </i> Admin logout Panal</a>
        </div>
    </div>
</div>
    
	<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
    <a class="navbar-brand" href="#"><i class="fas fa-home"></i></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active ">
                <a class="nav-link" href="#"><i class="fas fa-plus-circle mr-1"></i>Jobs</a>
            </li>

            <li class="nav-item active ">
                <a class="nav-link" href="view_jobs.jsp"><i class="fas fa-eye mr-1"></i>Apply Jobs</a>
            </li>
        </ul>

    </div>    
</nav>	
		<div class="container-fluid back-img">
			<div class="text-center">
				<h1 class="text-white p-4">Welcome Admin</h1>
			</div>
                    <div class="container">
 <div class="row">
      <div class="column">
        <h3 class="text-white text-center">Details of Recruiter</h3>
                            <div class="container-fluid">
                                <table class="table ra table-striped mx-0 ml-0">
                                    <thead class="bg-secondary rad text-white">
                                        <tr>
                                            <th scope="col">Recruiter_Id</th>
                                            <th scope="col">Company_Name</th>
                                            <th scope="col">Recruiter_name</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Password</th>
                                            <th scope="col">address</th>
                                            <th scope="col">phone No.</th>
                                        </tr>
                                        <%
                                            Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal","root","");
PreparedStatement pst=con.prepareStatement("select * from recruiter");
ResultSet rs=pst.executeQuery();
while(rs.next())
{
out.print("<tr>");
out.print("<td>"+rs.getString(1)+"</td>");
out.print("<td>"+rs.getString(2)+"</td>");
out.print("<td>"+rs.getString(3)+"</td>");
out.print("<td>"+rs.getString(4)+"</td>");
out.print("<td>"+rs.getString(5)+"</td>");
out.print("<td>"+rs.getString(6)+"</td>");
out.print("<td>"+rs.getString(7)+"</td>");
out.print("</tr>");
}
                                            %>
                                        
                                    </thead>
                                </table>
                                
                            </div>             

                        
      </div>
   
  </div>

</div>
                   
   </div>
</body>
</html>