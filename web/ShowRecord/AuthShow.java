package ShowRecord;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
class AdminUpdate
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jsbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","");
PreparedStatement st1 = con.prepareStatement("select* from authtable ");
ResultSet rs = st1.executeQuery();
while(rs.next()){
    
     String id = rs.getString(1);
     String pass= rs.getString(2);
     
    System.out.println(id+" "+pass   );
    
    
}
}
}