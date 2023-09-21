<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            html, body {

                margin: 0;
                padding: 0;

            }
            .container {
                height: 100%;
                overflow-y: auto;
                overflow-x: hidden;
            }
            .modal-title{
                font-family: 'Poppins', sans-serif;
            }
        </style>
    </head>
    <body class="body_bg">
        <section class="bg-image">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-7 col-lg-7 col-xl-9">
                            <div class="" style="max-width: 100%; margin: 0 auto;">
                                <div class="card-body p-5">
                                    <form method="POST" action="${pageContext.request.contextPath}/customer/update"
                                          id="customerForm">
                                        <button onclick="window.history.back()" type="button" class="btn btn-light mb-4">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                                 class="bi bi-arrow-left" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd"
                                                  d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                                            </svg>
                                        </button>
                                        <h2 class="text-uppercase text-center mb-3 text-white">Create an account</h2>
                                        <hr>
                                        <div class="form-group mb-3 text-white">
                                            <label for="userID">Preferred Username</label>
                                            <input type="text" class="form-control" id="userID"
                                                   value="<c:out value='${registerDetails.userID}'/>" name="userID" readonly>
                                            <div id="userIDError" class="error-message"></div>
                                        </div>
                                        <div class="form-group mb-3 text-white">
                                            <label for="password">Password</label>
                                            <div class="input-group">
                                                <input type="password" class="form-control" id="password" value="<c:out value='${registerDetails.password}'/>"name="password">
                                                <button class="btn btn-light" type="button" onclick="togglePasswordVisibility('password')">
                                                    <i class="fa fa-eye" id="passwordEye"></i>
                                                </button>
                                            </div>
                                            <div id="passwordError" class="error-message"></div>
                                        </div>
                                        <div class="input-group">
                                            <div class="col-4 form-group mb-3 text-white">
                                                <label for="firstName">First Name</label>
                                                <input type="text" class="form-control" id="firstName" value="<c:out value='${registerDetails.firstName}'/>" name="firstName">
                                                <div id="firstNameError" class="error-message"></div>
                                            </div>
                                            <div class="col-4 mx-2 form-group mb-3 text-white">
                                                <label for="middleName">Middle Name</label>
                                                <input type="text" class="form-control" id="middleName" value="<c:out value='${registerDetails.middleName}'/>" name="middleName">
                                                <div id="middleNameError" class="error-message"></div>
                                            </div>
                                            <div class="col-3 form-group mb-3 text-white">
                                                <label for="lastName">Last Name</label>
                                                <input type="text" class="form-control" id="lastName" value="<c:out value='${registerDetails.lastName}'/>" name="lastName">
                                                <div id="lastNameError" class="error-message"></div>
                                            </div>
                                        </div>
                                        <div class="form-group mb-3 text-white">
                                            <label for="address">Complete Address</label>
                                            <input type="text" class="form-control" id="address" value="<c:out value='${registerDetails.address}'/>" name="address">
                                            <div id="addressError" class="error-message"></div>
                                        </div>
                                        <div class="form-group mb-3 text-white">
                                            <label for="birthday">Birthday</label>
                                            <input type="text" class="form-control" id="birthday" value="<c:out value='${registerDetails.birthday}'/>" name="birthday"
                                                   placeholder="MM/DD/YYYY">
                                            <div id="birthdayError" class="error-message"></div>
                                        </div>
                                        <div class="form-group mb-3 text-white">
                                            <label for="mobileNumber">Mobile Number</label>
                                            <input type="text" class="form-control" id="mobileNumber" value="<c:out value='${registerDetails.mobileNumber}'/>" name="mobileNumber">
                                            <div id="mobileNumberError" class="error-message"></div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-sm px-4 btn-outline-danger btn-block rounded-pill text-uppercase"
                                                    id="saveButton">
                                                Sign Up
                                            </button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <script>
            $(document).ready(function () {
                $('#customerForm').submit(function (e) {
                    if (!validateForm()) {
                        e.preventDefault();
                    }
                });

                $('#userID').on('input', function () {
                    validatePreferredUsername();
                });

                $('#password').on('input', function () {
                    validatePassword();
                });

                $('#firstName').on('input', function () {
                    validateFirstName();
                });

                $('#middleName').on('input', function () {
                    validateMiddleName();
                });

                $('#lastName').on('input', function () {
                    validateLastName();
                });

                $('#address').on('input', function () {
                    validateAddress();
                });

                $('#birthday').on('input', function () {
                    validateBirthday();
                });

                $('#mobileNumber').on('input', function () {
                    validateMobileNumber();
                });

                function validateForm() {
                    var isValid = true;
                    isValid = validatePreferredUsername() && isValid;
                    isValid = validatePassword() && isValid;
                    isValid = validateFirstName() && isValid;
                    isValid = validateMiddleName() && isValid;
                    isValid = validateLastName() && isValid;
                    isValid = validateAddress() && isValid;
                    isValid = validateBirthday() && isValid;
                    isValid = validateMobileNumber() && isValid;

                    if (isValid) {
                        var userID = $('#userID').val();
                        var message = userID + " has been updated!";
                        alert(message); // You can replace this with your preferred way of displaying the message
                    }

                    return isValid;
                }


                function validatePreferredUsername() {
                    var userID = $('#userID').val().trim();
                    var errorElement = $('#userIDError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!userID) {
                        errorElement.text('Username is required.');
                        return false;
                    }

                    var alphanumericRegex = /^[a-zA-Z0-9]+$/;
                    var lengthRegex = /^.{4,5}$/;
                    if (!alphanumericRegex.test(userID)) {
                        errorElement.text('Username must be alphanumeric.');
                        return false;
                    }

                    if (!lengthRegex.test(userID)) {
                        errorElement.text('Username must be 4 to 5 characters long.');
                        return false;
                    }

                    return true;
                }

                function validatePassword() {
                    var password = $('#password').val();
                    var errorElement = $('#passwordError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!password) {
                        errorElement.text('Password is required.');
                        return false;
                    }
                    var lengthRegex = /^.{8,16}$/;
                    var uppercaseRegex = /[A-Z]/;
                    var lowercaseRegex = /[a-z]/;
                    var digitRegex = /[0-9]/;
                    if (!lengthRegex.test(password)) {
                        errorElement.text('Password must be 8 to 16 characters long.');
                        return false;
                    }
                    if (!uppercaseRegex.test(password)) {
                        errorElement.text('Password must contain at least one uppercase letter.');
                        return false;
                    }
                    if (!lowercaseRegex.test(password)) {
                        errorElement.text('Password must contain at least one lowercase letter.');
                        return false;
                    }
                    if (!digitRegex.test(password)) {
                        errorElement.text('Password must contain at least one digit.');
                        return false;
                    }
                    return true;
                }


                function validateFirstName() {
                    var firstName = $('#firstName').val().trim();
                    var errorElement = $('#firstNameError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!firstName) {
                        errorElement.text('First Name is required.');
                        return false;
                    }

                    var nameRegex = /^[a-zA-Z]+$/;
                    if (!nameRegex.test(firstName)) {
                        errorElement.text('First Name must contain only letters.');
                        return false;
                    }

                    return true;
                }

                function validateMiddleName() {
                    var middleName = $('#middleName').val().trim();
                    var errorElement = $('#middleNameError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!middleName) {
                        // Middle Name is optional, no validation required
                        return true;
                    }

                    var nameRegex = /^[a-zA-Z]+$/;
                    if (!nameRegex.test(middleName)) {
                        errorElement.text('Middle Name must contain only letters.');
                        return false;
                    }

                    return true;
                }

                function validateLastName() {
                    var lastName = $('#lastName').val().trim();
                    var errorElement = $('#lastNameError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!lastName) {
                        errorElement.text('Last Name is required.');
                        return false;
                    }

                    var nameRegex = /^[a-zA-Z]+$/;
                    if (!nameRegex.test(lastName)) {
                        errorElement.text('Last Name must contain only letters.');
                        return false;
                    }

                    return true;
                }

                function validateAddress() {
                    var address = $('#address').val().trim();
                    var errorElement = $('#addressError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!address) {
                        errorElement.text('Address is required.');
                        return false;
                    }

                    // Add any additional address validation rules here

                    return true;
                }

                function validateBirthday() {
                    var birthday = $('#birthday').val().trim();
                    var errorElement = $('#birthdayError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!birthday) {
                        errorElement.text('Birthday is required.');
                        return false;
                    }

                    var birthdayRegex = /^\d{2}\/\d{2}\/\d{4}$/;
                    if (!birthdayRegex.test(birthday)) {
                        errorElement.text('Invalid birthday format. Please use MM/DD/YYYY.');
                        return false;
                    }

                    // Add additional birthday validation rules if needed

                    return true;
                }

                function validateMobileNumber() {
                    var mobileNumber = $('#mobileNumber').val().trim();
                    var errorElement = $('#mobileNumberError');
                    errorElement.text('');
                    errorElement.css('color', 'red');
                    if (!mobileNumber) {
                        errorElement.text('Mobile Number is required.');
                        return false;
                    }

                    var numberRegex = /^\d+$/;
                    if (!numberRegex.test(mobileNumber)) {
                        errorElement.text('Mobile Number must contain only numbers.');
                        return false;
                    }

                    // Add additional mobile number validation rules if needed

                    return true;
                }
            });
        </script>

        <script>
            function togglePasswordVisibility(fieldId) {
                var passwordField = $('#' + fieldId);
                var eyeIcon = $('#' + fieldId + 'Eye');

                if (passwordField.attr('type') === 'password') {
                    passwordField.attr('type', 'text');
                    eyeIcon.removeClass('fa-eye');
                    eyeIcon.addClass('fa-eye-slash');
                } else {
                    passwordField.attr('type', 'password');
                    eyeIcon.removeClass('fa-eye-slash');
                    eyeIcon.addClass('fa-eye');
                }
            }
        </script>
    </script>  

</body>
</html>

