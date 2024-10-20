<%-- 
    Document   : index
    Created on : Sep 14, 2023, 10:26:07 AM
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
    </head>
    <body>
        <div class="container-fluid">
            
            <jsp:include page="header.jsp"/>  
            
        <!--BODY-->
        <div class="row mt-2">
            <div class="col-sm-4" style="min-height: 600px;background-color: aquamarine;"></div>
            <div class="col-sm-8" style="min-height: 600px;background-color: aliceblue; display: flex; align-items:center; flex-direction: column;">
                <h2 style="text-align:center;color:#DD3544;margin-top: 100px;margin-bottom: 100px;">Login</h2>
                    <form class="form-group" methaod="post" action="controller.jsp" style="background-color: #DD3544;padding: 5px; width: 100%;">
                        <input type="hidden" name="page" value="login"/>
                        
                        
                        <table class="table" style="width:80%;margin:auto;">
                            
         
                            <tr>
                                <td>
                                    <input type="text" name="userId" class="form-control" placeholder="Enter User ID"/> 
                                </td> 
                            </tr> 
                            
                            <tr>
     
                                <td>
                                    <input type="password" name="password" class="form-control" placeholder="Enter Password"/> 
                                </td>
                                
                                
                            </tr>
                            
                            
                            <tr>
                                <td class="text-center">
                                    <button type="submit" class="btn btn-outline-danger">Log in</button>
                                </td>
                            </tr>
                        </table> 
                    </form>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"/> 
        
        </div>
        
    </body>
</html>
