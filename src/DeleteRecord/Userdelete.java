package Delete;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
import static java.lang.System.out;
class Userdelete
{
  static public void main(String...ar)throws SQLException, ClassNotFoundException
 {
  Class. forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:/mysql://localhost:3306/test","root","root");
Scanner sc = new Scanner(System.in);
out.println("Enter Userid to delete");
String id = sc.next();

PreparedStatement st1 = con.prepareStatement("Select * from Usertable where userid = ?");
st1.setString(1,id);

ResultSet rs = st1.executeQuery();

if(rs.next()){
  PreparedStatement st2 = con.prepareStatement("delete from Usertable where userid = ?");
  st2.setString(1,id);
  st2.executeUpdate();
  System.out.println("Record delete");
}
else{
 System.out.println("not found record to delete");
 }
}  
}