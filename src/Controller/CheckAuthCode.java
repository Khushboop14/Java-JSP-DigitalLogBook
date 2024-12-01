package Service;
import javax.servlet.http.HttpServlet;
import java.net.http.HttpRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/CheckAuthCode")
public class CheckAuthCode extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

//        this are the predefine object which is require to use whenever we want to work with service
//        HttpServletRequest : use to fetch request
//        HttpServletResponse : use to send response

        // Set response content type
//        res.setContentType("text/html");
//        PrintWriter out = res.getWriter();

        // Get parameters from the request
        String userid = req.getParameter("id");
        String password = req.getParameter("pass");

        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");

            // Create SQL query
            st = con.prepareStatement("SELECT * FROM usertable WHERE userid=? AND password=?");
            st.setString(1, userid);
            st.setString(2, password);

            // Execute query
            rs = st.executeQuery();

            // Check if user exists
            if (rs.next()) {
                // Redirect to another page on successful login
                res.sendRedirect("AfterLoginPage.jsp");
            } else {
                // Display error message
                out.println("Invalid id/password");
            }

        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("Error: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (st != null) st.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}

