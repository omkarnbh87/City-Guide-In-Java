

<%@page import="java.util.Random"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="cityGuide.ConnectionProvider"%>
<%@page import="cityGuide.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String user_id = request.getParameter("mail");
    String pass = request.getParameter("pass");
    String status = null;
    System.out.println("Check User ID And Password : " + user_id + pass);
    Connection con = ConnectionProvider.getconnection();
    Statement st = con.createStatement();
    Statement st1 = con.createStatement();
    Statement sto = con.createStatement();
    try {
        
         ResultSet rs = st1.executeQuery("SELECT * FROM users where mail='" + user_id + "' AND password='" + pass + "'");
        if (rs.next()) {
            String mail = rs.getString("mail");
            String role = rs.getString("role");
            session.setAttribute("uname", rs.getString("name"));
            session.setAttribute("umail", rs.getString("mail"));
            session.setAttribute("uid", rs.getString("id"));
            session.setAttribute("urole", rs.getString("role"));
            if (role.equals("Tourist")) 
            {
                response.sendRedirect("Tourist_Home.jsp?Success");
            } 
            else if(role.equals("Job Seekers"))
            {
             response.sendRedirect("JobSeekers_Home.jsp?Success");
            }
            else if(role.equals("Business Man"))
            {
             response.sendRedirect("Business_Home.jsp?Success");
            }
            else {
                response.sendRedirect("Student_Home.jsp?Success");
            }
     
        } else {
            response.sendRedirect("user_login.jsp?not");

        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

