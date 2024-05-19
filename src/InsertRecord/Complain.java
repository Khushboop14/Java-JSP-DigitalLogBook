import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;
import java.sql.SQLException;
 class Complain
{
	public static void main(String...ar)
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		PreparedStatement st=con.prepareStatement("insert into complaintable values(?,?,?)");
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter user id");
		String userId=sc.next();
                
		System.out.println("Enter contact");
		Long contact=sc.nextLong();
		System.out.println("Enter complain");
                sc.nextLine();
		String complain=sc.nextLine();
		st.setString(1,userId);
		st.setLong(2,contact);
		st.setString(3,complain);
		
		st.executeUpdate();
		System.out.println("Record inserted");
		}
		catch(SQLException | ClassNotFoundException ex)
		{
		ex.printStackTrace();
		}
	
	}
}