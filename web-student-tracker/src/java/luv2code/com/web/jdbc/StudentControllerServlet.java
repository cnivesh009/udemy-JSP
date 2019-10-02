/**
 *    Document   : StudentControllerServlet
 *    Created on : 04/09/2019, 5:22:20 PM
 *    Author     : Nivesh-GC
 */
package luv2code.com.web.jdbc;

import java.io.IOException;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet(name = "StudentControllerServlet", urlPatterns = {"/StudentControllerServlet"})
public class StudentControllerServlet extends HttpServlet {

	private StudentDBUtil studentDbUtil;
	@Resource(name = "jdbc/web_student_tracker")
	private DataSource dataSource;

	@Override
	public void init() throws ServletException {
		super.init();
		//	create studentDbUtil and pass the connection pool/ datasource
		try {
			studentDbUtil = new StudentDBUtil(dataSource);
		} catch (Exception ex) {
			throw new ServletException(ex);
		}
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			//	read the "command" parameter ("command" in add-student-form.jsp)
			String theCommand = request.getParameter("command");

			//	if the command is missingn, then default to listing items
			if (theCommand == null) {
				theCommand = "LIST";
			}

			//	route to the appropriate method
			switch (theCommand) {
				case "LIST":
					listStudents(request, response);
					break;
//				case "ADD":
//					addStudent(request, response);
//					break;
				case "LOAD":	//	works with UPDATE command
					loadStudent(request, response);
					break;
				case "UPDATE":
					updateStudent(request, response);
					break;
				case "DELETE":
					deleteStudent(request, response);
					break;

				case "SEARCH":
					searchStudents(request, response);
					break;

				default:
					listStudents(request, response);
			}

			//	list the students... in the MVC fashion
			listStudents(request, response);
		} catch (Exception ex) {
			throw new ServletException(ex);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			// read the "command" parameter
			String theCommand = request.getParameter("command");

			// route to the appropriate method
			switch (theCommand) {

				case "ADD":
					addStudent(request, response);
					break;

				default:
					listStudents(request, response);
			}

		} catch (Exception exc) {
			throw new ServletException(exc);
		}

	}

	private void listStudents(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//	get students from the db util
		List<Student> students = studentDbUtil.getStudents();

		//	add students to the request
		request.setAttribute("STUDENT_LIST", students);

		//	send the JSP page(view)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/list-students.jsp");
		dispatcher.forward(request, response);
	}

	private void addStudent(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//	read student info from the data
		String first_Name = request.getParameter("firstName");	//	(from add-student-form var = firstName
		String last_Name = request.getParameter("lastName");
		String email = request.getParameter("email");

		//	create a new student object
		Student theStudent = new Student(first_Name, last_Name, email);

		//	add the student to the database
		studentDbUtil.addStudent(theStudent);

		//	send back to main page (the student list)
		//	SEND AS REDIRECT to avoid multiple-browser reload issue
		response.sendRedirect(request.getContextPath() + "/StudentControllerServlet?command=LIST");

	}

	private void loadStudent(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//	read student id from data
		String theStudentId = request.getParameter("studentId");

		//	get student database (db util)
		Student theStudent = studentDbUtil.getStudent(theStudentId);

		//	place student in the request attribute
		request.setAttribute("THE_STUDENT", theStudent);

		//	send to jsp page: update-student-form.jsp
		RequestDispatcher dispatcher = request.getRequestDispatcher("/update-student-form.jsp");

		dispatcher.forward(request, response);
	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response)
			throws Exception {

		//	read student info from form data
		int id = Integer.parseInt(request.getParameter("studentId"));
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String email = request.getParameter("email");

		//	create a new student object
		Student theStudent = new Student(id, firstName, lastName, email);

		//	perform update on database
		studentDbUtil.updateStudent(theStudent);

		//	send them back to the "list students" page
		listStudents(request, response);
	}

	private void deleteStudent(HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		//	read student id from the form
		String theStudentId = request.getParameter("studentId");

		//	delete student from the database
		studentDbUtil.deleteStudent(theStudentId);

		//	send them back to the list-students.jsp page
		listStudents(request, response);

	}

	private void searchStudents(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// read search name from form data
		String theSearchName = request.getParameter("theSearchName");

		// search students from db util
		List<Student> students = studentDbUtil.searchStudents(theSearchName);

		// add students to the request
		request.setAttribute("STUDENT_LIST", students);

		// send to JSP page (view)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/list-students.jsp");
		dispatcher.forward(request, response);
	}

}
