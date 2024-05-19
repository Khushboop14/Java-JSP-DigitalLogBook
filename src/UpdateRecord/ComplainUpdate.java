package UpdateRecord;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
class ComplainUpdate
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jsbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","");
Scanner sc = new Scanner(System.in);
System.out.println("enter id to update record");
String id = sc.next();
PreparedStatement st1 = con.prepareStatement("select* from Complaintable where userid = ?");
st1.setString(1,id);
ResultSet rs = st1.executeQuery();
if(rs.next())
 {
    System.out.println(rs.getString(1));
    System.out.println("---MENU---");
    System.out.println("1.status");
    System.out.println("Select choice");
    byte choice = sc.nextByte();
    switch(choice)
    {
        case 1 :
      
        System.out.println("enter updated status" );
        String status =  sc.next();
        
        PreparedStatement st2 = con.prepareStatement("update complaintable set complainStatus = ? where userid = ?");
        st2.setString(1, status);
   
        st2.executeUpdate();
        System.out.println("updated!!");
    }
}

else
{
 System.out.println("record not found to update");
  }
}
}