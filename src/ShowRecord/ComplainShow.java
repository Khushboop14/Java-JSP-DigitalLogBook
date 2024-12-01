//package ShowRecord;
//
//import java.sql.DriverManager;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//class ComplainShow
//{
// public static void main(String[]args)throws SQLException, ClassNotFoundException
//{
// Class.forName("com.mysql.jdbc.Driver");
// Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
//PreparedStatement st1 = con.prepareStatement("select * from complaintable");
//ResultSet rs = st1.executeQuery();
//while(rs.next()){
//
//     String complain = rs.getString(1);
//     String userid= rs.getString(2);
//     String contact = rs.getString(3);
//     String complainStatus = rs.getString(4);
//     System.out.println(complain + " "+userid+" "+contact+" "+complainStatus);
//}
//}}

package ShowRecord;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

class ComplainShow {
    public static void main(String[] args) {
        Connection con = null;
        PreparedStatement st1 = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
            st1 = con.prepareStatement("SELECT * FROM complaintable");
            rs = st1.executeQuery();

            while (rs.next()) {
                String complain = rs.getString(1);
                String userid = rs.getString(2);
                String contact = rs.getString(3);
                String complainStatus = rs.getString(4);
                System.out.println(complain + " " + userid + " " + contact + " " + complainStatus);
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources in the reverse order of their opening
            try {
                if (rs != null) rs.close();
                if (st1 != null) st1.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
