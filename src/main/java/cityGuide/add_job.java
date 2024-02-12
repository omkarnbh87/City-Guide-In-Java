
package cityGuide;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@MultipartConfig(maxFileSize = 16177215)
public class add_job extends HttpServlet {

	private SimpleDateFormat format;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String occupation = request.getParameter("occupation");
		String Company = request.getParameter("Company");
		String Description = request.getParameter("Description");
		String j_state = request.getParameter("j_state");
		String j_city = request.getParameter("j_city");
		String j_address = request.getParameter("j_address");
		String vaccancy = request.getParameter("vaccancy");
		String Contact = request.getParameter("Contact");
		String offmail = request.getParameter("offmail");

		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String time = dateFormat.format(date);

		Connection conn = null;
		String message = null;
		try {

			// DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
			conn = ConnectionProvider.getconnection();

			String sql = "insert into job_portal(occupation, Company, vaccancy, Description, Contact, offmail, j_state, j_city, j_address, post_time) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, occupation);
			statement.setString(2, Company);
			statement.setString(3, vaccancy);
			statement.setString(4, Description);
			statement.setString(5, Contact);
			statement.setString(6, offmail);
			statement.setString(7, j_state);
			statement.setString(8, j_city);
			statement.setString(9, j_address);
			statement.setString(10, time);

			int row = statement.executeUpdate();
			if (row > 0) {

				response.sendRedirect("JobseekerDetail.jsp?msg=Success");
			} else {
				response.sendRedirect("JobseekerDetail.jsp?msg=Failed");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
