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
import ph.pup.itech.group11.model.RegistrationModel;

public class RegistrationDao {
    
    public ArrayList<RegistrationModel> getRegistrationList() throws ClassNotFoundException {
        ArrayList<RegistrationModel> registerList = new ArrayList<>();
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = "SELECT * FROM user WHERE UserID IS NOT NULL AND Password IS NOT NULL AND FirstName IS NOT NULL AND LastName IS NOT NULL AND Address IS NOT NULL AND Birthday IS NOT NULL AND MobileNumber IS NOT NULL AND AccountStatus IS NOT NULL AND LoginStatus IS NOT NULL AND UserRole IS NOT NULL";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                RegistrationModel register = new RegistrationModel();
                register.setUserID(rs.getString("UserID"));
                register.setPassword(rs.getString("Password"));
                register.setFirstName(rs.getString("FirstName"));
                register.setMiddleName(rs.getString("MiddleName"));
                register.setLastName(rs.getString("LastName"));
                register.setAddress(rs.getString("Address"));
                register.setBirthday(rs.getString("Birthday"));
                register.setMobileNumber(rs.getString("MobileNumber"));
                register.setAccountStatus(rs.getString("AccountStatus"));
                register.setLoginStatus(rs.getString("LoginStatus"));
                register.setUserRole(rs.getString("UserRole"));
                registerList.add(register);
            }
            conn.close();
        } catch (SQLException e) {
            System.out.println("getRegistrationList Error: " + e); 
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
        return registerList;
    }
    
    public RegistrationModel getRegistrationDetails(String userID) throws ClassNotFoundException {
        RegistrationModel registerDetails = null;
        Connection conn  = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        String query = ""
                + "select UserID, "
                + "Password, "
                + "FirstName, "
                + "MiddleName, "
                + "LastName, "
                + "Address, "
                + "Birthday, "
                + "MobileNumber, "
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
                String address = rs.getString("Address");
                String birthday = rs.getString("Birthday");
                String mobileNumber = rs.getString("MobileNumber");
                String accountStatus = rs.getString("AccountStatus");
                String loginStatus = rs.getString("LoginStatus");
                String userRole = rs.getString("UserRole");
                registerDetails = new RegistrationModel(userID, password, firstName, middleName, lastName, address, birthday, mobileNumber, accountStatus, loginStatus, userRole);
            }
        } catch (SQLException e) {
            System.out.println("getRegistrationDetails Error: " + e); 
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
        return registerDetails;
    }
    
    public boolean createRegistration(RegistrationModel register) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "insert into user ("
                + "UserID, "
                + "Password, "
                + "FirstName, "
                + "MiddleName, "
                + "LastName, "
                + "Address, "
                + "Birthday, "
                + "MobileNumber, "
                + "AccountStatus, "
                + "LoginStatus, "
                + "UserRole) "
                + "values (?,?,?,?,?,?,?,?,?,?,?)";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, register.getUserID());
            ps.setString(2, register.getPassword());
            ps.setString(3, register.getFirstName());
            ps.setString(4, register.getMiddleName());
            ps.setString(5, register.getLastName());
            ps.setString(6, register.getAddress());
            ps.setString(7, register.getBirthday());
            ps.setString(8, register.getMobileNumber());
            ps.setString(9, "Valid");
            ps.setString(10, "Offline");
            ps.setString(11, "Customer");
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("createRegistration Error: " + e); 
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
    
    public boolean updateRegistration(RegistrationModel register) throws ClassNotFoundException {
        boolean success = false;
        Connection conn  = null;
        PreparedStatement ps = null;
        String query = "update user set "
                + "Password = ?, "
                + "FirstName = ?, "
                + "MiddleName = ?, "
                + "LastName = ?, "
                + "Address = ?, "
                + "Birthday = ?, "
                + "MobileNumber = ?, "
                + "AccountStatus = ?, "
                + "LoginStatus = ?, "
                + "UserRole = ? "
                + "where UserID = ? ";
        try {
            conn = ConnectionPool.getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(11, register.getUserID());
            ps.setString(1, register.getPassword());
            ps.setString(2, register.getFirstName());
            ps.setString(3, register.getMiddleName());
            ps.setString(4, register.getLastName());
            ps.setString(5, register.getAddress());
            ps.setString(6, register.getBirthday());
            ps.setString(7, register.getMobileNumber());
            ps.setString(8, "Valid");
            ps.setString(9, "Offline");
            ps.setString(10, "Customer");
            int rowAffected = ps.executeUpdate();
            if (rowAffected != 0) {
                success = true;
            }
        } catch (SQLException e) {
            System.out.println("updateRegistration Error: " + e); 
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
    
    public boolean deleteRegistration(String userID) throws ClassNotFoundException {
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
            System.out.println("deleteRegistration Error: " + e); 
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
