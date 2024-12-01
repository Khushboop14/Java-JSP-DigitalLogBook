<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.io.*,java.util.*" %>

<%
    String userid = request.getParameter("id");
    String password = request.getParameter("pass");

    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

        PreparedStatement st = con.prepareStatement("SELECT * FROM usertable WHERE userid=? AND password=?");
        st.setString(1, userid);
        st.setString(2, password);

        ResultSet rs = st.executeQuery();

        if (rs.next()) {
            session.setAttribute("CALL", userid);
            response.sendRedirect("AfterLoginPage.jsp");
        } else {
            out.println("Invalid id/password");
        }

        // Close resources
        rs.close();
        st.close();
        con.close();
    } catch (SQLException | ClassNotFoundException e) {
        // Handle exceptions
        e.printStackTrace();
        out.println("An error occurred while processing your request.");
    }
%>
