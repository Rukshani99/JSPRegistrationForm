package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by Roma on 11.09.2016.
 */
public class RegisterDao {
    public static int register(User user){
        int status = 0;

        try{
            Connection con = ConnectionProvider.getCon();
            PreparedStatement statement = con.prepareStatement("INSERT INTO user_table (name, hobby, pass) VALUES (?,?,?);");

            statement.setString(1, user.getName());
            statement.setString(2, user.getHobby());
            statement.setString(3, user.getPass());

            status = statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return status;
    }
}
