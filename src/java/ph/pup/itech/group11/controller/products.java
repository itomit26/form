
package ph.pup.itech.group11.controller;

///*
// * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
// * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
// */
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ph.pup.itech.group11.dao.ProductDao;
import ph.pup.itech.group11.model.ProductModel;
//
///**
// *
// * @author WANHEDA
// */
public class products extends HttpServlet {

    @Override
   protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String action = request.getServletPath();
            switch (action) {
                case "/products/create/form":
                    showProductCreateForm(request, response);
                    break;
                case "/products/create":
                    createProduct(request, response);
                    break;
                case "/products/update/form":
                    showProductUpdateForm(request, response);
                    break;
                case "/products/update":
                    updateProduct(request, response);
                    break;
                case "/products/delete":
                    deleteProduct(request, response);
                    break;
                default:
                    viewProduct(request, response);
                    break;
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(products.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    private void viewProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        ProductDao product = new ProductDao();
        ArrayList<ProductModel> productList = product.getProductList();
        request.setAttribute("productList", productList);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product.jsp");
        rd.forward(request, response);
    }

    private void showProductCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product_form.jsp");
        rd.forward(request, response);
    }

    private void createProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int productId;
        try {
            productId = Integer.parseInt(request.getParameter("productId"));
        } catch (NumberFormatException e) {
            productId = 0; // or any other default value
        }

        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");

        double price;
        try {
            price = Double.parseDouble(request.getParameter("price"));
        } catch (NumberFormatException e) {
            price = 0.0; // or any other default value
        }

        int quantity;
        try {
            quantity = Integer.parseInt(request.getParameter("quantity"));
        } catch (NumberFormatException e) {
            quantity = 0; // or any other default value
        }

        ProductDao product = new ProductDao();
        ProductModel createProduct = new ProductModel(
                productId, productName, description, size, price, quantity);
        product.createProduct(createProduct);
        response.sendRedirect(request.getContextPath() + "/products");
    }

    private void showProductUpdateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ProductDao product = new ProductDao();
        ProductModel productDetails = product.getProductDetails(productId);
        request.setAttribute("productDetails", productDetails);
        RequestDispatcher rd = getServletContext().getRequestDispatcher(
                "/product_update.jsp");
        rd.forward(request, response);
    }

    private void updateProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        String description = request.getParameter("description");
        String size = request.getParameter("size");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        ProductDao product = new ProductDao();
        ProductModel updateProduct = new ProductModel(
                productId, productName, description, size, price, quantity);
        product.updateProduct(updateProduct);
        response.sendRedirect(request.getContextPath() + "/products");
    }

    private void deleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        int productId = Integer.parseInt(request.getParameter("productId"));
        ProductDao product = new ProductDao();
        product.deleteProduct(productId);
        response.sendRedirect(request.getContextPath() + "/products");
    }

}
