/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.group11.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import ph.pup.itech.group11.model.LoginModel;

public class LoginDao {
     private String dbUrl = "jdbc:mysql://localhost:3306/store?serverTimezone=UTC";
     private String dbUname = "root";
     private String dbPassword = "Itomit@26";
     private String dbDriver = "com.mysql.cj.jdbc.Driver";
     
    public void loadDriver(String dbDriver){
        try{
            Class.forName(dbDriver);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
    public Connection getConnection(){
         Connection con = null;
         try{
           con = DriverManager.getConnection(dbUrl, dbUname, dbPassword);  
         } catch (SQLException e){
             e.printStackTrace();
         } return con;
         
    }
     
     public boolean validate (LoginModel loginModel) {
         loadDriver(dbDriver);
         Connection con=getConnection();
         boolean status = false;
         String sql = "select * from user where userID = ? and password = ?";
         
         PreparedStatement ps;
         try {
           ps = con.prepareStatement(sql);
           ps.setString(1, loginModel.getUserID());
           ps.setString(2, loginModel.getPassword());
           
           ResultSet rs = ps.executeQuery();
           status = rs.next();
           
         } catch (SQLException e) {
             e.printStackTrace();
         }
         
         
         
         return status;  
     }
}
