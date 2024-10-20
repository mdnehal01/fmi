<%-- 
    Document   : admincontroller
    Created on : 17 Sep, 2023, 11:45:24 AM
    Author     : Sjkof
--%>

<%@page import="dbpack.DbManager"%>
<%
    if(request.getParameter("page").equals("changepassword")){
        String userid=session.getAttribute("adminid").toString();
        
        String oldpassword=request.getParameter("oldpassword");
        String newpassword=request.getParameter("newpassword");
        
        DbManager dm=new DbManager();
        String query="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"' ";
        if(dm.insertUpdateDelete(query)==true){
            out.print("<script>alert('Password has been changed');window.location.href='logout.jsp';</script>");
        }
        else{
            out.print("<script>alert('Old password is not matched');window.location.href='changepassword.jsp';</script>");
        }
    }
%>