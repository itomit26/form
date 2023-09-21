<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>User Form</title>
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
        <%@page import="javax.servlet.annotation.WebServlet"%>
        <%@page import="javax.servlet.http.HttpServlet"%>
        <%@page import="javax.servlet.http.HttpServletRequest"%>
        <%@page import="javax.servlet.http.HttpServletResponse"%>
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
        <div class="row">
            <div class="col-lg-12">
                <div class="modal-content">
                    <div class="container-fluid">
                        <form method="POST" action="${pageContext.request.contextPath}/user/create" id="userForm" style="width: 600px;margin: 4rem auto;">               
                            <div class="modal-header">
                                <h2 class="modal-title" id="addUserModalLabel">User Form</h2>
                            </div>
                            <hr>
                            <div class="form-group">
                                <label for="userID">User ID:</label>
                                <input type="text" class="form-control" id="userID" name="userID">
                                <div id="userIDError" class="text-danger"></div>
                            </div>
                            <div class="form-group">
                                <label for="firstName">First Name:</label>
                                <input type="text" class="form-control" id="firstName" name="firstName">
                                <div id="firstNameError" class="text-danger"></div>
                            </div>
                            <div class="form-group">
                                <label for="middleName">Middle Name:</label>
                                <input type="text" class="form-control" id="middleName" name="middleName">
                            </div>
                            <div class="form-group">
                                <label for="lastName">Last Name:</label>
                                <input type="text" class="form-control" id="lastName" name="lastName">
                                <div id="lastNameError" class="text-danger"></div>
                            </div>
<!--                            <div class="form-group">
                                <label for="userRole">User Role:</label>
                                <input type="text" class="form-control" id="userRole" name="userRole">
                                <div id="userRoleError" class="text-danger"></div>
                            </div>-->

                            <div class="form-group">
                                <label class="" for="userRole">User Role:</label>
                                <select class="input-group form-select form-control" id="userRole" name="userRole">
                                    <option selected>Choose...</option>
                                    <option value="Administrator">Administrator</option>
                                    <option value="Customer">Customer</option>
                                </select>
                                <div id="userRoleError" class="text-danger"></div>
                                
                            </div>
                            <button type="submit" class="btn btn-sm btn-outline-danger mb-3 mt-3 rounded-3" id="saveButton">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <script>
            $(document).ready(function () {
                $('#userForm').submit(function (e) {
                    e.preventDefault();
                    if (validateForm()) {
                        // Form is valid, submit the form
                        this.submit();
                    }
                });

                $('#userID').on('input', function () {
                    validateUserID();
                });

                $('#firstName').on('input', function () {
                    validateFirstName();
                });

                $('#lastName').on('input', function () {
                    validateLastName();
                });

                $('#userRole').on('input', function () {
                    validateUserRole();
                });

                function validateForm() {
                    var isValid = true;
                    isValid = validateUserID() && isValid;
                    isValid = validateFirstName() && isValid;
                    isValid = validateLastName() && isValid;
                    isValid = validateUserRole() && isValid;

                    if (isValid) {
                        var firstName = $('#firstName').val();
                        var message = firstName + " has been added";
                        alert(message); // You can replace this with your preferred way of displaying the message
                    }

                    return isValid;
                }

                function validateUserID() {
                    var userID = $('#userID').val();
                    var errorElement = $('#userIDError');
                    errorElement.text('');
                    if (!userID || !/^[a-zA-Z0-9]{5}$/.test(userID)) {
                        errorElement.text('User ID is required and must be alphanumeric with 5 characters.');
                        return false;
                    }
                    return true;
                }

                function validateFirstName() {
                    var firstName = $('#firstName').val();
                    var errorElement = $('#firstNameError');
                    errorElement.text('');
                    if (!firstName || !/^[a-zA-Z]{1,}$/.test(firstName)) {
                        errorElement.text('First Name is required and must contain only letters.');
                        return false;
                    }
                    return true;
                }

                function validateLastName() {
                    var lastName = $('#lastName').val();
                    var errorElement = $('#lastNameError');
                    errorElement.text('');
                    if (!lastName || !/^[a-zA-Z]{1,}$/.test(lastName)) {
                        errorElement.text('Last Name is required and must contain only letters.');
                        return false;
                    }
                    return true;
                }

                function validateUserRole() {
                    var userRole = $('#userRole').val();
                    var errorElement = $('#userRoleError');
                    errorElement.text('');
                    if (!userRole) {
                        errorElement.text('User Role is required.');
                        return false;
                    }
                    return true;
                }
            });
        </script>
    </body>
</html>

