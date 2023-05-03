
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
    </head>
    <body>
        <section class="bg-image">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-7 col-lg-7 col-xl-6">
                            <div class="" style="max-width: 100%; margin: 0 auto;">
                                <div class="card-body p-5">
                                    <button onclick="window.history.back()"type="button" class="btn btn-light mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                                        </svg></button>
                                    <h2 class="text-uppercase text-center mb-3">Create an account</h2>

                                    <form>
                                        <div class="form-group">
                                            <label for="username">Username</label>
                                            <input type="text" class="form-control" id="username" name="username" placeholder="Alphanumeric, min 4, max 12" minlength="4" maxlength="12" required>
                                            <div class="invalid-feedback">Please enter a valid username.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="firstname">First Name</label>
                                            <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Characters only, min 1" minlength="1" pattern="^[a-zA-Z ]+$" required>
                                            <div class="invalid-feedback">Please enter a valid first name.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="middlename">Middle Name</label>
                                            <input type="text" class="form-control" id="middlename" name="middlename" placeholder="Characters only" pattern="^[a-zA-Z ]+$">
                                            <div class="invalid-feedback">Please enter a valid middle name.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="lastname">Last Name</label>
                                            <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Characters only, min 2" minlength="2" pattern="^[a-zA-Z ]+$" required>
                                            <div class="invalid-feedback">Please enter a valid last name.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="address">Complete Address</label>
                                            <input type="text" class="form-control" id="address" name="address" placeholder="Alphanumeric" pattern="^[a-zA-Z0-9 ]+$" required>
                                            <div class="invalid-feedback">Please enter a valid address.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="birthday">Birthday</label>
                                            <input type="date" class="form-control" id="birthday" name="birthday" min="1900-01-01" max="2100-12-31" required>
                                            <div class="invalid-feedback">Please enter a valid birthday.</div>
                                        </div>
                                        <div class="form-group">
                                            <label for="mobile">Mobile</label>
                                            <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Numeric, 11 digits" pattern="\d{11}" required>
                                            <div class="invalid-feedback">Please enter a valid mobile number (11 digits).</div>
                                        </div>

                                        <div class="form-check d-flex justify-content-center mb-5">
                                            <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg"/>
                                            <label class="form-check-label" for="form2Example3g">
                                                I agree on all statements in <a href="terms and conditions.jsp" class="text-form text-body"><u>Terms and Conditions</u></a>
                                            </label>
                                        </div>     
                                        <div class="d-grid place-items-center">

                                            <button type="submit" class="text-form btn btn-dark btn-block btn-lg text-white btn-primary btn btn-primary">Submit</button>
                                        </div>
                                        <p class="text-center text-muted mt-5 mb-0">Have an account already? 
                                            <a href="log_in.jsp"class="text-form fw-bold text-body"><u>Login here</u></a></p>
                                    </form>

                                    </body>
                                    <script>
                                        $(document).ready(function () {
                                            $("input").on("input", function () {
                                                validateField($(this));
                                            });

                                            $("form").on("submit", function (event) {
                                                event.preventDefault();
                                                $("input").each(function () {
                                                    validateField($(this));
                                                });
                                                if ($(".is-invalid").length == 0) {
                                                    alert("Success!");
                                                    $(this).unbind("submit").submit();
                                                }
                                            });

                                            function validateField(field) {
                                                var fieldValue = field.val().trim();
                                                var fieldName = field.attr("name");
                                                var pattern = field.attr("pattern");
                                                var required = field.prop("required");
                                                var minLength = field.attr("minlength");
                                                var maxLength = field.attr("maxlength");

                                                if (required && fieldValue.length === 0) {
                                                    field.addClass("is-invalid");
                                                    field.next(".invalid-feedback").text("Please enter a value for " + fieldName + ".");
                                                    return;
                                                }

                                                if (minLength && fieldValue.length < minLength) {
                                                    field.addClass("is-invalid");
                                                    field.next(".invalid-feedback").text(fieldName + " should be at least " + minLength + " characters long.");
                                                    return;
                                                }

                                                if (maxLength && fieldValue.length > maxLength) {
                                                    field.addClass("is-invalid");
                                                    field.next(".invalid-feedback").text(fieldName + " should not exceed " + maxLength + " characters.");
                                                    return;
                                                }

                                                if (pattern) {
                                                    var regex = new RegExp(pattern);
                                                    if (!regex.test(fieldValue)) {
                                                        field.addClass("is-invalid");
                                                        field.next(".invalid-feedback").text("Please enter a valid value for " + fieldName + ".");
                                                        return;
                                                    }
                                                }

                                                // If field has passed all validation checks, remove the invalid class and feedback message (if any).
                                                field.removeClass("is-invalid");
                                                field.next(".invalid-feedback").text("");
                                            }
                                        });


                                    </script>
                                    </html>
