<%-- 
    Document   : header
    Created on : 16 Sep, 2023, 7:27:14 AM
    Author     : sjkof
--%>
<%
    if(session.getAttribute("adminid")==null)
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="../css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="images/favicon1.ico"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="../js/bootstrap.bundle.js" rel="javascript"></script>
        
        <title>Farmer Merchant Integration</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-2" style="min-height: 150px;background-color: aqua;">
                    <img src="../images/logo.png" width="150px" height="150px" alt="logo" style="margin-left: 4vh;"/>
                </div>
                <div class="col-sm-10 text-light display-2 fw-bold" style="min-height: 150px;background-color: navy;text-align: center;line-height: 150px;">
                    Farmer Merchant Integration
                </div>
            </div>
            
            <!--Navbar starts-->
            <div class="row">
                <nav class="navbar navbar-expand-lg navbar-light bg-primary-subtle">
  <div class="container-fluid">
    
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
            <a class="nav-link" aria-current="page" href="adminhome.jsp">Home</a>
        </li>
        <li class="nav-item">
            <a class="nav-link fw-semibold " href="news.jsp">News</a>
        </li>
        <li class="nav-item">
            <a class="nav-link fw-semibold " href="enquiry.jsp">Enquiries</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fw-semibold" href="#">Booking</a>
        </li>
        <li class="nav-item">
          <a class="nav-link fw-semibold" href="#">Closing</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle fw-semibold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" >
            Admin
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="changepassword.jsp">Change Password</a></li>
              <li><a class="dropdown-item" href="logout.jsp">Logout</a></li>
          </ul>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit" style="background-color: red">Search</button>
      </form>
    </div>
  </div>
</nav>
            </div>
            <!--Navbar ends-->
            
            
            
            
               
        </div>
    </body>
</html>
</html>
<%
    }
%>