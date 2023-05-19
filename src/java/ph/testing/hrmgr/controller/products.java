/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package ph.testing.hrmgr.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class products extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        String price = request.getParameter("price");
        String quantity = request.getParameter("quantity");

        request.setAttribute("productId", productId);
        request.setAttribute("productName", productName);
        request.setAttribute("description", description);
        request.setAttribute("size", size);
        request.setAttribute("price", price);
        request.setAttribute("quantity", quantity);

        System.out.println("productId" + productId);
        System.out.println("productName" + productName);
        System.out.println("description" + description);
        System.out.println("size" + size);
        System.out.println("price" + price);
        System.out.println("quantity" + quantity);
        
        RequestDispatcher rd = getServletContext().getRequestDispatcher("/return.jsp");
        rd.forward(request,response);
 
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}

