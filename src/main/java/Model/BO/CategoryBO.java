package Model.BO;

import Model.BEAN.CategoryBean;
import Model.DAO.CategoryDAO;

import java.util.List;

public class CategoryBO {

    private CategoryDAO categoryDAO;

    public CategoryBO() {
        categoryDAO = new CategoryDAO();
    }

    public CategoryBean getCategoryById(int categoryId) {
        return categoryDAO.getCategoryById(categoryId);
    }

    public List<CategoryBean> getAllCategories() {
        return categoryDAO.getAllCategories();
    }

    public boolean addCategory(CategoryBean category) {
        // Kiểm tra xem danh mục đã tồn tại hay chưa
        if (categoryDAO.searchCategoryById(category.getCategoryId())) {
            return false;
        }
        return categoryDAO.addCategory(category);
    }

    public boolean deleteCategory(int categoryId) {
        // Kiểm tra xem danh mục có tồn tại hay không
        if (!categoryDAO.searchCategoryById(categoryId)) {
            return false;
        }
        return categoryDAO.deleteCategory(categoryId);
    }
}