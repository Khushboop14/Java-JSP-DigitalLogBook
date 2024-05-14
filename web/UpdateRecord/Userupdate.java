package Update;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
class Userupdate
{
 public void main(String[]args)throws SQLException, ClassNotFoundException
{
 Class.forName("com.mysql.jsbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://locakhost:3306/test","root","root");
Scanner sc = new Scanner(System.in);
System.out.println("enter Userid to update record");
String id = sc.next();
PreparedStatement st1 = con.prepareStatement("select* from authtable where userid = ?");
st1.setString(1,id);
ResultSet rs = st1.executeQuery();
if(rs.next())
 {
 System.out.println(rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4));
 System.out.println("---MENU---");
 System.out.println("1.Userid");
 System.out.println("2.password");
 System.out.println("3.contact");
 System.out.println("4.mail");
 System.out.println("Select choice");
byte choice = sc.nextByte();
switch(choice)
{
    case 1 : 
 System.out.println("enter updated userid" );
 String uid =  sc.next(); 
 System.out.println("enter updated password" );
 String pwd =  sc.next(); 
 System.out.println("enter updated mail" );
 String mail =  sc.next(); 
 System.out.println("enter updated contact" );
 String cnt =  sc.next(); 


PreparedStatement st2 = con.prepareStatement("update authtable set userid = ? where userid = ?");
st2.setString(1, uid);
st2.setString(2,pwd);
st2.setString(3,mail);
st2.setString(4,cnt);

st2.executeUpdate();
 System.out.println("updated!!");
break;
}
}
else{
 System.out.println("record not found to update");
  }
}
}

