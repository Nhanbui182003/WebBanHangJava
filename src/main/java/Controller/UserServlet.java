package Controller;

import Model.BEAN.UserBean;
import Model.BO.UserBO;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   	 
    if(request.getParameter("user_id")!=null) {
    	// Retrieve user_id from the query parameter
       String userIdParam = request.getParameter("user_id");

       // Convert the user_id to an integer (you might want to handle potential exceptions)
       int userId = Integer.parseInt(userIdParam);

       UserBO userBO = new UserBO();

       UserBean user = userBO.getUserById(userId);

       request.setAttribute("user", user);

       RequestDispatcher dispatcher = request.getRequestDispatcher("userProfile.jsp");
       dispatcher.forward(request, response);
    }
    	
    
    if(request.getParameter("userId")!=null) {

        // Retrieve data from the form
        int userId = Integer.parseInt(request.getParameter("userId"));
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String address = request.getParameter("address");
        String phoneNumber = request.getParameter("phoneNumber");

        // Create a UserBean object
        UserBean user = new UserBean(userId, username, email, password ,address, phoneNumber, null);

        // Create instances of UserDAO and UserBO
        UserBO userBO = new UserBO();

        // Update user information
        boolean isUpdated = userBO.updateUser(user);

        // Redirect to the user profile page or handle accordingly
        if (isUpdated) {
            response.sendRedirect("Login.jsp");
        } else {
            // Handle update failure
            response.getWriter().println("Failed to update user profile");
        }
    
    }
    
    if(request.getParameter("action")!=null) {
    	String action = request.getParameter("action");
    	
    	
    	int userId = Integer.parseInt(request.getParameter("userId"));
    	String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String address = request.getParameter("address");
        String password = request.getParameter("password");
        String role = "user";
        
        UserBean user = new UserBean(userId, username, email, password ,address, phoneNumber, role);
        UserBO userBO = new UserBO();
        
        boolean isAdded = userBO.addUser(user);
        if (isAdded) {
        	response.getWriter().println("Thanh Cong");
            response.sendRedirect("Login.jsp");
        } else {
            // Handle update failure
            response.getWriter().println("Failed to update user profile");
        }
    
      
    }

    }
    
    
  }
    
   
