//package ph.pup.itech.group11.dao;
//
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.ArrayList;
//import ph.pup.itech.group11.model.ProductModel;
//
//public class ProductDao {
//
//    public ArrayList<ProductModel> getProductList() throws ClassNotFoundException {
//        ArrayList<ProductModel> productList = new ArrayList<>();
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        String query = "SELECT * FROM products";
//        try {
//            conn = ConnectionPool.getConnection();
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                ProductModel product = new ProductModel();
//                product.setProductId(rs.getInt("ProductId"));
//                product.setProductName(rs.getString("ProductName"));
//                product.setDescription(rs.getString("Description"));
//                product.setSize(rs.getString("Size"));
//                product.setPrice(rs.getDouble("Price"));
//                product.setQuantity(rs.getInt("Quantity"));
//                productList.add(product);
//            }
//        } catch (SQLException e) {
//            System.out.println("getProductList Error: " + e);
//        } finally {
//            closeResources(conn, ps, rs);
//        }
//        return productList;
//    }
//
//    public ProductModel getProductDetails(int productId) throws ClassNotFoundException {
//        ProductModel productDetails = null;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        ResultSet rs = null;
//        String query = "SELECT ProductId, ProductName, Description, Size, Price, Quantity "
//                + "FROM products "
//                + "WHERE ProductId = ?";
//
//        try {
//            conn = ConnectionPool.getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, productId);
//            rs = ps.executeQuery();
//            if (rs.next()) {
//                productId = rs.getInt("ProductId");
//                String productName = rs.getString("ProductName");
//                String description = rs.getString("Description");
//                String size = rs.getString("Size");
//                double price = rs.getDouble("Price");
//                int quantity = rs.getInt("Quantity");
//                productDetails = new ProductModel(productId, productName, description, size, price, quantity);
//            }
//        } catch (SQLException e) {
//            System.out.println("getProductDetails Error: " + e);
//        } finally {
//            closeResources(conn, ps, rs);
//        }
//        return productDetails;
//    }
//
//    public boolean createProduct(ProductModel product) throws ClassNotFoundException {
//        boolean success = false;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        String query = "INSERT INTO products (ProductId, ProductName, Description, Size, Price, Quantity) "
//                + "VALUES (?, ?, ?, ?, ?, ?)";
//        try {
//            conn = ConnectionPool.getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, product.getProductId());
//            ps.setString(2, product.getProductName());
//            ps.setString(3, product.getDescription());
//            ps.setString(4, product.getSize());
//            ps.setDouble(5, product.getPrice());
//            ps.setInt(6, product.getQuantity());
//            int rowsAffected = ps.executeUpdate();
//            if (rowsAffected != 0) {
//                success = true;
//            }
//        } catch (SQLException e) {
//            System.out.println("createProduct Error: " + e);
//        } finally {
//            closeResources(conn, ps);
//        }
//        return success;
//    }
//
//    public boolean updateProduct(ProductModel product) throws ClassNotFoundException {
//        boolean success = false;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        String query = "UPDATE products SET "
//                + "ProductName = ?, "
//                + "Description = ?, "
//                + "Size = ?, "
//                + "Price = ?, "
//                + "Quantity = ? "
//                + "WHERE ProductId = ?";
//        try {
//            conn = ConnectionPool.getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setString(1, product.getProductName());
//            ps.setString(2, product.getDescription());
//            ps.setString(3, product.getSize());
//            ps.setDouble(4, product.getPrice());
//            ps.setInt(5, product.getQuantity());
//            ps.setInt(6, product.getProductId());
//            int rowsAffected = ps.executeUpdate();
//            if (rowsAffected != 0) {
//                success = true;
//            }
//        } catch (SQLException e) {
//            System.out.println("updateProduct Error: " + e);
//        } finally {
//            closeResources(conn, ps);
//        }
//        return success;
//    }
//
//    public boolean deleteProduct(int productId) throws ClassNotFoundException {
//        boolean success = false;
//        Connection conn = null;
//        PreparedStatement ps = null;
//        String query = "DELETE FROM products "
//                + "WHERE ProductId = ?";
//        try {
//            conn = ConnectionPool.getConnection();
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, productId);
//            int rowsAffected = ps.executeUpdate();
//            if (rowsAffected != 0) {
//                success = true;
//            }
//        } catch (SQLException e) {
//            System.out.println("deleteProduct Error: " + e);
//        } finally {
//            closeResources(conn, ps);
//        }
//        return success;
//    }
//
//    private void closeResources(Connection conn, PreparedStatement ps) {
//        closeResources(conn, ps, null);
//    }
//
//    private void closeResources(Connection conn, PreparedStatement ps, ResultSet rs) {
//        if (rs != null) {
//            try {
//                rs.close();
//            } catch (SQLException e) {
//                // Ignore
//            }
//        }
//        if (ps != null) {
//            try {
//                ps.close();
//            } catch (SQLException e) {
//                // Ignore
//            }
//        }
//        if (conn != null) {
//            try {
//                conn.close();
//            } catch (SQLException e) {
//                // Ignore
//            }
//        }
//    }
//}
package ph.pup.itech.group11.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.group11.model.ProductModel;

///**
// *
// * @author TJ
// */
public class ProductDao {

    public ArrayList<ProductModel> getProductList() throws ClassNotFoundException {
        ArrayList<ProductModel> productList = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "select * from products";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                ProductModel product = new ProductModel();
                product.setProductId(rs.getInt("ProductId"));
                product.setProductName(rs.getString("ProductName"));
                product.setDescription(rs.getString("Description"));
                product.setSize(rs.getString("Size"));
                product.setPrice(rs.getDouble("Price"));
                product.setQuantity(rs.getInt("Quantity"));
                productList.add(product);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getProductList Error: " + e);
        } finally {

            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
        }
        return productList;
    }

    public ProductModel getProductDetails(int productId) throws ClassNotFoundException {
        ProductModel productDetails = null;
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select ProductId,"
                + "ProductName,"
                + "Description,"
                + "Size,"
                + "Price,"
                + "Quantity "
                + "from products "
                + "where ProductId = ? ";

        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            rs = ps.executeQuery();
            if (rs.next()) {
                productId = rs.getInt("ProductId");
                String productName = rs.getString("ProductName");
                String description = rs.getString("Description");
                String size = rs.getString("Size");
                double price = rs.getDouble("Price");
                int quantity = rs.getInt("Quantity");
                productDetails = new ProductModel(productId, productName, description, size, price, quantity);
            }
        } catch (SQLException e) {
            System.out.println("getProductDetails Error: " + e);
        } finally {
            // Close resources in the reverse order of their creation
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    // Ignore
                }
            }
        }
        return productDetails;
    }

    public boolean createProduct(ProductModel product) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "insert into products ("
                + "ProductId, "
                + "ProductName, "
                + "Description, "
                + "Size, "
                + "Price, "
                + "Quantity) "
                + "values (?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, product.getProductId());
            ps.setString(2, product.getProductName());
            ps.setString(3, product.getDescription());
            ps.setString(4, product.getSize());
            ps.setDouble(5, product.getPrice());
            ps.setInt(6, product.getQuantity());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createProduct Error: " + e);
        } finally {
// Close resources in the reverse order of their creation
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
// Ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
// Ignore
                }
            }
        }
        return success;
    }

    public boolean updateProduct(ProductModel product) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "update products set "
                + "ProductName = ?, "
                + "Description = ?, "
                + "Size = ?, "
                + "Price = ?, "
                + "Quantity = ? "
                + "where ProductId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(6, product.getProductId());
            ps.setString(1, product.getProductName());
            ps.setString(2, product.getDescription());
            ps.setString(3, product.getSize());
            ps.setDouble(4, product.getPrice());
            ps.setInt(5, product.getQuantity());
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateProduct Error: " + e);
        } finally {
// Close resources in the reverse order of their creation
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
// Ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
// Ignore
                }
            }
        }
        return success;
    }

    public boolean deleteProduct(int productId) throws ClassNotFoundException {
        boolean success = false;
        Connection conn = null;
        PreparedStatement ps = null;
        String query = "delete from products "
                + "where ProductId = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, productId);
            int rowsAffected = ps.executeUpdate();
            if (rowsAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteProduct Error: " + e);
        } finally {
// Close resources in the reverse order of their creation
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
// Ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
// Ignore
                }
            }
        }
        return success;
    }
}
