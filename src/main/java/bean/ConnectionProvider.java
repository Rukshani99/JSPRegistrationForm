package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import static bean.Provider.*;

/**
 * Created by Roma on 11.09.2016.
 * Singleton pattern
 */
public class ConnectionProvider {
    private static Connection con = null;
    static {
        try{
            Class.forName(DRIVER);
            con = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public static Connection getCon(){
        return con;
    }
}
