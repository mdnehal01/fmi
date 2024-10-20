<%-- 
    Document   : index
    Created on : Sep 10, 2023, 10:08:07 AM
    Author     : MD NEHAL AKHLAQUE
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
            
            <div class="col-sm-12" style="min-height: 600px;background-color: aliceblue;">
                <button id="show" class="btn btn-danger" onclick="farmerinfo()">Database Farmer Info Show</button>
                <button id="hide" style="display: none;" class="btn btn-danger" onclick="farmerinfohide()">Database Farmer Info Hide</button>
                <table class="table farmerinfo" border="1" style="display: none;" >
            <tr>
                <th>regid</th>
                <th>name</th>
                <th>fname</th>
                <th>mname</th>
                <th>gender</th>
                <th>village</th>
                <th>post</th>
                <th>district</th>
                <th>state</th>
                <th>pincode</th>
                <th>contactno</th>
                <th>aadharno</th>
                <th>Pan No</th>
                <th>regdate</th>
            </tr>
            <%
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fmidb?characterEncoding=utf-8","root", "");
                String query = "select * from farmerinfo";
                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString("regid") %></td>
                <td><%=rs.getString("name") %></td>
                <td><%=rs.getString("fname") %></td>
                <td><%=rs.getString("mname") %></td>
                <td><%=rs.getString("gender") %></td>
                <td><%=rs.getString("village") %></td>
                <td><%=rs.getString("post") %></td>
                <td><%=rs.getString("district") %></td>
                <td><%=rs.getString("state") %></td>
                <td><%=rs.getString("pincode") %></td>
                <td><%=rs.getString("contactno") %></td>
                <td><%=rs.getString("aadharno") %></td>
                <td><%=rs.getString("panno") %></td>
                <td><%=rs.getString("regdate") %></td>
            </tr>
            <% }
                }
                catch (ClassNotFoundException e1){e1.printStackTrace();}
                catch(SQLException e1){e1.printStackTrace();}
            %>
        </table>
                
        
        <!--table Enquiry-->
        <button id="showenq" class="btn btn-danger" onclick="enquiryshow()">Database Enquiry Show</button>
        <button id="hideenq" style="display: none;" class="btn btn-danger" onclick="enquiryhide()">Database Enquiry Hide</button>
                
        <table class="table enquiry" border="1" style="display: none;" >
            <tr>
                <th>id</th>
                <th>name</th>
                <th>gender</th>
                <th>address</th>
                <th>contactno</th>
                <th>emailaddress</th>
                <th>enquirytext</th>
                <th>enquirydate</th>
            </tr>
            <%
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/fmidb?characterEncoding=utf-8","root", "");
                String query = "select * from enquiry";
                PreparedStatement ps = con.prepareStatement(query);
                ResultSet rs = ps.executeQuery();
                while(rs.next()){
            %>
            <tr>
                <td><%=rs.getString("id") %></td>
                <td><%=rs.getString("name") %></td>
                <td><%=rs.getString("gender") %></td>
                <td><%=rs.getString("address") %></td>
                <td><%=rs.getString("contactno") %></td>
                <td><%=rs.getString("emailaddress") %></td>
                <td><%=rs.getString("enquirytext") %></td>
                <td><%=rs.getString("enquirydate") %></td>
            </tr>
            <% }
                }
                catch (ClassNotFoundException e1){e1.printStackTrace();}
                catch(SQLException e1){e1.printStackTrace();}
            %>
        </table>
            </div>
        </div>
        
        <jsp:include page="footer.jsp"/> 
        
        </div>
        <script src="js/script.js"></script>
    </body>
</html>
