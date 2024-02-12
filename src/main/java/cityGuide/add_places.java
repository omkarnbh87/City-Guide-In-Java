
package cityGuide;

import java.io.IOException;

import java.io.InputStream;
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
public class add_places extends HttpServlet {

	private SimpleDateFormat format;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession(true);
		String p_name = request.getParameter("p_name");
		String p_city = request.getParameter("p_city");
		String p_state = request.getParameter("p_state");
		String p_address = request.getParameter("p_address");
		String des = request.getParameter("des");
		String cat = request.getParameter("cat");
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();
		String time = dateFormat.format(date);

		System.out.println("name" + p_name + "city" + p_city + "state" + p_state + "address" + p_address + "des" + des
				+ "cat" + cat);
		InputStream inputStream = null;
		InputStream inputStream1 = null;
		InputStream inputStream2 = null;
		Part filePart = request.getPart("pic1");
		if (filePart != null) {
			System.out.println(filePart.getName());
			System.out.println(filePart.getSize());
			System.out.println(filePart.getContentType());
			inputStream = filePart.getInputStream();
		}
		Part filePart1 = request.getPart("pic2");
		if (filePart != null) {
			System.out.println(filePart1.getName());
			System.out.println(filePart1.getSize());
			System.out.println(filePart1.getContentType());
			inputStream1 = filePart1.getInputStream();
		}
		Part filePart2 = request.getPart("pic3");
		if (filePart != null) {
			System.out.println(filePart2.getName());
			System.out.println(filePart2.getSize());
			System.out.println(filePart2.getContentType());
			inputStream2 = filePart2.getInputStream();
		}
		Connection conn = null;
		String message = null;
		try {

			conn = ConnectionProvider.getconnection();

			String sql = "insert into places(p_name,p_city,p_state,address,des,cat,pic1,time,pic2,pic3) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, p_name);
			statement.setString(2, p_city);
			statement.setString(3, p_state);
			statement.setString(4, p_address);
			statement.setString(5, des);
			statement.setString(6, cat);

			if (inputStream != null) {
				statement.setBlob(7, inputStream);
			}
			statement.setString(8, time);
			if (inputStream != null) {
				statement.setBlob(9, inputStream1);
			}
			if (inputStream != null) {
				statement.setBlob(10, inputStream2);
			}

			int row = statement.executeUpdate();
			if (row > 0) {

				response.sendRedirect("Add_places.jsp?msg=Success");
			} else {
				response.sendRedirect("Add_places.jsp?msg=Failed");
			}
		} catch (SQLException ex) {
			ex.printStackTrace();

		}
	}
}
