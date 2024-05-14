import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class Producttable{
 
	public static void main(String[] args)
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
		PreparedStatement st=con.prepareStatement("insert into producttable values(?,?,?,?)");
		Scanner sc=new Scanner(System.in);
		System.out.println("Enter Productid");
		String id=sc.next();
		System.out.println("Product name");
		String name=sc.next();
		System.out.println("enter price of product");
		float price=sc.nextFloat();
    	System.out.println("enter description");
		String descrip=sc.nextLine();

		st.setString(1,id);
		st.setString(2,name);
		st.setFloat(3,price);
	  st.setString(3,descrip);
		st.executeUpdate();
		System.out.println("Record inserted");
		}
		catch(SQLException | ClassNotFoundException ex)
		{
		ex.printStackTrace();
		}
	
	}
}