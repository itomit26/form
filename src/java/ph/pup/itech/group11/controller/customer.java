/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.pup.itech.group11.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.group11.dao.RegistrationDao;
import ph.pup.itech.group11.model.RegistrationModel;


/**
 *
 * @author Vic
 */
public class customer extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getServletPath();
            switch (action) {
                case "/customer/create/form":
                    showRegistrationCreateForm(request, response);
                    break;
                case "/customer/create":
                    createRegistration(request, response);
                    break;
                case "/customer/update/form":
                    showRegistrationUpdateForm(request, response);
                    break;
                case "/customer/update":
                    updateRegistration(request, response);
                    break;
                case "/customer/delete":
                    deleteRegistration(request, response);
                    break;
                default:
                    viewRegistration(request, response);
                    break;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(customer.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        RegistrationDao register = new RegistrationDao();
        ArrayList<RegistrationModel> registerList = register.getRegistrationList();
        request.setAttribute("registerList", registerList);
        
//        UserDao user = new UserDao();
//        ArrayList<UserModel> userList = user.getUserList();
//        request.setAttribute("userList", userList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/customer_page.jsp");
        rd.forward(request, response);
    }

    private void showRegistrationCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/reg_form.jsp");
        rd.forward(request, response);
    }

    private void createRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String mobileNumber = request.getParameter("mobileNumber");
        String accountStatus = request.getParameter("accountStatus");
        String loginStatus = request.getParameter("loginStatus");
        String userRole = request.getParameter("userRole");

        RegistrationDao register = new RegistrationDao();
        RegistrationModel createRegistration = new RegistrationModel(
                userID, password, firstName, middleName, lastName, address, birthday, mobileNumber, accountStatus, loginStatus, userRole);
        register.createRegistration(createRegistration);
        response.sendRedirect(request.getContextPath() + "/log_in.jsp");
    }

    private void showRegistrationUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        RegistrationDao register = new RegistrationDao();
        RegistrationModel registerDetails = register.getRegistrationDetails(userID);
        request.setAttribute("registerDetails", registerDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/reg_update.jsp");
        rd.forward(request, response);
    }

    private void updateRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String address = request.getParameter("address");
        String birthday = request.getParameter("birthday");
        String mobileNumber = request.getParameter("mobileNumber");
        String accountStatus = request.getParameter("accountStatus");
        String loginStatus = request.getParameter("loginStatus");
        String userRole = request.getParameter("userRole");
        RegistrationDao register = new RegistrationDao();
        RegistrationModel updateRegistration = new RegistrationModel(
                userID, password, firstName, middleName, lastName, address, birthday, mobileNumber, accountStatus, loginStatus, userRole);
        register.updateRegistration(updateRegistration);
        response.sendRedirect(request.getContextPath() + "/user");
    }

    private void deleteRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        RegistrationDao register = new RegistrationDao();
        register.deleteRegistration(userID);
        response.sendRedirect(request.getContextPath() + "/user");
    }
}

        


