package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class todo_002ddemo_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\t\t<!--1. create html form-->\n");
      out.write("\t\t<form action=\"todo-demo.jsp\">\n");
      out.write("\t\t\tAdd new item: <input type=\"text\" name=\"theItem\"/>\n");
      out.write("\t\t\t<input type=\"submit\" value=\"Submit\"/>\n");
      out.write("\t\t</form>\n");
      out.write("\n");
      out.write("\t\t<!--2. add new item \"To Do\" list-->\n");
      out.write("\t\t");

			//	get the TO DO items from the session
			List<String> items = (List<String>) session.getAttribute("myToDoList");

			//	if the To Do item doesn't exist, then create one
			if (items == null) {
				items = new ArrayList<String>();

				//	session.setAttribute(String_name, Object_value);
				session.setAttribute("myToDoList", items);
			}

			//	see if there is a form data to add
			String theItem = request.getParameter("theItem");
			if ((theItem != null) && (!theItem.trim().equals(""))) {
				items.add(theItem);
				response.sendRedirect("todo-demo.jsp");
			}

		
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t\t<!--3. display all \"To Do\" session-->\n");
      out.write("\t\t\t<hr>\n");
      out.write("\t\t\t<b>To Do List:</b> <br/>\n");
      out.write("\t\t\t<ol>\n");
      out.write("\t\t\t\t");
	
					for (String temp : items) {
						out.println("<li>" + temp + "</li>");
					}
				
      out.write("\n");
      out.write("\t\t\t</ol>\n");
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
