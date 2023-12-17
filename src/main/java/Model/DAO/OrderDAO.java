package Model.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;

import java.util.ArrayList;
import java.util.List;

import Model.BEAN.OrderBean;
import Model.BEAN.OrderItemBean;

public class OrderDAO {
    private Connection connection;

    public OrderDAO() {
    	connection = DBConnect.getConnection();
    }

    // Get order by orderId
    public OrderBean getOrderById(int orderId) {
        OrderBean order = null;
        String query = "SELECT * FROM orders WHERE order_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                order = new OrderBean();
                order.setOrderId(resultSet.getInt("order_id"));
                order.setUserId(resultSet.getInt("user_id"));
                order.setOrderDate(resultSet.getDate("order_date"));
                order.setTotalPrice(resultSet.getDouble("total_price"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return order;
    }
    

    // Get all orders
    public List<OrderBean> getAllOrders() {
        List<OrderBean> orders = new ArrayList<>();
        String query = "SELECT * FROM orders";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                OrderBean order = new OrderBean();
                order.setOrderId(resultSet.getInt("order_id"));
                order.setUserId(resultSet.getInt("user_id"));
                order.setOrderDate(resultSet.getDate("order_date"));
                order.setTotalPrice(resultSet.getDouble("total_price"));
                
                
                orders.add(order);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return orders;
    }

    // Add a new order
    public boolean addOrder(OrderBean order) {
        String query = "INSERT INTO orders (user_id, order_date, total_price) VALUES (?, ?, ?)";
        String query2 = "INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES (?,?,?,?)";
        try {
        	PreparedStatement preparedStatement = connection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
            preparedStatement.setInt(1, order.getUserId());
            LocalDate currentDate = LocalDate.now();
            Date sqlDate = Date.valueOf(currentDate);
            preparedStatement.setDate(2, sqlDate);
            preparedStatement.setDouble(3, order.getTotalPrice());
            preparedStatement.executeUpdate();

            ResultSet generatedKeys = preparedStatement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int orderId = generatedKeys.getInt(1);
                order.setOrderId(orderId);
            }
            
	        for (OrderItemBean orderItemBean: order.getListItem()) {
	        	preparedStatement = connection.prepareStatement(query2);
	        	preparedStatement.setInt(1, order.getOrderId());
	        	preparedStatement.setInt(2, orderItemBean.getItem().getProductId());
	        	preparedStatement.setInt(3, orderItemBean.getQuantity());
	        	preparedStatement.setDouble(4, orderItemBean.getQuantity()*orderItemBean.getItem().getPriceSale());
	        	preparedStatement.executeUpdate();
	        }
	        return true;

            
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Delete an order by orderId
    public boolean deleteOrder(int orderId) {
        String query = "DELETE FROM orders WHERE order_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderId);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Search for an order by orderId
    public boolean searchOrderById(int orderId) {
        String query = "SELECT * FROM orders WHERE order_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderId);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }
}

