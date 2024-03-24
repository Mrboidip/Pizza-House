/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;

/**
 *
 * @author Nhat Anh
 */
public class UserDAO extends DBContext {

    public User checkAccount(String email, String password) {
        User user = new User();
        String sql = "select username,roles,status from Users where UserName = ? and Password = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);
            statement.setString(2, password);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                user.setUsername(resultSet.getString("username"));
                user.setRoles(resultSet.getString("roles"));
                user.setStatus(resultSet.getBoolean("status"));
                return user;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public boolean checkEmail(String email) {
        String sql = "select username from Users where UserName = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public boolean insertUser(User user) {
        String sql = "INSERT INTO [dbo].[Users]\n"
                + "           ([UserName]\n"
                + "           ,[Password]\n"
                + "           ,[Roles]\n"
                + "           ,[PhoneNumber]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            statement.setString(3, user.getRoles());
            statement.setString(4, user.getPhoneNumber());
            statement.setBoolean(5, user.isStatus());
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public List<User> getAllStaff() {
        List<User> list = new ArrayList<>();
        String sql = "select id, username, phoneNumber ,status from users where roles = 'staff' order by id";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setUsername(rs.getString("username"));
                user.setPhoneNumber(rs.getString("phonenumber"));
                user.setStatus(rs.getBoolean("status"));
                list.add(user);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean changeUserStatus(int userId, boolean status) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [status] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setBoolean(1, status);
            statement.setInt(2, userId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public boolean resetPassword(int userId, String password) {
        String sql = "UPDATE [dbo].[Users]\n"
                + "   SET [password] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, password);
            statement.setInt(2, userId);
            statement.executeUpdate();
            return true;
        } catch (SQLException e) {
            System.out.println(e);
            return false;
        }
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        dao.changeUserStatus(2, false);
        System.out.println();
    }
}
