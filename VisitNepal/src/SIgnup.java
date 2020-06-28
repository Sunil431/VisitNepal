

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SIgnup
 */
@WebServlet("/SIgnup")
public class SIgnup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("email");
		String name = request.getParameter("uname");
		String sub = request.getParameter("password");
		
		Connection conn = null;
		Statement st = null;
		// To Load The driver
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		// Database Connection
		try {
			 conn = DriverManager.getConnection("jdbc:mysql://localhost/BigProject", "root", "");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Create Statement
		try {
			 st = conn.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//Create SQL
		String sql ="insert into Table1 values (null,'" + name + "','" + sub + "')";
		
		try {
			 st.executeUpdate(sql);
			System.out.println("Sucess");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(st!=null) {
			response.sendRedirect("Login.jsp");
		}
	}

}
