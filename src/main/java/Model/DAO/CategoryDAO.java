package Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.BEAN.CategoryBean;


public class CategoryDAO {
   
    private Connection connection;

    public CategoryDAO() {
    	connection = DBConnect.getConnection();
    }

    public CategoryBean getCategoryById(int categoryId) {
        CategoryBean category = null;
        String query = "SELECT * FROM categories WHERE category_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, categoryId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                category = new CategoryBean();
                category.setCategoryId(resultSet.getInt("category_id"));
                category.setName(resultSet.getString("name"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return category;
    }

    
    public List<CategoryBean> getAllCategories() {
        List<CategoryBean> categories = new ArrayList<>();
        String query = "SELECT * FROM categories";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                CategoryBean category = new CategoryBean();
                category.setCategoryId(resultSet.getInt("category_id"));
                category.setName(resultSet.getString("name"));
                categories.add(category);
            }
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
        return categories;
    }

    // Add a new category
    public boolean addCategory(CategoryBean category) {
        String query = "INSERT INTO categories (category_id, name) VALUES (?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, category.getCategoryId());
            preparedStatement.setString(2, category.getName());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Delete a category by categoryId
    public boolean deleteCategory(int categoryId) {
        String query = "DELETE FROM categories WHERE category_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, categoryId);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Search for a category by categoryId
    public boolean searchCategoryById(int categoryId) {
        String query = "SELECT * FROM categories WHERE category_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, categoryId);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }
}
