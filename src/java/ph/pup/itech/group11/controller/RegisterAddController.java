package ph.pup.itech.group11.controller;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.group11.dao.RegistrationDao;
import ph.pup.itech.group11.model.RegistrationModel;

public class RegisterAddController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        String rdPage = "/reg_form.jsp";
        if (request.getParameter("addregister") != null) {
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

            RegistrationDao user = new RegistrationDao();
            RegistrationModel updateRegistration = new RegistrationModel(
                    userID, password, firstName, middleName, lastName, address, birthday, mobileNumber, accountStatus, loginStatus, userRole);
            boolean createRegistration = user.createRegistration(updateRegistration);
            if (createRegistration) {
                String message = "The user " + lastName + " with an ID of " + userID + " is successful!";
                request.setAttribute("message", message);
            } else {
                String message = "Database Query Error";
                request.setAttribute("message", message);
            }
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                rdPage);
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterAddController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterAddController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
