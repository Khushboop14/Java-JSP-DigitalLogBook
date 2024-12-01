package InsertRecord;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

class QueryInsert
{
   public static void main(String...ar)
   {
       try
       {
       Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
       PreparedStatement st=con.prepareStatement("insert into querytable values(?,?,?");
       Scanner sc=new Scanner(System.in);
       System.out.println("Enter Full name");
       String name=sc.next();
       System.out.println("Enter contact");
       Long contact=sc.nextLong();
       System.out.println("Enter Query");
       String query=sc.next();


       st.setString(1,name);
       st.setLong(2,contact);
       st.setString(3,query);
       st.executeUpdate();
       System.out.println("Record inserted");
       }
       catch(SQLException | ClassNotFoundException ex)
       {
       ex.printStackTrace();
       }

   }
}