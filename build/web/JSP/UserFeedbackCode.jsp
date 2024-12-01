<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%
    String name=request.getParameter("name");
    String fb=request.getParameter("feedback");
    Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
     PreparedStatement st = con.prepareStatement("insert into feedbacktable values(?,?)");
      st.setString(1,name);   
      st.setString(2,fb);
      st.executeUpdate();
      response.sendRedirect("userpageafterlogin.jsp");
%> 