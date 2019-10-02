/**
 *    Document   : TestServlet
 *    Created on : 04/09/2019, 5:09:02 PM
 *    Author     : Nivesh-GC
 */
package luv2code.com.web.jdbc;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet(name = "TestServlet", urlPatterns = {"/TestServlet"}, initParams = {
	@WebInitParam(name = "Name", value = "Value")})
public class TestServlet extends HttpServlet {

	//	Define datasource/connection pool for Resource Injection
	@Resource(name = "jdbc/web_student_tracker")	//	defined in context.xml
	private DataSource dataSource;

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

		//	step 0: set ContentType
		response.setContentType("text/html;charset=UTF-8");

		//	step 1: set up PrintWriter
		try (PrintWriter out = response.getWriter()) {

			//	step 2: get connection to database
			Connection myConn = null;
			Statement myStmt = null;
			ResultSet myRs = null;

			myConn = dataSource.getConnection();

			//	step 3: create a SQl statement
			String sql = "select * from student";
			myStmt = myConn.createStatement();

			//	step 4: execute SQL query
			myRs = myStmt.executeQuery(sql);

			//	step 5: process the result set
			while (myRs.next()) {
				String email = myRs.getString("email");
				out.println(email);
			}

		} catch (SQLException ex) {
			ex.printStackTrace();
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
		//	step 0: set Content type
		//	step 1: set up PrintWriter
		//	step 2: get connection to database
		//	step 3: create a SQl statement
		//	step 4: execute SQL query
		//	step 5: process the result set
		processRequest(request, response);
	}
}
