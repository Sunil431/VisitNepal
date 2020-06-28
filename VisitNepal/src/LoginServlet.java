

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uname");
		String password=request.getParameter("upass");
		
		Connection conn = null;
		Statement st = null;
		ResultSet rs = null;
		String duser = null;
		String dpass = null;
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
		String sql ="select Username, Password from Table1 where Username='"+ username + "'AND Password ='" + password + "';";
		System.out.println(sql);
		try {
			rs=st.executeQuery(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			while(rs.next()) {
				try {
					duser = rs.getString("Username");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}	
				dpass = rs.getString("Password");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		if (username.equals(duser)&& password.equals(dpass)) {
			response.sendRedirect("welcome.jsp");
		}
		else 
			response.sendRedirect("Login.jsp");
	}

}
