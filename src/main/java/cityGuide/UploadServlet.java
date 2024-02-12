
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
public class UploadServlet extends HttpServlet {

	private SimpleDateFormat format;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String name = session.getAttribute("uname").toString();
		String email = session.getAttribute("umail").toString();
		String uid = session.getAttribute("uid").toString();
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String time = dateFormat.format(date);

		InputStream inputStream = null;

		Part filePart = request.getPart("resume");
		if (filePart != null) {
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
		}
		Connection conn = null;
		String message = null;
		try {

			conn = ConnectionProvider.getconnection();

			String sql = "insert into user_resume(uid,uname,umail,resume,post_time,state,city) values (?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, uid);
			statement.setString(2, name);
			statement.setString(3, email);

			if (inputStream != null) {
				statement.setBlob(4, inputStream);
			}
			statement.setString(5, time);
			statement.setString(6, state);
			statement.setString(7, city);

			int row = statement.executeUpdate();
			if (row > 0) {

				response.sendRedirect("Upload_resume.jsp?msg=Success");
			} else {
				response.sendRedirect("Upload_resume.jsp?msg=Failed");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
