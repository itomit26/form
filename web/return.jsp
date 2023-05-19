<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>ALT Solutions-Products</title>
        <style>
            body{
               
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                scroll-behavior: smooth;
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
                background-color: #050321;
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
        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-3 d-flex "> 
                <div class=" flex-column flex-shrink-0 p-3 text-white " style="height: 100vh;flex-grow: 1;background-color: #060522;">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <img src="css/img/logo1.png" class="d-flex align-items-center" alt="" width="60" height="50">
                        <span class="fs-4" style="font-family: 'Poppins', sans-serif;">Solutions</span>
                    </a>
                    <hr>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="nav-item">
                            <a href="<%= request.getContextPath()%>/home" class="nav-link">
                                 <i class="fa fa-home"></i>
                                Home
                            </a>
                        </li>
                        <li>
                            <a href="<%= request.getContextPath()%>/products" class="nav-link">
                                <i class="fa fa-plus-circle" aria-hidden="true"></i>
                                Products
                            </a>
                        </li>
                    </ul>
                    <hr>
                </div>
            </div>  
            <div class="col-lg-9">
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
                        <button type="submit" class="btn  btn-outline-danger btn-sm" style="margin-left: 8.5rem;">Search</button>
                    </div> 
                    <hr>
                </form>
                <h2>Products</h2>
                <table id="myTable">
                    <thead>
                        <tr>
                            <th>Product ID</th>
                            <th>Product Name</th>
                            <th>Description</th>
                            <th>Size</th>
                            <th>Price</th>
                            <th>Quantity</th>
                        </tr>
                    </thead>  
                    <tbody id="productTableBody">
                        <tr>
                            <td>${productId}</td>
                            <td>${productName}</td>
                            <td>${description}</td>
                            <td>${size}</td>
                            <td>${price}</td>
                            <td>${quantity}</td>
                        </tr>
                    </tbody>
                </table>
                <div class="add-product">
                    <a href="${pageContext.request.contextPath}/products/create" class="btn btn-outline-danger rounded-5">Add New Product</a>
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
            var productIdCell = newRow.insertCell();
            productIdCell.innerHTML = productId;

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
