package UpdateRecord;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
class Productupdate
{

   private String id;
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jsbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","root");

Scanner sc = new Scanner(System.in);
System.out.println("enter Productid to update record");
String proid = sc.next();
System.out.println("enter updated productname" );
String proname =  sc.next(); 
System.out.println("enter updated price" );
String price =  sc.next(); 
System.out.println("enter updated description" );
String des =  sc.next();
 
PreparedStatement st1 = con.prepareStatement("select* from producttable where productid = ?");
st1.setString(1,id);
ResultSet rs = st1.executeQuery();
if(rs.next())
 {
 System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4));
 System.out.println("---MENU---");
 System.out.println("1.productid");
 System.out.println("2.productname");
 System.out.println("3.price");
 System.out.println("4.Description");
 System.out.println("Select choice");
byte choice = sc.nextByte();
switch(choice)
{
    case 1 : 
 System.out.println("enter updated productid" );
 String uproid =  sc.next(); 
 System.out.println("enter updated productname" );
 String uproname =  sc.next(); 
 System.out.println("enter updated price" );
 String uprice =  sc.next(); 
 System.out.println("enter updated description" );
 String udest =  sc.next(); 


PreparedStatement st2 = con.prepareStatement("update authtable set userid = ? where userid = ?");
st2.setString(1, uproid);
st2.setString(2,uproname);
st2.setString(3,uprice);
     
         st2.setString(4,udest);
     

st1.executeUpdate();
 System.out.println("updated!!");
   break;

}
}
else {
 System.out.println("record not found to update");
  }
}
}

