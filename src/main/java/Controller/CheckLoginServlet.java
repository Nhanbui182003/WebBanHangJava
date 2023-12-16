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
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet("/CheckLoginServlet")
public class CheckLoginServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String model = request.getParameter("model");
        if (request.getParameter("viewhome")!=null) {
        	CategoryBO categoryBO= new CategoryBO();
        	List<CategoryBean> listCategory = new ArrayList();   	 
        	listCategory = categoryBO.getAllCategories();
       	 	request.setAttribute("listCategorys", listCategory);
       	 	
       	 	
    	   	ProductBO productBO= new ProductBO();
    	   	List<ProductBean> listProducts = new ArrayList();   	 
    	 	listProducts = productBO.getAllProducts();
    		request.setAttribute("listProducts", listProducts);
    		RequestDispatcher dispatcher = request.getRequestDispatcher("/Index.jsp");
			dispatcher.forward(request, response);
        }

        if ("login".equals(model)) {
            viewLogin(request, response);
        }  
        if ("register".equals(model)) {
            viewRegister(request, response);
        }  
    }
    
    private void viewLogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String password = request.getParameter("password");
    	String username = request.getParameter("username");
    	UserBO userBO = new UserBO();
    	
    	CategoryBO categoryBO= new CategoryBO();
    	List<CategoryBean> listCategory = new ArrayList();   	 
    	listCategory = categoryBO.getAllCategories();
   	 	request.setAttribute("listCategorys", listCategory);
   	 	
   	 	
	   	ProductBO productBO= new ProductBO();
	 	List<ProductBean> listProduct = new ArrayList();   	 
	 	listProduct = productBO.getTopProducts();
		request.setAttribute("listProducts", listProduct);
		for (ProductBean productBean : listProduct) {
			System.out.println(productBean.getName());
		}
	   	
    	String check = null;
    	check =userBO.loginUser(username, password); 
    	int IDUser = userBO.getID(username, password); 
		
    	if( check!=null) {
    		if(check == "admin") {
    			RequestDispatcher dispatcher = request.getRequestDispatcher("/viewAdmin.jsp");
    			 dispatcher.forward(request, response);
    		}else if(check == "user") {
    			HttpSession session = request.getSession();
    			session.setAttribute("ID_user", IDUser);
    			System.out.print(IDUser);
    			RequestDispatcher dispatcher = request.getRequestDispatcher("/Index.jsp");
    			 dispatcher.forward(request, response);
    		}
    	}else {
    		 response.getWriter().write("PASSWORD OR USERBNAME ERROR!");
    	}
    }
    private void viewRegister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    			RequestDispatcher dispatcher = request.getRequestDispatcher("/Register.jsp");
    			 dispatcher.forward(request, response);
    		
    			 System.out.println("đăng ký");
    }
   
   
}
