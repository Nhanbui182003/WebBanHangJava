package Controller;

import Model.BEAN.CategoryBean;
import Model.BO.CategoryBO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {

    private CategoryBO categoryBO;

    public void init() {
        categoryBO = new CategoryBO();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            if (action.equals("login")) {
                viewLogin(request, response);
            } else if (action.equals("viewCategories")) {
                viewCategories(request, response);
            } else if (action.equals("addCategory")) {
                addCategory(request, response);
            } else if (action.equals("deleteCategory")) {
                deleteCategory(request, response);
            }
        }
    }

    private void viewLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý hiển thị trang đăng nhập
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    private void viewCategories(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy danh sách các danh mục từ CategoryBO
        List<CategoryBean> categories = categoryBO.getAllCategories();
        request.setAttribute("categories", categories);

        // Chuyển hướng đến trang hiển thị danh sách danh mục
        request.getRequestDispatcher("categories.jsp").forward(request, response);
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Lấy thông tin về danh mục từ request
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String categoryName = request.getParameter("categoryName");
        CategoryBean category = new CategoryBean(categoryId, categoryName);

        // Thêm danh mục vào cơ sở dữ liệu qua CategoryBO
        boolean result = categoryBO.addCategory(category);

        if (result) {
            
            response.sendRedirect(request.getContextPath() + "/CategoryServlet?action=viewCategories");
        } else {
           
        }
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        
        boolean result = categoryBO.deleteCategory(categoryId);

        if (result) {
           
            response.sendRedirect(request.getContextPath() + "/CategoryServlet?action=viewCategories");
        } else {
            
        }
    }
}