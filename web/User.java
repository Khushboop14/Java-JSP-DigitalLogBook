import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;
import java.sql.SQLException;
 class User
{
	public static void main(String...ar)
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		PreparedStatement st=con.prepareStatement("insert into usertable values(?,?,?,?,?)");
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Full name");
		String name=sc.next();
		System.out.println("Enter id");
		String id=sc.next();
		System.out.println("Enter password");
		String pwd=sc.next();
		System.out.println("Enter contact");
		Long contact=sc.nextLong();
                System.out.println("Enter building name");
		String bname=sc.next();
		
		st.setString(1,name);
		st.setString(2,id);
		st.setString(3,pwd);
                st.setString(4, bname);
		st.setLong(5,contact);
		st.executeUpdate();
		System.out.println("Record inserted");
		}
		catch(SQLException | ClassNotFoundException ex)
		{
		ex.printStackTrace();
		}
        }
        }
