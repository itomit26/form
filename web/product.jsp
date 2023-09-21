<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/deleteFunction.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <title>ALT Solutions - Products</title>
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }

            label{
                font-family: 'Poppins', sans-serif !important;
            }
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #060522;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            a {
                color: #4CAF50;
            }

            .actions {
                display: flex;
                justify-content: flex-start;
            }

            .actions a {
                margin-left: 10px;
            }

            .add-product {
                margin-top: 20px;
                text-align: center;
            }

            .add-product button {

                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-top: 10px;
                cursor: pointer;
                border-radius: 2rem;
            }

            form {
                display: inline-block;
                margin-bottom: 20px;
            }

            input[type="text"] {
                padding: 5px;
                font-size: 16px;
            }

            button[type="submit"] {
                padding: 0rem 1rem;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin-left: 10px;
                cursor: pointer;
                border-radius: 2rem;
            }
            .btn-link{
                color: red !important;
            }
            .glass{
                background: rgba(255, 255, 255, 0.2);
                backdrop-filter: blur(10px);
            }
        </style>
    </head>
    <body>
        <!-- LOADER -->
        <%@include file="loader.jsp" %>
        <!-- LOADER END-->

        <!-- SIDEBAR START -->
        <%@include file="Sidebar.jsp" %>
        <!-- SIDEBAR END -->

        <!-- DROPDOWN -->
        <%@include file="Dropdown.jsp" %>
        <!-- END -->
        <div class="row">
            <div class="col-lg-8" style="margin: 0 auto;">
                <div class="container">
                    <form>
                        <div class="mb-3 mt-5">           
                            <label for="product_id" class="me-5">Product ID:</label>
                            <input type="text" id="product_id" name="product_id">
                        </div>
                        <div>
                            <form method="GET">
                                <label for="product_name" class="me-2" >Product Name:</label>
                                <input type="text" id="product_name" name="product_name" style="margin-left: 0.44rem;">
                            </form>
                        </div>
                        <div>
                            <button type="submit" class="btn  btn-outline-danger btn-sm" style="margin-left: 8.5rem;border-radius: 0;">Search</button>
                        </div> 
                        <hr>
                    </form>
                    <h2>Products</h2>
                    <table id="myTable">
                        <thead class="glass">
                            <tr>
                                <th scope="col">Product ID</th>
                                <th scope="col">Product Name</th>
                                <th scope="col">Description</th>
                                <th scope="col">Size</th>
                                <th scope="col">Price</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>  
                        <tbody id="productTableBody">
                            <c:forEach items="${productList}" var="product">
                                <tr>

                                    <td>${product.productId}</td>
                                    <td>${product.productName}</td>
                                    <td>${product.description}</td>
                                    <td>${product.size}</td>
                                    <td>${product.price}</td>
                                    <td>${product.quantity}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/products/update/form?productId=${product.productId}" class="btn btn-sm btn-link">
                                            <i class="fa-sharp fa-solid fa-pen-to-square"></i>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/products/delete?productId=${product.productId}" class="btn btn-sm btn-link delete-link">
                                            <i class="fa-sharp fa-solid fa-trash"></i>
                                        </a>
                                    </td>
                                </c:forEach> 
                            </tr>

                        </tbody>
                    </table>
                    <div class="add-product">
                        <a href="${pageContext.request.contextPath}/products/create/form" class="btn btn-outline-danger" style="border-radius: 0;">Add New Product</a>
                    </div>
                </div>
            </div>
        </div>
    </body>

    <!-- SCRIPT START -->
    <script>
        // Function to add a new product
        function addProduct(productId, productName, description, size, price, quantity) {
            // Get the table body element
            var tableBody = document.getElementById("productTableBody");

            // Create a new row
            var newRow = tableBody.insertRow();

            // Create and append the product information cells
            var productIDCell = newRow.insertCell();
            productIDCell.innerHTML = productId;

            var productNameCell = newRow.insertCell();
            productNameCell.innerHTML = productName;

            var descriptionCell = newRow.insertCell();
            descriptionCell.innerHTML = description;

            var sizeCell = newRow.insertCell();
            sizeCell.innerHTML = size;

            var priceCell = newRow.insertCell();
            priceCell.innerHTML = price;

            var quantityCell = newRow.insertCell();
            quantityCell.innerHTML = quantity;
        }
    </script>
    <!-- SCRIPT END -->
</html>