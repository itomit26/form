/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.group11.model;

public class LoginModel {
    private String userID;
    private String password;
    
    public String getUserID(){
        return userID;
    }
    public void setUserID(String userID){
        this.userID = userID;
    }
    public String getPassword(){
        return password;
    }
    public void setPassword(String password){
        this.password = password;
    }
}