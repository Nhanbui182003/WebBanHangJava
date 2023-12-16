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
    
   
}
