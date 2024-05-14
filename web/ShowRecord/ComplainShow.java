package ShowRecord;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
class ComplainShow
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","");
PreparedStatement st1 = con.prepareStatement("select* from complaintable ");
ResultSet rs = st1.executeQuery();
while(rs.next()){

     String complain = rs.getString(1);
     String userid= rs.getString(2);
     String contact = rs.getString(3);
     String complainStatus = rs.getString(4);
  
     
    System.out.println(complain + " "+userid+" "+contact+" "+complainStatus);
    
    
}
}}