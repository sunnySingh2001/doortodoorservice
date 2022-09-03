package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author arun
 */
public class dbconnection {
  static Connection con;
    public static Connection getConnection()
    {
    try{
        
           //Class.forName("com.mysql.jdbc.Driver");
           //con=DriverManager.getConnection("jdbc:mysql://localhost/wrps","root","");     
        Class.forName("oracle.jdbc.driver.OracleDriver");
         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","powers12");
       
    }
       
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return con;
    }
}
