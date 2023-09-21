
package ph.pup.itech.group11.model;
import javax.servlet.http.HttpServlet;

  public class CustomerRegModel extends HttpServlet{

    private String preferredUsername;
    private String password;
    private String confirmPassword;
    private String firstName;
    private String middleName;
    private String lastName;
    private String address;
    private String birthday;
    private String mobileNumber;
    
  public CustomerRegModel(String preferredUsername, String password, String confirmPassword, String firstName,String middleName,String lastName,String address,String birthday, String mobileNumber) {

        this.preferredUsername = preferredUsername;
        this.password = password;
        this.confirmPassword = confirmPassword;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.address = address;
        this.birthday = birthday;
        this.mobileNumber = mobileNumber;
    }

    public String getPreferredUsername() {
        return preferredUsername;
    }

    public void setPreferredUsername(String preferredUsername) {
        this.preferredUsername = preferredUsername;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
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
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
    public String getMobileNumber() {
        return mobileNumber;
    }

    public void setMobileNumber(String mobileNumber) {
        this.mobileNumber = mobileNumber;
    }

}

