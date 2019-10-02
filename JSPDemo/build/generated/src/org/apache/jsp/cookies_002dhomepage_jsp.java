package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.net.URLDecoder;

public final class cookies_002dhomepage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Cookies-Homepage</title>\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\t\t<h3> Training Portal</h3>\n");
      out.write("\t\t<!--read the favourite programming language cookie-->\n");
      out.write("\t\t");

			//	the default.. if there is/are no cookie(s)
			String favLang = "Java";

			//	get the cookies from the browser request
			Cookie[] theCookies = request.getCookies();

			//	find the favourite language
			if (theCookies != null) {
				for (Cookie tempCookie : theCookies) {
					if ("myApp.favouriteLanguage".equals(tempCookie.getName())) {
						
						//favLang = tempCookie.getValue();
						// decode cookie data ... handle case of languages with spaces in them
						favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
						break;
					}
				}
			}
		
      out.write("\n");
      out.write("\t\t<!--now show the personalised page... use the favLang variable-->\n");
      out.write("\n");
      out.write("\t\t<!--show the books for this language-->\n");
      out.write("\t\t<h4>New books for ");
      out.print( favLang);
      out.write("</h4>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li>Book1</li>\n");
      out.write("\t\t\t<li>Book2</li>\n");
      out.write("\t\t\t<li>Book3</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\n");
      out.write("\t\t<h5>Latest news reports for ");
      out.print( favLang);
      out.write("</h5>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li>Report 1</li>\n");
      out.write("\t\t\t<li>Report 2</li>\n");
      out.write("\t\t\t<li>Report 3</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\n");
      out.write("\t\t<h5>Hot jobs for ");
      out.print( favLang);
      out.write("</h5>\n");
      out.write("\t\t<ul>\n");
      out.write("\t\t\t<li>Job 1</li>\n");
      out.write("\t\t\t<li>Job 2</li>\n");
      out.write("\t\t\t<li>Job 3</li>\n");
      out.write("\t\t</ul>\n");
      out.write("\n");
      out.write("\t\t<hr>\n");
      out.write("\t\t<a href=\"cookies-personalise-form.html\"> Personalise this page </a>\n");
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
