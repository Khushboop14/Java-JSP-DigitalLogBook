<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%
    String name=request.getParameter("name");
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    String contact=request.getParameter("contact");
    String mailid=request.getParameter("mail");
    Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
     PreparedStatement preparedstatement = con.prepareStatement("insert into usertable values(?,?,?,?,?)");
      preparedstatement.setString(1,name);   
      preparedstatement.setString(2,userid);
      preparedstatement.setString(3,password);
      preparedstatement.setString(4,contact);
      preparedstatement.setString(5,mailid);
      preparedstatement.executeUpdate();
      response.sendRedirect("newjsp.jsp");
%> 