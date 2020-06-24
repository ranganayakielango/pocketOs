package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.GregorianCalendar;
import java.util.Calendar;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Java Utility</title>\n");
      out.write("        <style>\n");
      out.write("            div{background-color:rgba(250,128,114,0.4);text-align:center;text-transformation:uppercase;width:500px;height:300px;}\n");
      out.write("            body{font-family:calibri; align-content: center; background-image: url(\"bg.jpg\")}\n");
      out.write("            a:link, a:visited {\n");
      out.write("                background-color: rgba(30,5,20,0.4);\n");
      out.write("                color:white;\n");
      out.write("                padding: 14px 25px;\n");
      out.write("                text-align: center; \n");
      out.write("                text-decoration: none;\n");
      out.write("                display: inline-block;\n");
      out.write("                width: 100px;\n");
      out.write("            }\n");
      out.write("            a:hover, a:active {\n");
      out.write("                background-color:rgba(0,0,0,0.1);\n");
      out.write("                    color:black;\n");
      out.write("                    }\n");
      out.write("            .container {\n");
      out.write("                width: 80%;\n");
      out.write("                height: 200px;\n");
      out.write("                margin: auto;\n");
      out.write("                padding: 10px;\n");
      out.write("            }\n");
      out.write("            .one {\n");
      out.write("                width: 0%;\n");
      out.write("                height: 200px;\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("            .two {\n");
      out.write("                margin-left: 35%;\n");
      out.write("                height: 400px;\n");
      out.write("                width: 700px;\n");
      out.write("                background: rgba(30,5,20,0);\n");
      out.write("                float: left;\n");
      out.write("                font-size: 100px;\n");
      out.write("            }\n");
      out.write("            .pc{\n");
      out.write("                color: white;\n");
      out.write("                font-size: 100px;\n");
      out.write("            }\n");
      out.write("         </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <section class=\"container\">\n");
      out.write("            <div class=\"one\">\n");
      out.write("                <a href=\"Calculator.jsp\">CALCULATOR</a><br><br>\n");
      out.write("                <a href=\"Convertor.jsp\">CONVERTER</a><br><br>\n");
      out.write("                <a href=\"translatoretoh.html\">TRANSLATOR</a><br><br>\n");
      out.write("                <a href=\"ttos.html\">TEXT-SPEECH</a><br><br>\n");
      out.write("                <a href=\"stot.html\">SPEECH-TEXT</a><br><br>\n");
      out.write("                <a href=\"calendar.html\">CALENDER</a><br><br>\n");
      out.write("                <a href=\"fileFrame.html\">FILES</a><br><br>\n");
      out.write("                <a href=\"ListPhotosServlet\">PHOTOS</a><br><br>\n");
      out.write("                <a href=\"NoteFrame.html\">NOTEBOOK</a><br>\n");
      out.write("            </div>\n");
      out.write("            <br><br>\n");
      out.write("            <div class=\"two\">\n");
      out.write("                ");

                response.setIntHeader("Refresh", 60);
                response.setContentType("text/html");
                Calendar calendar = new GregorianCalendar();
                String am_pm;
                int hour = calendar.get(Calendar.HOUR);
                int minute = calendar.get(Calendar.MINUTE);
                int month = calendar.get(Calendar.MONTH)+1;
                int day = calendar.get(Calendar.DAY_OF_MONTH);
                int year = calendar.get(Calendar.YEAR);
                if(calendar.get(Calendar.AM_PM) == 0)
                  am_pm = "AM";
                else
                  am_pm = "PM"; 
                String CT = hour+":"+ minute +" "+ am_pm; 
                String CT1 = day+"-"+ month +"-"+ year; 
                out.println("<p class=\"pc\"><b>"+CT+"<br>"+CT1+"</b>");
                //out.println("<p class=\"pc\">"+CT1);
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
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
