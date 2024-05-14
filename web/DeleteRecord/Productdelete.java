package DeleteRecord;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
import static java.lang.System.out;
public class Productdelete
{
  static public void main(String[]args)throws SQLException, ClassNotFoundException
 {
 Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
Scanner sc = new Scanner(System.in);
out.println("Enter productid to delete");
String proid = sc.next();

PreparedStatement st1 = con.prepareStatement("Select * from producttable where proid = ?");
st1.setString(1,proid);

ResultSet rs = st1.executeQuery();
if(rs.next()){
  PreparedStatement st2 = con.prepareStatement("delete from producttable where userid = ?");
  st2.setString(1,proid);
  st2.executeUpdate();
  System.out.println("Record deleted");
}
else{
 System.out.println("not found record to delete");
 }
}  
}