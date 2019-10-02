/**
 *    Document   : StudentDataUtil
 *    Created on : 31/08/2019, 2:49:13 PM
 *    Author     : Nivesh-GC
 */
package luv2code.servletdemo.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {

		//	create an empty list
		List<Student> students = new ArrayList<>();

		//	add sample data
		students.add(new Student("Mary", "Public", "mary@luv2code.com"));
		students.add(new Student("Ramesh", "Suresh", "ramus@luv2code.com"));
		students.add(new Student("Grover", "Wood", "growood@luv2code.com"));
		students.add(new Student("Nivesh", "Chandola", "cnivesh@luv2code.com"));

		//	return the list
		return students;
	}
}
