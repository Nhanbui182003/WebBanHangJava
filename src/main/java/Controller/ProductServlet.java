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
    	
    	if (request.getParameter("IDCategory")!=null) {
    		int categoryId = Integer.parseInt(request.getParameter("IDCategory"));
    		ProductBO productBO = new ProductBO();
    		CategoryBO categoryBO= new CategoryBO();
        	List<CategoryBean> listCategory = new ArrayList();   	 
        	listCategory = categoryBO.getAllCategories();
       	 	request.setAttribute("listCategorys", listCategory);
       	 	
    	   	List<ProductBean> listProducts = new ArrayList();   	 
    	 	listProducts = productBO.getListProductByIDCategory(categoryId);
    		request.setAttribute("listProductP", listProducts);
    		RequestDispatcher dispatcher = request.getRequestDispatcher("/product.jsp");
			dispatcher.forward(request, response);
    	}
    	
    	if( request.getParameter("priceRange") != null) {
    		String priceRange = request.getParameter("priceRange");
    		ProductBO productBO = new ProductBO();
        	CategoryBO categoryBO = new CategoryBO();
        	
        	List<ProductBean> listProduct3 = new ArrayList();
        	List<CategoryBean> listCategory2 = new ArrayList();
            // Perform logic to get products in the specified price range
        	listProduct3 = productBO.getProductListByPriceRange(priceRange);
        	listCategory2 = categoryBO.getAllCategories();
            // Set the productList attribute for JSP to use
            request.setAttribute("listProductP", listProduct3);
            request.setAttribute("listCategorys", listCategory2);
            
            // Forward to the JSP page that displays products
            request.getRequestDispatcher("/product.jsp").forward(request, response);
    	}
    }
    	
}

