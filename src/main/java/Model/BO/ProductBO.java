package Model.BO;

import java.util.List;
import Model.BEAN.ProductBean;
import Model.DAO.ProductDAO;

public class ProductBO {
    private ProductDAO productDAO;

    public ProductBO() {
        productDAO = new ProductDAO(); 
    }
    
    public ProductBean getProductById(int productId) {
    	return productDAO.getProductById(productId);
    }

    public boolean addProduct(ProductBean product) {
        try {
            return productDAO.addProduct(product);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<ProductBean> getListProductByIDCategory(int categoryId) {
        try {
            return productDAO.getListProductByIDCategory(categoryId);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<ProductBean> getAllProducts() {
        try {
            return productDAO.getAllProducts();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    public List<ProductBean> getTopProducts() {
        try {
            return productDAO.getProductTopTrending();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public ProductDAO getProductDAO() {
        return productDAO;
    }

    public void setProductDAO(ProductDAO productDAO) {
        this.productDAO = productDAO;
    }
}