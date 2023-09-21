package ph.pup.itech.group11.model;

 public class ProductModel{


    private int productId;
    private String productName;
    private String description;
    private String size;
    private double price;
    private int quantity;
    
    
    
    public ProductModel () {
        //Set as empty
    }
    
    
    public ProductModel (
            int productId, 
            String productName, 
            String description, 
            String size) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.size = size;
    }
    
    public ProductModel (
            int productId, 
            String productName, 
            String description, 
            String size,
            double price,
            int quantity) {
        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.size = size;
        this.price = price;
        this.quantity = quantity;
    }
    

    public int getProductId() {
        return productId;
    }
    
    public void setProductId(int productId) {
        this.productId = productId;
    }
    
    public String getProductName() {
        return productName;
    }
    
    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    public String getDescription() {
        return description;
    }
    
    public void setDescription(String description) {
        this.description = description;
    }
    
    public String getSize() {
        return size;
    }
    
    public void setSize(String size) {
        this.size = size;
    }
    
    public double getPrice() {
        return price;
    }
    
    public void setPrice(double price) {
        this.price = price;
    }
    
    public int getQuantity() {
        return quantity;
    }
    
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
   

//package ph.pup.itech.group11.model;
//import javax.servlet.http.HttpServlet;
//
//  public class ProductModel extends HttpServlet{
//
//    private Integer productID;
//    private String productName;
//    private String description;
//    private String size;
//    private Double price;
//    private Integer quantity;
//
//    public ProductModel(Integer productID, String productName, String description, String size, Double price, Integer quantity) {
//
//        this.productID = productID;
//        this.productName = productName;
//        this.description = description;
//        this.size = size;
//        this.price = price;
//        this.quantity = quantity;
//    }
//
//    public Integer getProductID() {
//        return productID;
//    }
//
//    public void setProductID(Integer productID) {
//        this.productID = productID;
//    }
//
//    public String getProductName() {
//        return productName;
//    }
//
//    public void setProductName(String productName) {
//        this.productName = productName;
//    }
//
//    public String getDescription() {
//        return description;
//    }
//
//    public void setDescription(String description) {
//        this.description = description;
//    }
//
//    public String getSize() {
//        return size;
//    }
//
//    public void setSize(String size) {
//        this.size = size;
//    }
//
//    public Double getPrice() {
//        return price;
//    }
//
//    public void setPrice(Double price) {
//        this.price = price;
//    }
//
//    public Integer getQuantity() {
//        return quantity;
//    }
//
//    public void setQuantity(Integer quantity) {
//        this.quantity = quantity;
//    }
//
//}

