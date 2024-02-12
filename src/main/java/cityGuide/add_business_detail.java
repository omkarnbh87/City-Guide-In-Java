
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
public class add_business_detail extends HttpServlet {

	private SimpleDateFormat format;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String b_name = request.getParameter("b_name");
		String b_city = request.getParameter("b_city");
		String b_state = request.getParameter("b_state");
		String b_address = request.getParameter("b_address");
		String shops = request.getParameter("shops");
		String bvalue = request.getParameter("bvalue");
		String populations = request.getParameter("populations");
		String des = request.getParameter("des");
		String cat = request.getParameter("cat");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String time = dateFormat.format(date);

		System.out.println("name" + b_name + "city" + b_city + "state" + b_state + "address" + b_address + "des" + des
				+ "cat" + cat);
		InputStream inputStream = null;

		Part filePart = request.getPart("pic1");
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

			String sql = "insert into business_portal(b_name, b_city, b_state, address, des, cat, pic1, time, shops, bvalue, population) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, b_name);
			statement.setString(2, b_city);
			statement.setString(3, b_state);
			statement.setString(4, b_address);
			statement.setString(5, des);
			statement.setString(6, cat);

			if (inputStream != null) {
				statement.setBlob(7, inputStream);
			}
			statement.setString(8, time);

			statement.setString(9, shops);
			statement.setString(10, bvalue);
			statement.setString(11, populations);

			int row = statement.executeUpdate();
			if (row > 0) {

				response.sendRedirect("BusinessmanDetail.jsp?msg=Success");
			} else {
				response.sendRedirect("BusinessmanDetail.jsp?msg=Failed");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
}
