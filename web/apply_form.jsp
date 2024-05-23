
<%@page import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply Form Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background: #f0f1f2">

        <%@include file="All_Components/navbar.jsp" %>

        <c:if test="${not empty succMsg}">
            <div class="alert text-center alert-success" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>

        <c:if test="${not empty failedMsg}">
            <div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>


        <%    String email = (String) session.getAttribute("usem");

            if (email == null) {
                response.sendRedirect("login.jsp");
            } else {
                String job_id = request.getParameter("id");

                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal", "root", "");
                PreparedStatement pst = con.prepareStatement("Select * from job where job_id=?");

                pst.setString(1, job_id);

        %>    

        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-4">
                        <div class="card-body">
                            <%                                ResultSet rs = pst.executeQuery();
                                while (rs.next()) {

                            %>

                            <h4 class="text-center mb-4">Apply Job Form</h4>


                            <form action="apply_job" method="post" enctype="multipart/form-data">

                                <input type="hidden" value="<%= rs.getString(1)%>" name="id">

                                <input type="hidden" value="<%= rs.getString(2)%>" name="com_name">

                                <input type="hidden" value="<%= rs.getString(3)%>" name="job_title">

                                <input type="hidden" value="<%= rs.getString(4)%>" name="location">

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
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <%@include file="All_Components/footer.jsp" %>
        <%
            }
        %>
    </body>
</html>
