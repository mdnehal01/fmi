package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import dbpack.DbManager;

public final class controller_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    if(request.getParameter("page").equals("contactus"))
    {
        String name=request.getParameter("name");
        String gender=request.getParameter("gender");
        String address=request.getParameter("address");
        String contactno=request.getParameter("contactno");
        String emailaddress=request.getParameter("emailaddress");
        String enquirytext=request.getParameter("enquirytext");
        DbManager dm=new DbManager();
        String query="insert into enquiry(name,gender,address,contactno,emailaddress,enquirytext,enquirydate) values('"+name+"','"+gender+"','"+address+"','"+contactno+"','"+emailaddress+"','"+enquirytext+"',curdate())";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true)
        {
            out.print("<script>alert('Enquiry is submitted');window.location.href='contactus.jsp';</script>");
        }
        else
        {
         out.print("<script>alert('Enquiry is  not submitted');window.location.href='contactus.jsp';</script>");   
        }
    }
    
    else if(request.getParameter("page").equals("registration")){
        String name=request.getParameter("name");
        String fname=request.getParameter("fname");
        String mname=request.getParameter("mname");
        String gender=request.getParameter("gender");
        String village=request.getParameter("village");
        String post=request.getParameter("post");
        String district=request.getParameter("district");
        String state=request.getParameter("state");
        String pincode=request.getParameter("pincode");
        String contactno=request.getParameter("contactno");
        String aadharno=request.getParameter("aadharno");
        String panno=request.getParameter("panno");
        String regid = "BCS-"+aadharno;
        
        DbManager dmr=new DbManager();
        String queryreg="insert into farmerinfo values ('"+regid+"','"+name+"','"+fname+"','"+mname+"','"+gender+"','"+village+"','"+post+"','"+district+"','"+state+"','"+pincode+"','"+contactno+"','"+aadharno+"','"+panno+"',curdate())";
        boolean res=dmr.insertUpdateDelete(queryreg);
        
        if(res==true)
        {
            out.print("<script>alert('Farmer registration is done');window.location.href='registration.jsp';</script>");
        }
        else
        {
         out.print("<script>alert('Registration is  not submitted');window.location.href='registration.jsp';</script>");   
        }
    }
    
    else if(request.getParameter("page").equals("login")){
        
        String userId = request.getParameter("userId");
        String password = request.getParameter("password");
        
        DbManager dm = new DbManager();
        String querylogin = "select * from login where userId = '"+userId+"' and pass = '"+password+"'";
        
        ResultSet res = dm.select(querylogin);
    
        if(res.next()){
            session.setAttribute("adminId", "userId");
            response.sendRedirect("adminZone/adminHome.jsp");
        }
       
        else
        {
         out.print("<script>alert('Either user or password is wrong');window.location.href='login.jsp';</script>");   
        }
    }
    
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
