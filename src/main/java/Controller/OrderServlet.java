package Controller;

import Model.BEAN.CategoryBean;
import Model.BEAN.OrderBean;
import Model.BEAN.OrderItemBean;
import Model.BEAN.ProductBean;
import Model.BEAN.UserBean;
import Model.BO.CategoryBO;
import Model.BO.OrderBO;
import Model.BO.ProductBO;
import Model.BO.UserBO;
import Model.DAO.ProductDAO;

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

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request,response);
       
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	processRequest(request,response);
    }
    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	 int quantity = 1;
         int id;
         if (request.getParameter("productId")!=null) {
         	id = Integer.parseInt(request.getParameter("productId"));
         	ProductBO productBO = new ProductBO();
         	ProductBean product = productBO.getProductById(id);
         	if (request.getParameter("quantity")!=null) {
         		quantity = Integer.parseInt(request.getParameter("quantity"));
         	}
         	HttpSession session = request.getSession();
         	if (session.getAttribute("order")==null) {
         		OrderBean order = new OrderBean();
         		List<OrderItemBean> items = new ArrayList<OrderItemBean>();
         		OrderItemBean item = new OrderItemBean();
         		item.setQuantity(quantity);
         		item.setOrderId(order.getOrderId());
         		item.setItem(product);
         		items.add(item);
         		order.setListItem(items);
         		order.setTotalPrice(quantity*product.getPriceSale());
         		session.setAttribute("order",order);
         	} else {
         		OrderBean order = (OrderBean)session.getAttribute("order");
         		List<OrderItemBean> items = order.getListItem();
         		boolean check = false;
         		for (OrderItemBean orderItemBean : items) {
 					if (orderItemBean.getItem().getProductId()==product.getProductId()) {
 						orderItemBean.setQuantity(orderItemBean.getQuantity()+quantity);
 						order.setTotalPrice(order.getTotalPrice()+quantity*product.getPriceSale());
 						check = true;
 					}
 				}
         		if (check==false) {
         			OrderItemBean item = new OrderItemBean();
             		item.setQuantity(quantity);
             		item.setOrderId(order.getOrderId());
             		item.setItem(product);
             		items.add(item);
             		order.setTotalPrice(order.getTotalPrice()+quantity*product.getPriceSale());
         		}
         		session.setAttribute("order",order);
         	}
         	CategoryBO categoryBO= new CategoryBO();
         	List<CategoryBean> listCategory = new ArrayList();   	 
         	listCategory = categoryBO.getAllCategories();
        	 	request.setAttribute("listCategorys", listCategory);
        	 	
     	   	List<ProductBean> listProducts = new ArrayList();   	 
     	 	listProducts = productBO.getAllProducts();
     		request.setAttribute("listProducts", listProducts);

         	RequestDispatcher dispatcher = request.getRequestDispatcher("/Index.jsp");
 			dispatcher.forward(request, response);
         }
         
         if (request.getParameter("viewcart")!=null) {
        	CategoryBO categoryBO= new CategoryBO();
        	ProductBO productBO = new ProductBO();
        	
          	List<CategoryBean> listCategory = new ArrayList();   	 
          	listCategory = categoryBO.getAllCategories();
         	request.setAttribute("listCategorys", listCategory);
         	 	
      	   	List<ProductBean> listProducts = new ArrayList();   	 
      	 	listProducts = productBO.getAllProducts();
      		request.setAttribute("listProducts", listProducts);

          	RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
  			dispatcher.forward(request, response);
         }
         
         if (request.getParameter("updateId")!=null) {
     		int updateId = Integer.parseInt(request.getParameter("updateId"));
     		int updatedQuantity = Integer.parseInt(request.getParameter("quantity"));
     		HttpSession session = request.getSession();
     		OrderBean order = (OrderBean)session.getAttribute("order");
     		List<OrderItemBean> items = order.getListItem();
     		for (OrderItemBean orderItemBean : items) {
					if (orderItemBean.getItem().getProductId()==updateId) {
						order.setTotalPrice(order.getTotalPrice()-orderItemBean.getItem().getPriceSale()*orderItemBean.getQuantity());
						orderItemBean.setQuantity(updatedQuantity);
						order.setTotalPrice(order.getTotalPrice()+updatedQuantity*orderItemBean.getItem().getPriceSale());
					}
				}
     		session.setAttribute("order",order);
     		CategoryBO categoryBO= new CategoryBO();
        	ProductBO productBO = new ProductBO();
        	
          	List<CategoryBean> listCategory = new ArrayList();   	 
          	listCategory = categoryBO.getAllCategories();
         	request.setAttribute("listCategorys", listCategory);
         	 	
      	   	List<ProductBean> listProducts = new ArrayList();   	 
      	 	listProducts = productBO.getAllProducts();
      		request.setAttribute("listProducts", listProducts);

          	RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
  			dispatcher.forward(request, response);
     	}
        if (request.getParameter("deleteId")!=null) {
        	int deleteId = Integer.parseInt(request.getParameter("deleteId"));
     		HttpSession session = request.getSession();
     		OrderBean order = (OrderBean)session.getAttribute("order");
     		OrderItemBean removeItem = new OrderItemBean();
     		List<OrderItemBean> items = order.getListItem();
     		for (OrderItemBean orderItemBean : items) {
					if (orderItemBean.getItem().getProductId()==deleteId) {
						order.setTotalPrice(order.getTotalPrice()-orderItemBean.getItem().getPriceSale()*orderItemBean.getQuantity());
						removeItem = orderItemBean;
					}
				}
     		items.remove(removeItem);
     		session.setAttribute("order",order);
     		CategoryBO categoryBO= new CategoryBO();
        	ProductBO productBO = new ProductBO();
        	
          	List<CategoryBean> listCategory = new ArrayList();   	 
          	listCategory = categoryBO.getAllCategories();
         	request.setAttribute("listCategorys", listCategory);
         	 	
      	   	List<ProductBean> listProducts = new ArrayList();   	 
      	 	listProducts = productBO.getAllProducts();
      		request.setAttribute("listProducts", listProducts);

          	RequestDispatcher dispatcher = request.getRequestDispatcher("/cart.jsp");
  			dispatcher.forward(request, response);
        }
        if (request.getParameter("checkout")!=null) {
        	CategoryBO categoryBO= new CategoryBO();
        	ProductBO productBO = new ProductBO();
        	UserBO userBO = new UserBO();
        	
          	List<CategoryBean> listCategory = new ArrayList();   	 
          	listCategory = categoryBO.getAllCategories();
         	request.setAttribute("listCategorys", listCategory);
         	 	
      	   	List<ProductBean> listProducts = new ArrayList();   	 
      	 	listProducts = productBO.getAllProducts();
      		request.setAttribute("listProducts", listProducts);
      		
      		HttpSession session = request.getSession();
     		int ID_user = (Integer)session.getAttribute("ID_user");
     		UserBean user = userBO.getUserById(ID_user);
     		request.setAttribute("user", user);

          	RequestDispatcher dispatcher = request.getRequestDispatcher("/checkout.jsp");
  			dispatcher.forward(request, response);
        }
        if (request.getParameter("proceedToCheckout")!=null) {
        	OrderBO orderBO = new OrderBO();
        	HttpSession session = request.getSession();
     		int ID_user = (Integer)session.getAttribute("ID_user");
        	OrderBean order = (OrderBean)session.getAttribute("order");
        	order.setUserId(ID_user);
        	boolean isOrderAdded = orderBO.addOrder(order);
        	session.removeAttribute("order");
        	
    	   if (isOrderAdded) {
    	        // Thêm thông báo thành công vào request
    	        request.setAttribute("successMessage", "Payment successful!");
    	    }
        	
        	CategoryBO categoryBO= new CategoryBO();
        	ProductBO productBO = new ProductBO();
        	
          	List<CategoryBean> listCategory = new ArrayList();   	 
          	listCategory = categoryBO.getAllCategories();
         	request.setAttribute("listCategorys", listCategory);
         	 	
      	   	List<ProductBean> listProducts = new ArrayList();   	 
      	 	listProducts = productBO.getAllProducts();
      		request.setAttribute("listProducts", listProducts);

          	RequestDispatcher dispatcher = request.getRequestDispatcher("/Index.jsp");
  			dispatcher.forward(request, response);
        }
        
        
    }

}
