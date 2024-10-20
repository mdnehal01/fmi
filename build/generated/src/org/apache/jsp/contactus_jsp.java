package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactus_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Farmer Merchant Integration</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/bootstrap.css\"  type=\"text/css\"/>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\"  type=\"text/css\"/>\n");
      out.write("        <script src=\"js/bootstrap.bundle.js\" type=\"text/javascript\"></script>\n");
      out.write("        \n");
      out.write("        <!--Font Awesome-->\n");
      out.write("        <script src=\"https://kit.fontawesome.com/697eb2b181.js\" crossorigin=\"anonymous\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container-fluid\">\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("            <div class=\"row mt-2\">\n");
      out.write("                <div class=\"col-sm-4\" style=\"min-height: 600px; background-color: aqua;\"></div>\n");
      out.write("                <div class=\"col-sm-8\" style=\"min-height: 600px; background-color: aliceblue\"> \n");
      out.write("                    <h2 style=\"text-align:center;color:blue\">Enquiry Form</h2>\n");
      out.write("                    <form class=\"form-group\" method=\"post\" action=\"controller.jsp\">\n");
      out.write("                        <input type=\"hidden\" name=\"page\" value=\"contactus\"/>\n");
      out.write("                        <table class=\"table\" style=\"width:80%;margin:auto;\">\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Name</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"name\" class=\"form-control\"/> \n");
      out.write("                                </td>\n");
      out.write("                            </tr> \n");
      out.write("                            <tr>\n");
      out.write("                                <td>Select Gender</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Male\" class=\"form-check-input\"/>Male\n");
      out.write("                                    <input type=\"radio\" name=\"gender\" value=\"Male\" class=\"form-check-input\"/>Female\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Address</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <textarea name=\"address\" class=\"form-control\"></textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Contact No</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"number\" name=\"contactno\" class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Email Address</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <input type=\"text\" name=\"emailaddress\" class=\"form-control\"/>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>Enter Enquiry Text</td>\n");
      out.write("                                <td>\n");
      out.write("                                    <textarea name=\"enquirytext\" class=\"form-control\"></textarea>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td>\n");
      out.write("                                    <button type=\"submit\" class=\"btn btn-success\">Submit</button>\n");
      out.write("                                </td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table> \n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
