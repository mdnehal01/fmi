<%-- 
    Document   : registration.jsp
    Created on : Sep 13, 2023, 10:57:59 AM
    Author     : MD NEHAL AKHLAQUE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <link rel="stylesheet" href="css/bootstrap.css"  type="text/css"/>
        <link rel="stylesheet" href="css/style.css"  type="text/css"/>
        <script src="js/bootstrap.bundle.js" type="text/javascript"></script>
        
        <!--Font Awesome-->
        <script src="https://kit.fontawesome.com/697eb2b181.js" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"/>
            <div class="row mt-2">
                <div class="col-sm-4" style="min-height: 600px; background-color: aqua;"></div>
                <div class="col-sm-8" style="min-height: 600px; background-color: aliceblue"> 
                    <h2 style="text-align:center;color:#DD3544;">Registration Form</h2>
                    <form class="form-group" methaod="post" action="controller.jsp" style="border: 1px solid #DD3544;">
                        <input type="hidden" name="page" value="registration"/>
                        
                        
                        <table class="table" style="width:80%;margin:auto;">
                            
                            <tr><th style="background-color:#DD3544; color: white;">Personal Information</th><td style="background-color:#DD3544; color: white;"></td><td style="background-color:#DD3544; color: white;"></td></tr>
                            <tr>
                                <td>
                                    <input type="text" name="name" class="form-control" placeholder="Enter Name"/> 
                                </td>
                                <td></td>
                                <td></td>
                            </tr> 
                            <tr>
                                <!--<td>Father Name</td>-->
                                <td>
                                    <input type="text" name="fname" class="form-control" placeholder="Enter Father's Name"/> 
                                </td>
                                <td>
                                    <input type="text" name="mname" class="form-control" placeholder="Enter Mother's Name"/> 
                                </td>
                                <td></td>
                            </tr>
                            
                            <tr>
                                <td>Select Gender</td>
                                <td>
                                    <input type="radio" name="gender" value="Male" class="form-check-input"/>Male
                                    <span style="padding-left: 50px"></span>
                                    <input type="radio" name="gender" value="Female" class="form-check-input"/>Female
                                </td>
                                <td></td>
                            </tr>
                            
                            
                            <tr><th style="background-color:#DD3544; color: white;">Address</th><td style="background-color:#DD3544; color: white;"></td><td style="background-color:#DD3544; color: white;"></td></tr>
                            
                            <tr>
                                <!--<td>Enter Add</td>-->
                                <td>
                                    <input type="text" name="village" class="form-control" placeholder="Enter Village"/>
                                </td>
                                <td>
                                    <input placeholder="Post" type="text" name="post" class="form-control"/>
                                </td>
                                <td>
                                    <input placeholder="district" type="text" name="district" class="form-control"/>
                                </td>
                              
                            </tr>
                            <tr>
                                <!--STATE PINCODE-->
                                <td>
                                    <input placeholder="State" type="text" name="state" class="form-control"/>
                                </td>
                                <td>
                                    <input placeholder="Pincode" type="text" name="pincode" class="form-control"/>
                                </td>
                                <td></td>
                            </tr>
                            
                            <tr><th style="background-color:#DD3544; color: white;">Contact Information</th><td style="background-color:#DD3544; color: white;"></td><td style="background-color:#DD3544; color: white;"></td></tr>
                            <tr>
                                <td>
                                    <input placeholder="Contact Number" type="text" name="contactno" class="form-control"/>
                                </td>
                                <td>
                                    <input placeholder="Aadhar Number" type="text" name="aadharno" class="form-control"/>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <input placeholder="Pan Number" type="text" name="panno" class="form-control"/>
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="text-center">
                                    <button type="submit" class="btn btn-danger">Submit</button>
                                </td>
                                <td></td>
                            </tr>
                        </table> 
                    </form>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
        </div>
    </body>
</html>

