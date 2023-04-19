<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP-Bootstrap</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
    </head>
    <body>
        <section class="bg-image">
            <div class="mask d-flex align-items-center h-100 gradient-custom-3">
                <div class="container h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-12 col-md-7 col-lg-7 col-xl-6">
                            <div class="card" style="border-radius: 15px; max-width: 90%; margin: 0 auto;">
                                <div class="card-body p-5">
                                    <button onclick="window.history.back()"type="button" class="btn btn-light mb-4"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                                        </svg></button>
                                    <h2 class="text-uppercase text-center mb-3">Create an account</h2>
                                    <div class="container">
                                        <div class="row">
                                            <form class="row g-3"> 
                                                <div class="col-md-12">
                                                    <label for="inputEmail4" class="form-label">First Name</label>
                                                    <input type="name" class="form-control" id="inputfirstname">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="inputEmail4" class="form-label">Middle Name</label>
                                                    <input type="middlename" class="form-control" id="inputmiddlename">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="inputEmail4" class="form-label">Last Name</label>
                                                    <input type="lastname" class="form-control" id="inputlastname">
                                                </div>                                            
                                                <div class="col-12">
                                                    <label for="inputAddress" class="form-label">Address</label>
                                                    <input type="text" class="form-control" id="inputAddress" placeholder=>
                                                </div>
                                                <div class="col-md-6">
                                                    <label for="inputCity" class="form-label">City</label>
                                                    <input type="text" class="form-control" id="inputCity">
                                                </div>
                                                <div class="col-md-2">
                                                    <label for="inputZip" class="form-label">Zip</label>
                                                    <input type="text" class="form-control" id="inputZip">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="inputusername" class="form-label">Username</label>
                                                    <input type="username" class="form-control" id="inputusername">
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="inputpassword" class="form-label">Password</label>
                                                    <div class="input-group">
                                                        <input type="password" class="form-control" id="inputPassword" aria-describedby="passwordHelp" placeholder="">
                                                        <button type="button" id="togglePassword" onclick="togglePasswordVisibility()" class="btn btn-outline-secondary"><i class="fa fa-eye"></i></button>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <label for="inputpassword" class="form-label">Confirm Password</label>
                                                    <div class="input-group">
                                                        <input type="password" class="form-control" id="inputPassword" aria-describedby="passwordHelp" placeholder="">
                                                        <button type="button" id="togglePassword" onclick="togglePasswordVisibility()" class="btn btn-outline-secondary"><i class="fa fa-eye"></i></button>
                                                    </div>
                                                </div>
                                                <div class="form-check d-flex justify-content-center mb-5">
                                                    <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg"/>
                                                    <label class="form-check-label" for="form2Example3g">
                                                        I agree on all statements in <a href="terms and conditions.jsp" class="text-form text-body"><u>Terms and Conditions</u></a>
                                                    </label>
                                                </div>     
                                                <div class="d-grid place-items-center">
                                                    <button type="button"
                                                            class="text-form btn btn-dark btn-block btn-lg text-white disabled">Register</button>
                                                </div>
                                                <p class="text-center text-muted mt-5 mb-0">Have an account already? 
                                                    <a href="log_in.jsp"class="text-form fw-bold text-body"><u>Login here</u></a></p>
                                            </form>
                                        </div>
                                    </div>    

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>   
         <script>
            function togglePasswordVisibility() {
  const passwordInput = document.getElementById("inputPassword");
  const toggleButton = document.getElementById("togglePassword");

  if (passwordInput.type === "password") {
    passwordInput.type = "text";
    toggleButton.innerHTML = "<i class='fa fa-eye-slash'></i>";
  } else {
    passwordInput.type = "password";
    toggleButton.innerHTML = "<i class='fa fa-eye'></i>";
  }
}
        </script>
    </body>
</html>
