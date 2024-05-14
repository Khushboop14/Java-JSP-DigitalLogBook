
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Scanner;
import java.sql.SQLException;
class Feedback
{
	public static void main(String...ar)
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
		PreparedStatement st=con.prepareStatement("insert into feedbacktable values(?,?)");
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Full name");
		String name=sc.next();
		System.out.println("Enter feedback");
		String feedback=sc.next();
		
		st.setString(1,name);
		st.setString(2,feedback);
		st.executeUpdate();
		System.out.println("Record inserted");
		}
		catch(SQLException | ClassNotFoundException ex)
		{
		ex.printStackTrace();
		}
	
	}
}