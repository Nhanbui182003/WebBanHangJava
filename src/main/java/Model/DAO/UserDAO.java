package Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.BEAN.UserBean;

public class UserDAO {
    private Connection connection;

    public UserDAO() {
    	
    	connection = DBConnect.getConnection();
    }
    public int getID(String username, String password) {
        String query = "SELECT user_id FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println("đã tới đây");
            if (resultSet.next()) {
                int ID = resultSet.getInt("user_id");
                    return ID;            
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return -1; 
    }
    // Get user by userId
    public UserBean getUserById(int userId) {
        UserBean user = null;
        String query = "SELECT * FROM users WHERE user_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                user = new UserBean();
                user.setUserId(resultSet.getInt("user_id"));
                user.setUsername(resultSet.getString("username"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setAddress(resultSet.getString("address"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return user;
    }

    // Get all users
    public List<UserBean> getAllUsers() {
        List<UserBean> users = new ArrayList<>();
        String query = "SELECT * FROM users";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                UserBean user = new UserBean();
                user.setUserId(resultSet.getInt("user_id"));
                user.setUsername(resultSet.getString("username"));
                user.setEmail(resultSet.getString("email"));
                user.setPassword(resultSet.getString("password"));
                user.setAddress(resultSet.getString("address"));
                user.setPhoneNumber(resultSet.getString("phone_number"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return users;
    }

    // Add a new user
    public boolean addUser(UserBean user) {
        String query = "INSERT INTO users (user_id, username, email, password, address, phone_number, role) VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, user.getUserId());
            preparedStatement.setString(2, user.getUsername());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getPassword());
            preparedStatement.setString(5, user.getAddress());
            preparedStatement.setString(6, user.getPhoneNumber());
            preparedStatement.setString(7, user.getRole());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Delete a user by userId
    public boolean deleteUser(int userId) {
        String query = "DELETE FROM users WHERE user_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Search for a user by userId
    public boolean searchUserById(int userId) {
        String query = "SELECT * FROM users WHERE user_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, userId);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }
    public String checkLogin(String username, String password) {
        String query = "SELECT role FROM users WHERE username = ? AND password = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            System.out.println("đã tới đây");
            if (resultSet.next()) {
                String role = resultSet.getString("role");
                
                if ("admin".equals(role)) {
                    return "admin";
                } else if ("user".equals(role)) {
                    return "user";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return null; 
    }
    
    public boolean updateUser(UserBean user) {
        String query = "UPDATE users SET username=?, email=?, password=?, address=?, phone_number=? WHERE user_id=?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setString(4, user.getAddress());
            preparedStatement.setString(5, user.getPhoneNumber());
            preparedStatement.setInt(6, user.getUserId());

            int rowsUpdated = preparedStatement.executeUpdate();
            return rowsUpdated > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

}
