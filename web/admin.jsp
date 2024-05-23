
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<%@include file="All_Components/allCss.jsp" %>
<style type="text/css">
.back-img{
background: url("img/j4.png");
height: 100vh;
width: 100%;
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>
<c:if test="${userobj.role ne 'admin' }">
	<c:redirect url="adminloginpage.jsp"></c:redirect>
</c:if>
	<%@include file="All_Components/navbar.jsp"%>
	
		<div class="container-fluid back-img">
			<div class="text-center">
				<h1 class="text-white p-4">Welcome Admin</h1>
			</div>
		</div>
</body>
</html>