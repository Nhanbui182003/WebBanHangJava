package Model.BEAN;

public class CategoryBean {
    private int categoryId;
    private String name;
    
    public CategoryBean() {
    	
    }
    
    public CategoryBean(int categoryId, String name) {
    	this.categoryId = categoryId;
    	this.name = name;
    }
    
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

