<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid" style="background-color: #303f9f; height: 10px;"></div>

<div class="container-fluid p-3 bg-light">
    <div class="row">
        <div class="col-md-4 text-success ml-4">
            <h3><i class="fas fa-search"></i>Find Jobs</h3>
        </div>
        <diV class="col-md-4 ml-6">
            <c:if test="${not empty na}">
                 <a href="" class="btn btn-success my-2 my-sm-0 mr-2" data-toggle="modal" data-target="#exampleModal" type="submit"><i class="fas fa-user-plus" aria-hidden="true"></i> ${na}</a>

            <a href="logout.jsp" class="btn btn-primary text-white"><i class="fas fa-sign-in-alt"></i> Logout</a>
            </c:if>
        </diV>
    </div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Details of Recruiter</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              <i class="fa fa-user fa-3x"></i>
              
              <table class="table">
                  <tbody>
                      <tr>
                          <th>
                              User Id
                          </th>
                          <td>${id}</td>
                      </tr>
                      <tr>
                          <th>
                             Full Name
                          </th>
                          <td>${na}</td>
                      </tr>
                      <tr>
                          <th>
                             Email Id 
                          </th>
                          <td>${em}</td>
                      </tr>
                  </tbody>
                  
              </table>
              <div>
                  <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
              </div>
          </div>
      </div>
     
    </div>
  </div>
</div>
      <div class="modal-footer">
        
      </div>
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
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active ">
          <a class="nav-link" href="add_job.jsp"><i class="fas fa-plus-square"></i> Add jobs</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_jobs.jsp"> <i class="fas fa-eye"></i> View Jobs</a>
      </li>
      
      <li class="nav-item active">
        <a class="nav-link disabled" href="candidates.jsp"><i class="fas fa-user"></i> Canditates</a>
      </li>
    </ul>

  </div>    
</nav>
        