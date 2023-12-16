package Controller;

import Model.BEAN.CategoryBean;
import Model.BEAN.ProductBean;
import Model.BEAN.UserBean;
import Model.BO.CategoryBO;
import Model.BO.ProductBO;
import Model.BO.UserBO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	if (request.getParameter("productId")!=null) {
    		int productId = Integer.parseInt(request.getParameter("productId"));
    		ProductBO productBO = new ProductBO();
    		ProductBean product = productBO.getProductById(productId);
    		request.setAttribute("product", product);
    		CategoryBO categoryBO= new CategoryBO();
        	List<CategoryBean> listCategory = new ArrayList();   	 
        	listCategory = categoryBO.getAllCategories();
       	 	request.setAttribute("listCategorys", listCategory);
       	 	
    	   	List<ProductBean> listProducts = new ArrayList();   	 
    	 	listProducts = productBO.getAllProducts();
    		request.setAttribute("listProducts", listProducts);
    		RequestDispatcher dispatcher = request.getRequestDispatcher("/product_detail.jsp");
			dispatcher.forward(request, response);
    	}
    }
}
