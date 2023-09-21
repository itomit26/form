
package ph.pup.itech.group11.dao;
import ph.pup.itech.group11.model.CustomerRegModel;


public class CustomerDao {

    public CustomerRegModel getCustomerRegDetails(CustomerRegModel customer) {

        CustomerRegModel customerRegDetails;

        String preferredUsername = customer.getPreferredUsername();
        String password = customer.getPassword();
        String confirmPassword = customer.getConfirmPassword();
        String firstName = customer.getFirstName();
        String middleName = customer.getMiddleName();
        String lastName = customer.getLastName();
        String address = customer.getAddress();
        String birthday = customer.getBirthday();
        String mobileNumber = customer.getMobileNumber();

        customerRegDetails = new CustomerRegModel(preferredUsername, password, confirmPassword, firstName,middleName,lastName,address,birthday,mobileNumber);
        System.out.println("customerRegDetails: " + customerRegDetails );
        return customerRegDetails;

    }

    public String getPreferredUsername() {
        String preferredUsername = null;
        return preferredUsername;
    }
}

