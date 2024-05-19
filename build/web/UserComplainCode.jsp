<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%@page import= "java.util.*"%>

<%
    String name=request.getParameter("name");
    String cont=request.getParameter("contact");
    String complain=request.getParameter("complain");
    Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
     PreparedStatement st = con.prepareStatement("insert into complaintable values(?,?,?)");
      st.setString(1,name);   
      st.setString(2,cont);
      st.setString(3,complain);
    
      st.executeUpdate();
      response.sendRedirect("AfterLoginPage.jsp");
%> 