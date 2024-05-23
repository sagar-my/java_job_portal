
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>recruiter Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background: #f0f1f2">
        <%@include file="All_Components/navbar.jsp" %>
        <c:if test="${not empty succMsg}">
            <div class="alert alert-success text-center" role="alert">${succMsg}</div>
            <c:remove var="succMsg" scope="session"/>
        </c:if>
        <c:if test="${not empty failedMsg}">
            <div class="alert alert-danger text-center" role="alert">${failedMsg}</div>
            <c:remove var="failedMsg" scope="session"/>
        </c:if>
        <diV class="container p2">
            <div class="row mt-2">
                <div class="col-md-6 offset-md-3">
                    <div class="card mt-4">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h4 class="text-center ">Recruiter Signup Form</h4>
                            </div>
                            <div class="row mt-3 ml-4">
                                <div class="col-md-6">
                                    <a href="signup.jsp" class="btn" style="border-color: blue;border-width: 1;border-style: solid;"><i class="fas fa-user-plus"></i> User</a>
                                </div>
                                <div class="col-md-6">
                                    <a href="recruiter.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Recruiter</a>
                                </div>
                            </div> 
                            <form action="recruiter_signup.jsp" method="post">
                                <div class="form-group mt-4">
                                    <label for="exampleInputEmail1">Company Name</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Company Name" required="required" name="comp">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Recruiter Name</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Name" required="required" name="name">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required="required" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password." required="required" name="pass">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Address</label>
                                    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Address" required="required" name="address">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mobile No.</label>
                                    <input type="number" class="form-control" id="exampleInputPassword1" placeholder="Enter Phione No." required="required" name="phone">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary badge-pill btn-block">Register</button><br>
                                <a href="recruiter_login.jsp">Login</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </diV>
        <%@include file="All_Components/footer.jsp" %>
    </body>
</html>
