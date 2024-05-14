<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.sql.ResultSet"%>
<%
    String userid=request.getParameter("id");
    String password=request.getParameter("pass");
     session.setAttribute("CALL",userid);

    //Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
    PreparedStatement st = con.prepareStatement("SELECT * FROM  usertable where userid=? and password=?");
      st.setString(1,userid);
      st.setString (2,password);
      ResultSet rs=st.executeQuery();
      if(rs.next())
      {
         
            response.sendRedirect("AfterLoginPage.jsp");
      }
      else
      {
      out.println("invalid id/password");
      }
%>