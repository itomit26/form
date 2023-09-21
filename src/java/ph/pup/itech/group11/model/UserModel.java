/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ph.pup.itech.group11.model;

public class UserModel {

    private String userID;
    private String password;
    private String firstName;
    private String middleName;
    private String lastName;
    private String accountStatus;
    private String loginStatus;
    private String userRole;

    public UserModel() {
        //Set as empty
    }

    public UserModel(
            String userID,
            String password,
            String firstName,
            String middleName,
            String lastName,
            String accountStatus,
            String loginStatus,
            String userRole) {
        this.userID = userID;
        this.password = password;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.accountStatus = accountStatus;
        this.loginStatus = loginStatus;
        this.userRole = userRole;
    }

    public String getUserID() {
        return userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getAccountStatus() {
        return accountStatus;
    }
    
    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    
    public String getLoginStatus() {
        return loginStatus;
    }
    
    public void setLoginStatus(String loginStatus) {
        this.loginStatus = loginStatus;
    }
    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

}
