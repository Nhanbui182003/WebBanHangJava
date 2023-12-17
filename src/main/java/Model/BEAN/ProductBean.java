package Model.BEAN;

public class ProductBean {
    private int productId;
    private String name;
    private String description;
    private double priceOriginal;
    private double priceSale;
    private String manufacturer;
    private String imageUrl;
    private int toptrending;
    private boolean isHot;
    private boolean isOnSale;
    private boolean isBestSeller;
    private boolean isTopViewed;
	private int int1;
    public ProductBean() {
    	
    }

    public ProductBean(int productId, String name, String description, double priceOriginal, double priceSale, String manufacturer,String imageUrl,int toptrending, boolean isHost, boolean isOnSale,boolean isBestSeller,boolean isTopViewed) {
    	this.productId = productId;
    	this.name =name;
    	this.description = description;
    	this.priceOriginal = priceOriginal;
    	this.priceSale = priceSale;
    	this.manufacturer = manufacturer;
    	this.imageUrl = imageUrl;
    	this.toptrending= toptrending;
    	this.isHot = isHost;
    	this.isOnSale = isOnSale;
    	this.isBestSeller = isBestSeller;
    	this.isTopViewed = isTopViewed;
    }
    
    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }
    public void setToptrending(int Toptrending) {
        this.toptrending = Toptrending;
    }

    public int getToptrending() {
        return toptrending;
    }


    public void setDescription(String description) {
        this.description = description;
    }

    public double getPriceOriginal() {
        return priceOriginal;
    }

    public void setPriceOriginal(double priceOriginal) {
        this.priceOriginal = priceOriginal;
    }

    public double getPriceSale() {
        return priceSale;
    }

    public void setPriceSale(double priceSale) {
        this.priceSale = priceSale;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }
    
    public boolean isOnSale() {
    	return isOnSale;
    }
    public void setisOnSale(boolean isOnSale) {
    	this.isOnSale = isOnSale;
    }
    
    public boolean isHot() {
    	return isHot;
    }
    public void setIsHot(boolean isHot) {
    	this.isHot = isHot;
    }
    
    public boolean isBestSeller() {
    	return isBestSeller;
    }
    public void setisBestSeller(boolean isBestSeller) {
    	this.isBestSeller = isBestSeller;
    }
    
    
    public boolean isisTopViewed() {
    	return isTopViewed;
    }
    public void setisTopViewed(boolean isTopViewed) {
    	this.isTopViewed = isTopViewed;
    }

	public void setCategoryId(int int1) {
		this.int1 = int1;
		
	}
    
    
    
}
