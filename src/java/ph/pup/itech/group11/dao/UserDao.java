/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.group11.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import ph.pup.itech.group11.model.UserModel;


public class UserDao {
    
    public ArrayList<UserModel> getUserList() throws ClassNotFoundException {
        ArrayList<UserModel> userList = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM user WHERE UserID IS NULL OR Password IS NULL OR FirstName IS NULL OR LastName IS NULL OR Address IS NULL OR Birthday IS NULL OR MobileNumber IS NULL OR AccountStatus IS NULL OR LoginStatus IS NULL OR UserRole IS NULL";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                UserModel user = new UserModel();
                user.setUserID(rs.getString("userID"));
                user.setPassword(rs.getString("Password"));
                user.setFirstName(rs.getString("firstName"));
                user.setMiddleName(rs.getString("middleName"));
                user.setLastName(rs.getString("lastName"));
                user.setAccountStatus(rs.getString("AccountStatus"));
                user.setLoginStatus(rs.getString("LoginStatus"));
                user.setUserRole(rs.getString("UserRole"));
                userList.add(user);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getUserList Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return userList;
    }
    
    public UserModel getUserDetails(String userID) throws ClassNotFoundException {
        UserModel userDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select UserID, "
                + "Password, "
                + "FirstName, "
                + "MiddleName, "
                + "LastName, "
                + "AccountStatus, "
                + "LoginStatus, "
                + "UserRole "
                + "from user "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            rs = ps.executeQuery();
            if (rs.next()) {
                userID = rs.getString("UserID");
                String password = rs.getString("Password");
                String firstName = rs.getString("FirstName");
                String middleName = rs.getString("MiddleName");
                String lastName = rs.getString("LastName");
                String accountStatus = rs.getString("AccountStatus");
                String loginStatus = rs.getString("LoginStatus");
                String userRole = rs.getString("UserRole");
                userDetails = new UserModel(userID, password, firstName, middleName, lastName, accountStatus, loginStatus, userRole);
            }
        } catch (SQLException e) {
            System.out.println("getUserDetails Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return userDetails;
    }
    
    public boolean createUser(UserModel user) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into user ("
                + "UserID, "
                + "Password, "
                + "FirstName, "
                + "MiddleName, "
                + "LastName, "
                + "AccountStatus, "
                + "LoginStatus, "
                + "UserRole) "
                + "values (?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, user.getUserID());
            ps.setString(2, "PeppaPig");
            ps.setString(3, user.getFirstName());
            ps.setString(4, user.getMiddleName());
            ps.setString(5, user.getLastName());
            ps.setString(6, "Valid");
             ps.setString(7, "Offline");
            ps.setString(8, user.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
    
    public boolean updateUser(UserModel user) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update user set "
                + "Password = ?, "
                + "FirstName = ?, "
                + "MiddleName = ?, "
                + "LastName = ?, "
                + "AccountStatus = ?, "
                + "LoginStatus = ?, "
                + "UserRole = ? "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(8, user.getUserID());
            ps.setString(1, "PeppaPig");
            ps.setString(2, user.getFirstName());
            ps.setString(3, user.getMiddleName());
            ps.setString(4, user.getLastName());
            ps.setString(5, "Valid");
            ps.setString(6, "Offline");
            ps.setString(7, user.getUserRole());
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
    
    public boolean deleteUser(String userID) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "delete from user "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, userID);
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("deleteUser Error: " + e); 
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {
                    //ignore
                }
            }
            
        }
        return success;
    }
}