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
import ph.pup.itech.group11.dao.UserDao;
import ph.pup.itech.group11.model.RegistrationModel;
import ph.pup.itech.group11.model.UserModel;

public class user extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getServletPath();
            switch (action) {
                case "/user/create/form":
                    showUserCreateForm(request, response);
                    break;
                case "/user/create":
                    createUser(request, response);
                    break;
                case "/user/update/form":
                    showUserUpdateForm(request, response);
                    break;
                case "/user/update":
                    updateUser(request, response);
                    break;
                case "/user/delete":
                    deleteUser(request, response);
                    break;
                default:
                    viewUser(request, response);
                    break;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(user.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        UserDao user = new UserDao();
        ArrayList<UserModel> userList = user.getUserList();
        request.setAttribute("userList", userList);

        RegistrationDao register = new RegistrationDao();
        ArrayList<RegistrationModel> registerList = register.getRegistrationList();
        request.setAttribute("registerList", registerList);

        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/user.jsp");
        rd.forward(request, response);
    }

    private void showUserCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/user_form.jsp");
        rd.forward(request, response);
    }

    private void createUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String accountStatus = request.getParameter("accountStatus");
        String loginStatus = request.getParameter("loginStatus");
        String userRole = request.getParameter("userRole");

        UserDao user = new UserDao();
        UserModel createUser = new UserModel(
                userID, password, firstName, middleName, lastName, accountStatus, loginStatus, userRole);
        user.createUser(createUser);
        response.sendRedirect(request.getContextPath() + "/user");
    }

    private void showUserUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = (request.getParameter("userID"));
        UserDao user = new UserDao();
        UserModel userDetails = user.getUserDetails(userID);
        request.setAttribute("userDetails", userDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/user_update.jsp");
        rd.forward(request, response);
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = request.getParameter("userID");
        String password = request.getParameter("password");
        String firstName = request.getParameter("firstName");
        String middleName = request.getParameter("middleName");
        String lastName = request.getParameter("lastName");
        String accountStatus = request.getParameter("accountStatus");
        String loginStatus = request.getParameter("loginStatus");
        String userRole = request.getParameter("userRole");
        UserDao user = new UserDao();
        UserModel updateUser = new UserModel(
                userID, password, firstName, middleName, lastName, accountStatus, loginStatus, userRole);
        user.updateUser(updateUser);
        response.sendRedirect(request.getContextPath() + "/user");
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String userID = (request.getParameter("userID"));
        UserDao user = new UserDao();
        user.deleteUser(userID);
        response.sendRedirect(request.getContextPath() + "/user");
    }

}
