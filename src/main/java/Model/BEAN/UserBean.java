package Model.BEAN;

public class UserBean {
    private int userId;
    private String username;
    private String email;
    private String password;
    private String address;
    private String phoneNumber;
    private String role;
   
    
    
    public UserBean() {}
    
    public UserBean(int userId, String username, String email, String password, String address, String phoneNumber, String role) {
    	this.userId = userId;
    	this.username = username;
    	this.email = email;
    	this.password = password;
    	this.address = address;
    	this.phoneNumber = phoneNumber;
    	this.role = role;
    }

    // Getters and setters
    public int getUserId() {
        return userId;
    }

   
    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
    
}
