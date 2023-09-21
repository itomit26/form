<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Product Update Form</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
            }
            .container {
                height: 100%;
                overflow-y: auto;
            }
            .modal-title{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <!-- SIDEBAR START -->
        <%@include file="Sidebar.jsp" %>
        <!-- SIDEBAR END -->

        <!-- DROPDOWN -->
        <%@include file="Dropdown.jsp" %>
        <!-- END -->

        <!-- PRODUCTS PAGE START -->
        <div class="row">
            <div class="col-lg-12">
                <div class="modal-content">
                    <div class="container-fluid">
                        <form method="POST" action="${pageContext.request.contextPath}/products/update" id="productForm" style="width: 600px;margin: 4rem auto;">               
                            <div class="modal-header">
                                <h2 class="modal-title" id="addProductModalLabel">Product Form</h2>
                            </div>
                            <hr>
                            
                            <div class="form-group ">
                                <label for="productId">Product ID:</label>
                                <input type="text" class="form-control" id="productId"
                                       value="<c:out value='${productDetails.productId}'/>" name="productId" readonly>
                                <div id="productIdError" class="text-danger"></div>
                            </div>
                            <div class="form-group ">
                                <label for="productName">Product Name:</label>
                                <input type="text" class="form-control" id="productName"
                                       value="<c:out value='${productDetails.productName}'/>" name="productName">
                                <div id="productNameError" class="text-danger"></div>
                            </div>
                            <div class="form-group ">
                                <label for="description">Description:</label>
                                <input type="text" class="form-control" id="description"
                                       value="<c:out value='${productDetails.description}'/>" name="description">
                                <div id="descriptionError" class="text-danger"></div>
                            </div>
                            <div class="form-group ">
                                <label for="size">Size:</label>
                                <input type="text" class="form-control" id="size"
                                      value="<c:out value='${productDetails.size}'/>" name="size"> 
                                <div id="sizeError" class="text-danger"></div>
                            </div>
                            <div class="form-group ">
                                <label for="price">Price:</label>
                                <input type="text" class="form-control" id="price"
                                       value="<c:out value='${productDetails.price}'/>" name="price"> 
                                <div id="priceError" class="text-danger"></div>
                            </div>
                            <div class="form-group ">
                                <label for="quantity">Quantity:</label>
                                <input type="text" class="form-control" id="quantity"
                                       value="<c:out value='${productDetails.quantity}'/>" name="quantity"> 
                                <div id="quantityError" class="text-danger"></div>
                            </div>
                            <button type="submit" class="btn btn-sm btn-outline-danger mt-3 mb-3 rounded-3" id="saveButton">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- PRODUCTS PAGE END -->
    </body>
    <script>
        $(document).ready(function () {
            $('#productForm').submit(function (e) {
                e.preventDefault();
                if (validateForm()) {
                    // Form is valid, submit the form
                    this.submit();
                }
            });
            $('#productId').on('input', function () {
                validateProductId();
            });

            $('#productName').on('input', function () {
                validateProductName();
            });

            $('#description').on('input', function () {
                validateDescription();
            });

            $('#size').on('input', function () {
                validateSize();
            });

            $('#price').on('input', function () {
                validatePrice();
            });

            $('#quantity').on('input', function () {
                validateQuantity();
            });

            function validateForm() {
                var isValid = true;
                isValid = validateProductId() && isValid;
                isValid = validateProductName() && isValid;
                isValid = validateDescription() && isValid;
                isValid = validateSize() && isValid;
                isValid = validatePrice() && isValid;
                isValid = validateQuantity() && isValid;

                if (isValid) {
                    var productId = $('#productId').val();
                    var productName = $('#productName').val();
                    var message = productId + " with name " + productName + " has been updated!";
                    alert(message);
                }

                return isValid;
            }


            function validateProductId() {
                var productId = $('#productId').val();
                var errorElement = $('#productIdError');
                errorElement.text('');

                if (!productId) {
                    errorElement.text('Product ID is required.');
                    return false;
                }

                if (isNaN(productId) || parseInt(productId) <= 0) {
                    errorElement.text('Product ID must be a positive integer.');
                    return false;
                }

                return true;
            }

            function validateProductName() {
                var productName = $('#productName').val();
                var errorElement = $('#productNameError');
                errorElement.text('');

                if (!productName) {
                    errorElement.text('Product Name is required.');
                    return false;
                }

                if (!/^[a-zA-Z]{3,}$/.test(productName)) {
                    errorElement.text('Product Name must be at least 3 characters.');
                    return false;
                }

                return true;
            }

            function validateDescription() {
                var description = $('#description').val();
                var errorElement = $('#descriptionError');
                errorElement.text('');

                if (!description) {
                    errorElement.text('Description is required.');
                    return false;
                }

                if (!/^[a-zA-Z]{3,}$/.test(description)) {
                    errorElement.text('Description must be at least 3 characters.');
                    return false;
                }

                return true;
            }

            function validateSize() {
                var size = $('#size').val();
                var errorElement = $('#sizeError');
                errorElement.text('');

                if (!size) {
                    errorElement.text('Size is required.');
                    return false;
                }

                if (!/^[a-zA-Z0-9\s]+$/.test(size)) {
                    errorElement.text('Size must be alphanumeric.');
                    return false;
                }

                return true;
            }

            function validatePrice() {
                var price = $('#price').val();
                var errorElement = $('#priceError');
                errorElement.text('');

                if (!price) {
                    errorElement.text('Price is required.');
                    return false;
                }

                if (isNaN(price) || parseFloat(price) <= 0) {
                    errorElement.text('Price must be greater than 0.00.');
                    return false;
                }

                return true;
            }

            function validateQuantity() {
                var quantity = $('#quantity').val();
                var errorElement = $('#quantityError');
                errorElement.text('');

                if (!quantity) {
                    errorElement.text('Quantity is required.');
                    return false;
                }

                if (isNaN(quantity) || parseInt(quantity) <= 0) {
                    errorElement.text('Quantity must be a positive integer.');
                    return false;
                }

                return true;
            }
        });
    </script>

</html>
