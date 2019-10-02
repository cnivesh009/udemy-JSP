/**
 *    Document   : Student
 *    Created on : 31/08/2019, 2:31:04 PM
 *    Author     : Nivesh-GC
 */
package luv2code.servletdemo.mvctwo;

public class Student {

	private String firstName;
	private String lastName;
	private String email;

	public Student(String firstName, String lastName, String email) {
//		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	/*********** Getters and Setters ***********/
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	/*********************************/

}
