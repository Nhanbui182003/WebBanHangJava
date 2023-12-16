package Model.BEAN;

public class OrderItemBean {
    private int orderId;
    private ProductBean item;
    private int quantity;
    private double subtotal;

    public OrderItemBean() {}
    
    
    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public ProductBean getItem() {
    	return item;
    }
    public void setItem(ProductBean item) {
    	this.item = item;
    }
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSubtotal() {
        return subtotal;
    }

    public void setSubtotal(double subtotal) {
        this.subtotal = subtotal;
    }
}
