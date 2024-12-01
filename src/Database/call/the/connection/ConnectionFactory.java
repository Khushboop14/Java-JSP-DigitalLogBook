package call.the.connection;
import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory
{
    static Connection con=null;
    
    static //which execute always first and once
    {
       try
       {
    Class.forName("com.mysql.jdbc.Driver");
   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
       }catch( Exception ex){} 
    }
   
    public static Connection emergencyConnection()throws Exception
    {
     if(con.isClosed())
      con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
        return con;
    }
    }
