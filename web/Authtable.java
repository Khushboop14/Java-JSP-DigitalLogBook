import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Authtable {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
            PreparedStatement st = con.prepareStatement("insert into Authtable values(?,?,?,?)");
            Scanner scanner = new Scanner(System.in);

            System.out.println("Enter userid");
            String id = scanner.next();

            System.out.println("Enter password");
            String pwd = scanner.next();

            System.out.println("post");
            String post = scanner.next();

            System.out.println("contact");
            String contact = scanner.next();

            st.setString(1, id);
            st.setString(2, pwd);
            st.setString(3, post);
            st.setString(4, contact);

            st.executeUpdate();
            System.out.println("record inserted");
        } catch (SQLException | ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }
}
