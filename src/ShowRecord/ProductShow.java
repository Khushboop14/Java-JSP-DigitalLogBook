package ShowRecord;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
class ProductShow
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","");
PreparedStatement st1 = con.prepareStatement("select* from producttable ");
ResultSet rs = st1.executeQuery();
while(rs.next()){
    
     String productid = rs.getString(1);
     String productname = rs.getString(2);
     String  price = rs.getString(1);
     String description = rs.getString(2);
     
    System.out.println(productid+" "+productname+" "+price+" "+ description );
    
    
}
}
}