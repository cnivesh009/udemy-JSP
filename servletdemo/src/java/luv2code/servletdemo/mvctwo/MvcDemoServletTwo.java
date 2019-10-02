/**
 *    Document   : MvcDemoServletTwo
 *    Created on : 31/08/2019, 2:59:01 PM
 *    Author     : Nivesh-GC
 */
package luv2code.servletdemo.mvctwo;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "MvcDemoServletTwo", urlPatterns = {"/MvcDemoServletTwo"})
public class MvcDemoServletTwo extends HttpServlet {

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

		//	step 1: get the student data from helper class - StudentDataUtil.java
		List<Student> students = StudentDataUtil.getStudents();

		//	step 2: add students to request object
		request.setAttribute("student_list", students);

		//	step 3: get request dispatcher
		RequestDispatcher dispatcher = request.getRequestDispatcher("view_students_two.jsp");

		//	step 4: forward to jsp
		dispatcher.forward(request, response);

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
		//	step 1: get the student data from helper class - StudentDataUtil.java
		//	step 2: add students to request object
		//	step 3: get request dispatcher
		//	step 4: forward to jsp
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
