<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.ResultSet"%>

<%
    String userid=request.getParameter("id");
    String password=request.getParameter("pass");
    Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
    PreparedStatement st = con.prepareStatement("select * from  authtable where userid=? and password=?");
      st.setString(1,userid);
      st.setString (2,password);
      ResultSet rs=st.executeQuery();
      if(rs.next())
      {
      response.sendRedirect("AdminAfterLogin.jsp");
      }
      else
      {
      out.println("invalid id/password");
      }
 
%>