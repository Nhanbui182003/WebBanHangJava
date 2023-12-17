package Model.BO;

import Model.BEAN.OrderBean;
import Model.DAO.OrderDAO;

public class OrderBO {
    private OrderDAO OrderDAO = new OrderDAO();
    
    public boolean addOrder(OrderBean order) {
    	return this.OrderDAO.addOrder(order);
    }
}