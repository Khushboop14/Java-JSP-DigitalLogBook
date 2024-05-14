<%@page import= "java.sql.DriverManager" %>
<%@page import= "java.sql.PreparedStatement"%>
<%@page import= "java.sql.Connection"%>
<%
    String product_name=request.getParameter("pro");
    String product_price=request.getParameter("pp");
    
    Connection con = call.the.connection.ConnectionFactory.emergencyConnection();
    PreparedStatement st = con.prepareStatement("insert into producttable values(?,?)");
    st.setString(1,product_name);  
    st.setString(2,product_price);
     
      st.executeUpdate();
      response.sendRedirect("adminpage.jsp");

%>