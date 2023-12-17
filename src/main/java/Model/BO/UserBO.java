package Model.BO;

import java.util.ArrayList;
import java.util.List;

import Model.BEAN.UserBean;
import Model.DAO.UserDAO;

public class UserBO {
    private UserDAO userDAO;

    public UserBO() {
        userDAO = new UserDAO();
    }
    public int getID(String username, String password) {
    	return userDAO.getID(username, password);
    }
    public boolean registerUser(UserBean user) {
        
        return userDAO.addUser(user);
    }

    // Business logic for user login
    public String loginUser(String username, String password) {
        
        return userDAO.checkLogin(username, password);
    }

    public UserBean getUserById(int userId) {
        
        return userDAO.getUserById(userId);
    }

   
    public List<UserBean> getAllUsers() {
    	  List<UserBean> users = new ArrayList<>();
        users =  userDAO.getAllUsers();
        return users;
    }

    
    public boolean deleteUser(int userId) {
       
        return userDAO.deleteUser(userId);
    }

   
    public boolean searchUserById(int userId) {
       
        return userDAO.searchUserById(userId);
    }
    
    public boolean updateUser(UserBean user) {
        
        return userDAO.updateUser(user);
    }
    public boolean addUser(UserBean user) {
    	return userDAO.addUser(user);
    }
}
