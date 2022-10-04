package dao;

import model.User;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserStoredDAO extends UserDAO {
    protected static final String INSERT_USERS_SQL = "{CALL insert_user(?,?,?)}";
    protected static final String SELECT_USER_BY_ID = "{CALL get_user_by_id(?)}";

    @Override
    public void insertUser(User user) {
        try {
            CallableStatement callableStatement = connection.prepareCall(INSERT_USERS_SQL);
            callableStatement.setString(1, user.getName());
            callableStatement.setString(2, user.getEmail());
            callableStatement.setString(3, user.getCountry());

            System.out.println(callableStatement);

            callableStatement.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    @Override
    public User selectUser(int id) {
        User user = new User();
        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_USER_BY_ID);
            callableStatement.setInt(1, id);
            System.out.println(callableStatement);

            ResultSet rs = callableStatement.executeQuery();

            while (rs.next()) {
                String name = rs.getString("name");
                String email = rs.getString("email");
                String country = rs.getString("country");
                user = new User(id, name, email, country);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
}
