<!DOCTYPE html>
<html>
    <head>
        <title>Product Form</title>
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
            body{
                
               overflow-y: visible;
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                scroll-behavior: smooth;
            }
            .modal-title{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body>
        <div class="row">
            <div class="col-lg-3 d-flex"> 
                <div class=" flex-column flex-shrink-0 p-3 text-white " style="flex-grow: 1;background-color: #060522;">
                    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <img src="../css/img/logo1.png" class="d-flex align-items-center" alt="" width="60" height="50">
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
            <div class="modal-content">
                <div class="container-fluid">
                    <form method="POST" action="${pageContext.request.contextPath}/products" id="productForm" style="width: 600px;margin: 4rem auto;">               
                <div class="modal-header">
                    <h2 class="modal-title" id="addProductModalLabel">Product Form</h2>
                </div>
                <hr>
                <div class="form-group ">
                    <label for="productId">Product ID:</label>
                    <input type="text" class="form-control" id="productId" name="productId">
                    <div id="productIdError" class="text-danger"></div>
                </div>
                <div class="form-group ">
                    <label for="productName">Product Name:</label>
                    <input type="text" class="form-control" id="productName" name="productName">
                    <div id="productNameError" class="text-danger"></div>
                </div>
                <div class="form-group ">
                    <label for="description">Description:</label>
                    <input type="text" class="form-control" id="description" name="description">
                    <div id="descriptionError" class="text-danger"></div>
                </div>
                <div class="form-group ">
                    <label for="size">Size:</label>
                    <input type="text" class="form-control" id="size" name="size">
                    <div id="sizeError" class="text-danger"></div>
                </div>
                <div class="form-group ">
                    <label for="price">Price:</label>
                    <input type="text" class="form-control" id="price" name="price">
                    <div id="priceError" class="text-danger"></div>
                </div>
                <div class="form-group ">
                    <label for="quantity">Quantity:</label>
                    <input type="text" class="form-control mb-3" id="quantity" name="quantity">
                    <div id="quantityError" class="text-danger"></div>
                </div>
                <button type="submit" class="btn btn-sm btn-outline-danger mb-3 rounded-3" id="saveButton">Save</button>
                </form>
            </div>
        </div>
        </div>
        


    </body>
    <script>
        $(document).ready(function () {
            $('#productForm').submit(function (e) {
                e.preventDefault();
                if (validateForm()) {
                    // Form is valid, show success message
                    var productId = $('#productId').val();
                    var productName = $('#productName').val();
                    var message = productName + " with " + productId + " has been added to inventory.";
                    if (confirm(message)) {
                        // User confirmed, submit the form
                        $(this).off('submit').submit();
                    }
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
                isValid = validateProductName
                        () && isValid;
                isValid = validateDescription() && isValid;
                isValid = validateSize() && isValid;
                isValid = validatePrice() && isValid;
                isValid = validateQuantity() && isValid;
                return isValid;
            }

            function validateProductId() {
                var productId = $('#productId').val();
                var errorElement = $('#productIdError');
                errorElement.text('');

                if (!productId || isNaN(productId) || parseInt(productId) <= 0) {
                    errorElement.text('Product ID is required and must be a positive integer.');
                    return false;
                }

                return true;
            }

            function validateProductName() {
                var productName = $('#productName').val();
                var errorElement = $('#productNameError');
                errorElement.text('');

                if (!productName || !/^[a-zA-Z]{3,}$/.test(productName)) {
                    errorElement.text('Product Name is required and must be at least 3 characters.');
                    return false;
                }

                return true;
            }

            function validateDescription() {
                var description = $('#description').val();
                var errorElement = $('#descriptionError');
                errorElement.text('');

                if (!description || !/^[a-zA-Z]{3,}$/.test(description)) {
                    errorElement.text('Description is required and must be at least 3 characters.');
                    return false;
                }

                return true;
            }

            function validateSize() {
                var size = $('#size').val();
                var errorElement = $('#sizeError');
                errorElement.text('');

                if (!size || !/^[a-zA-Z0-9\s]+$/.test(size)) {
                    errorElement.text('Size must be alphanumeric.');
                    return false;
                }

                return true;
            }

            function validatePrice() {
                var price = $('#price').val();
                var errorElement = $('#priceError');
                errorElement.text('');

                if (!price || isNaN(price) || parseFloat(price) <= 0) {
                    errorElement.text('Price is required and must be greater than 0.00.');
                    return false;
                }

                return true;
            }

            function validateQuantity() {
                var quantity = $('#quantity').val();
                var errorElement = $('#quantityError');
                errorElement.text('');

                if (!quantity || isNaN(quantity) || parseInt(quantity) <= 0) {
                    errorElement.text('Quantity is required and must be a positive integer.');
                    return false;
                }

                return true;
            }
        });
    </script>
</html>
