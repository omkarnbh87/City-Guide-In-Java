
<%@page import="cityGuide.ConnectionProvider"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.security.SecureRandom"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.*"%>
<%
String name = request.getParameter("name");
    String mail = request.getParameter("email");
    String phone = request.getParameter("phone");
    String role = request.getParameter("role");
    String pass = request.getParameter("pass");
    Connection con = ConnectionProvider.getconnection();
    Statement sto =null;
    Statement st = null;
    try
    {
         st = con.createStatement();
         sto=con.createStatement();
    }
    catch(Exception e)
    {
    	
    }
    DateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm:ss");
    Date date = new Date();
    String time = dateFormat.format(date);
    System.out.println("Date and Time : " + time);
    System.out.println("Date and Time : " + name);
    System.out.println("Date and Time : " + pass);
    try {
        int i = sto.executeUpdate("insert into users(name, mail, phone, role, password, reg_time)values('" + name + "','" + mail + "','" + phone + "','" + role + "','" + pass + "','"+time+"')");
        if (i != 0) {
            System.out.println("success");
            response.sendRedirect("reg.jsp?msg=success");
        } else {
            System.out.println("users.jsp?msg=failed");
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>
