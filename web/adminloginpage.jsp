
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
         <c:if test="${not empty failMsg}">
            <div class="alert alert-danger text-center" role="alert">${failMsg}</div>
            <c:remove var="failMsg" scope="session"/>
        </c:if>
             <c:if test="${not empty logout_admin}">
                                <h5 class="text-center text-success">${logout_admin}</h5>
                                <c:remove var="logout_admin" scope="session" />
                            </c:if>
        <diV class="container p2">
            <div class="row mt-2">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-4">
                        <div class="card-body">
                            <div class="text-center">
                                <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                                <h4 class="text-center ">Admin Login Form</h4>
                            </div>

                            <c:if test="${not empty failedMsg}">
                                <h5 class="text-center text-danger">${failedMsg}</h5>
                                <c:remove var="failedMsg" scope="session" />
                            </c:if>

                            <c:if test="${not empty logout}">
                                <h5 class="text-center text-success">${logout}</h5>
                                <c:remove var="logout" scope="session" />
                            </c:if>
                            <form action="adminlogin.jsp" method="post">
                                <div class="form-group mt-4">
                                    <label for="exampleInputEmail1">Email</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" required="required" name="admin_email">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Enter Password" required="required" name="admin_password">
                                </div>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-primary badge-pill btn-block">Admin Login</button><br>
                                   
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
