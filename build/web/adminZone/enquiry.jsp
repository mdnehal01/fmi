<%-- 
    Document   : enquiry
    Created on : 18 Sep, 2023, 10:14:32 AM
    Author     : Sjkof
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
        <script src="../js/bootstrap.bundle.js" rel="javascript"></script>
        <title>Farmer Merchant Integration</title>
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>
            <!--Main Contents-->
            <div class="row mt-2">
                <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue;">
                    <h2 class="pb-2 mx-auto my-4" style="text-align: center;color:blue; width: 60%;border-bottom: 2px solid black;">Enquiry management</h2>
                    <table class="table table-bordered mx-auto" style="width: 90%;border: 2px solid;">
                        <tr>
                            <th>Enquiry Id</th>
                            <th>Name</th>
                            <th>Gender</th>
                            <th>Address</th>
                            <th>Contact number</th>
                            <th>Email address</th>
                            <th style="width: 20%">Enquiry text</th>
                            <th>Posted date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                            DbManager dm=new DbManager();
                            String query=" select * from enquiry ";
                            ResultSet rs=dm.select(query);
                            while(rs.next()){ 
                        %>
                        <tr>
                            <td><%=rs.getInt("id")%></td>
                            <td><%=rs.getString("name")%></td>
                            <td><%=rs.getString("gender")%></td>
                            <td><%=rs.getString("address")%></td>
                            <td><%=rs.getString("contactno")%></td>
                            <td><%=rs.getString("emailaddress")%></td>
                            <td><%=rs.getString("enquirytext")%></td>
                            <td><%=rs.getString("enquirydate")%></td>
                            <td>
                                <a href="delenq.jsp?id=<%=rs.getInt("id")%>">
                                    <button class="btn btn-danger">Delete</button>
                                </a>
                            </td>
                        </tr>
                        
                        <% } %>
                    </table>
                </div>
                
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