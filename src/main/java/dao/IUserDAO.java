package dao;

import model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserDAO {
    void insertUser(User user);

    User selectUser(int id);

    List<User>selectAllUsers();

    List<User> searchUserByCountry(String inputcountry);

    List<User> sortByName();

    boolean deleteUser(int id);

    boolean updateUser(User user);
    User getUserById(int id);
    void insertUserStore(User user) throws SQLException;
    void addUserTransaction(User user, int[] permision);
    public void insertUpdateWithoutTransaction();
}
