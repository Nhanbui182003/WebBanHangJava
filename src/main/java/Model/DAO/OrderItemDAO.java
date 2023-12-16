package Model.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.BEAN.OrderItemBean;

public class OrderItemDAO {
    private Connection connection;

    public OrderItemDAO(Connection connection) {
    	connection = DBConnect.getConnection();
    }

    // Get order item by orderItemId
    public OrderItemBean getOrderItemById(int orderItemId) {
        OrderItemBean orderItem = null;
        String query = "SELECT * FROM order_items WHERE order_item_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                orderItem = new OrderItemBean();
                orderItem.setOrderItemId(resultSet.getInt("order_item_id"));
                orderItem.setOrderId(resultSet.getInt("order_id"));
                orderItem.setProductId(resultSet.getInt("product_id"));
                orderItem.setQuantity(resultSet.getInt("quantity"));
                orderItem.setSubtotal(resultSet.getDouble("subtotal"));
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return orderItem;
    }

    // Get all order items
    public List<OrderItemBean> getAllOrderItems() {
        List<OrderItemBean> orderItems = new ArrayList<>();
        String query = "SELECT * FROM order_items";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                OrderItemBean orderItem = new OrderItemBean();
                orderItem.setOrderItemId(resultSet.getInt("order_item_id"));
                orderItem.setOrderId(resultSet.getInt("order_id"));
                orderItem.setProductId(resultSet.getInt("product_id"));
                orderItem.setQuantity(resultSet.getInt("quantity"));
                orderItem.setSubtotal(resultSet.getDouble("subtotal"));
                orderItems.add(orderItem);
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return orderItems;
    }

    // Add a new order item
    public boolean addOrderItem(OrderItemBean orderItem) {
        String query = "INSERT INTO order_items (order_item_id, order_id, product_id, quantity, subtotal) VALUES (?, ?, ?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderItem.getOrderItemId());
            preparedStatement.setInt(2, orderItem.getOrderId());
            preparedStatement.setInt(3, orderItem.getProductId());
            preparedStatement.setInt(4, orderItem.getQuantity());
            preparedStatement.setDouble(5, orderItem.getSubtotal());
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Delete an order item by orderItemId
    public boolean deleteOrderItem(int orderItemId) {
        String query = "DELETE FROM order_items WHERE order_item_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderItemId);
            return preparedStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }

    // Search for an order item by orderItemId
    public boolean searchOrderItemById(int orderItemId) {
        String query = "SELECT * FROM order_items WHERE order_item_id = ?";
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, orderItemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            return resultSet.next();
        } catch (SQLException e) {
            e.printStackTrace(); // Handle this exception properly in a real application
        }
        return false;
    }
}

