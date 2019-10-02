/**
 *    Document   : TestParamServlet
 *    Created on : 31/08/2019, 11:49:53 AM
 *    Author     : Nivesh-GC
 */
package luv2code.servletdemo;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestParamServlet extends HttpServlet {

	/**
	 * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
	 * methods.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//	1. set content type
		response.setContentType("text/html;charset=UTF-8");

		//	2. get PrintWriter
		try (PrintWriter out = response.getWriter()) {

			//	3. read congiguration
			ServletContext context = getServletContext();	//	inherit from HttpServlet

			//	in web.xml file
			String MaxCartSize = context.getInitParameter("max-shopping-cart-size");
			String teamName = context.getInitParameter("project-team-name");

			//	4. generate HTML Content
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>TestParamServlet</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<p>Max Cart: " + MaxCartSize + "<br/><br/>"
					+ "Team name: " + teamName + "</p>");
			out.println("</body>");
			out.println("</html>");
		}
	}

	// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
	/**
	 * Handles the HTTP <code>GET</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//	1. set content type
		//	2. get PrintWriter
		//	3. read congiguration
		//	4. generate HTML content
		processRequest(request, response);
	}

	/**
	 * Handles the HTTP <code>POST</code> method.
	 *
	 * @param request servlet request
	 * @param response servlet response
	 * @throws ServletException if a servlet-specific error occurs
	 * @throws IOException if an I/O error occurs
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request, response);
	}

	/**
	 * Returns a short description of the servlet.
	 *
	 * @return a String containing servlet description
	 */
	@Override
	public String getServletInfo() {
		return "Short description";
	}// </editor-fold>

}
