<%-- 
    Document   : adminhome
    Created on : 15 Sep, 2023, 10:27:07 AM
    Author     : sjkof
--%>

<%
    if(session.getAttribute("adminid")==null){
        response.sendRedirect("../login.jsp");
    }
    else{
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.css" rel="stylesheet"/>
        <link href="../css/fontawesome.css" rel="stylesheet" type="text/css"/>
        <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/x-icon" href="../images/favicon1.ico"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="../js/bootstrap.bundle.js"></script>
        <title>Farmer Merchant Integration</title>
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row mt-2">
                <div class="col-sm-6" style="min-height: 600px;background-color: aliceblue;"></div>
                <div class="col-sm-6" style="min-height: 600px;background-color: gray;"></div>
            </div>
            
            <!--Footer Starts-->
            <div class="row mt-2 pt-2" style="min-height: 350px;">
                <div class="col-sm-5 fw-semibold text-light bg-dark" style="text-align: center">
                    <div class="row h-90 mb-2" style="border-bottom: 3px solid;">
                        <div class="col-sm-6 h-100 py-2">
                            <div class="fw-bold pb-2" style="border-bottom: 2px solid;">SOCIAL LINKS</div>
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Facebook</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Instagram</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">LinkedIn</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Whatsapp</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">BSE</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">NSE</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 h-100 py-2">
                        <div class="fw-bold pb-2" style="border-bottom: 2px solid;">QUICK LINKS</div>
                            <ul class="nav flex-column">
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Home</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Blog</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Team</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Clients</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Warehouses</a></li>
                                <li class="nav-link"><a class="text-light fw-semibold" href="#" style="text-decoration: none;">Map</a></li>
                            </ul>
                        </div>
                    </div>
                    Copyright &COPY; to Farmer Merchant Integration
                </div>
                <div class="col-sm-2 bg-white" id="admfoot" style="background: url('../images/logo.png');background-position: centre;background-size: fit; background-repeat: no-repeat;">
                    
                </div>
                <div class="col-sm-5 fw-semibold text-light bg-dark" style="text-align: center">
                    
                    Developed by: Mr Brijesh Mishra
                </div>
            </div>
            <!--Footer Ends-->
            
        </div>
    </body>
</html>
<%
    }
%>