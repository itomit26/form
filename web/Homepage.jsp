<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <title>ALT Solutions</title>
        <style>
            body{
                
                padding: 0;
                margin: 0;
                box-sizing: border-box;
                scroll-behavior: smooth;
            }
        </style>
    </head>
    <body>
        <!--<nav class="navbar-h navbar navbar-expand-lg navbar-dark bg-dark rounded-bottom-5" style="padding: 0;">
            <div class="container">
                <a class="navbar-brand" href="#">
                    <img src="css/img/logo.png" alt="" width="70" height="60">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav ms-auto">
                        <a class="nav-link"  aria-current="page" href="<%= request.getContextPath()%>/home">Home</a>
                        <a class="nav-link" href="<%= request.getContextPath()%>/products">Products</a>                         
                    </div>
                </div>
            </div>
        </nav>-->   

        <div class="row">
            <div class="col-lg-3 d-flex "> 
                <div class="flex-column flex-shrink-0 p-3 text-white" style="height: 100vh;flex-grow: 1;background-color: #060522;">
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
                    <!--<div class="dropdown">
                        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
                            <strong>Admin</strong>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
                            <li><a class="dropdown-item" href="#">New project...</a></li>
                            <li><a class="dropdown-item" href="#">Settings</a></li>
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><hr class="dropdown-divider"></li>
                            <li><a class="dropdown-item" href="#">Sign out</a></li>
                        </ul>
                    </div>-->
                </div>
            </div>  

    </body>
</html>
