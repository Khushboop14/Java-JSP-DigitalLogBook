package ShowRecord;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
class QueryShow
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","");
PreparedStatement st1 = con.prepareStatement("select* from querytable ");
ResultSet rs = st1.executeQuery();
while(rs.next()){
    
     String fullname = rs.getString(1);
     String contact = rs.getString(2);
     String  query = rs.getString(3);     
    System.out.println(fullname+" "+contact+" "+query);
    
    
}
}
}