<%-- 
    Document   : Dropdown
    Created on : Jun 10, 2023, 4:22:27 PM
    Author     : LANCE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.min.css"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/animate.css"/>
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <style>
            .dropdown{
                position: absolute;
                z-index: 9999;
                top: 0;
                right: 0;
                background-color: red;
            }
        </style>
    </head>
    <body>
        <div class="dropdown">
            <!-- Use <i> element for the user icon -->
            <a class="btn text-white dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <i class="fa fa-user"></i>
            </a>

            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="index.jsp">Logout</a></li>
                <!--<li><a class="dropdown-item" href="log_in.jsp">Login</a></li>-->
                <!--<li><a class="dropdown-item" href="${pageContext.request.contextPath}/customer/create/form">Register</a></li>-->
            </ul>
        </div>
    </body>
</html>
