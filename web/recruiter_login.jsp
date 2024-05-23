
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <%@include file="All_Components/allCss.jsp" %>
    </head>
    <body style="background: #f0f1f2">
        <%@include file="All_Components/navbar.jsp" %>
        
        <diV class="container p2">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h4 class="text-center ">Recruiter Login Form</h4>
                            </div>
                            
                            
                            <c:if test="${not empty failedMsg}">
                                <h5 class="text-center text-danger">${failedMsg}</h5>
                                <c:remove var="failedMsg" scope="session"/>
                            </c:if>
                            
                            <c:if test="${not empty logout}">
                                <h5 class="text-center text-success">${logout}</h5>
                                <c:remove var="logout" scope="session"/>
                            </c:if>
                            
                            
                            <div class="row mt-1 pr-3 pl-3">
                                <div class="col-md-5">
                                    <a href="login.jsp" class="btn" style="border-color: blue;border-width: 1;border-style: solid;"><i class="fas fa-user-plus"></i> User</a>
                                </div>
                                <div class="col-md-3">
                                    <a href="recruiter_login.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Recruiter</a>
                                </div>
                                
                            </div>
                            
                            <form action="recruiter_log.jsp" method="post">
                                <div class="form-group mt-4">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required="required" name="email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required" name="pass">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary badge-pill btn-block">Login</button><br>
                                <a href="recruiter.jsp">Create Account</a>
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

