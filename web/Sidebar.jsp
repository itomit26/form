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
        <title>ALT Solutions - Home</title>
        <style>
            html, body {
                height: 100%;
                margin: 0;
                padding: 0;
                overflow-x: hidden !important;
                scroll-behavior: smooth;
            }
            .container {
                height: 100%;
                overflow-y: auto;
                position: relative;
            }
            .sidebar {
                min-height: 100vh;
                width: 0;
                position: fixed;
                top: 0;
                left: 0;
                background-color: #060522;
                color: white;
                transition: width 0.3s;
                overflow-y: auto;
                order: 1;
            }
            .sidebar-toggle {
                position: fixed;
                top: 0;
                left: 0;
                z-index: 9999;
                padding: 15px;
                color: white;
                cursor: pointer;
                background-color: red;
                order: 2;
                transition: left 0.3s; /* Add transition property */
                 min-height: 100%;
            }
            .sidebar-expanded {
                width: 17%;
                z-index: 999;
            }
            .sidebar-text {
                display: none;
            }
            .sidebar-expanded .sidebar-text {
                display: block;
            }
            .nav-link.active > span {
                color: red !important;
            }
            .carousel-item img {
                max-height: 100vh;
                object-fit: cover;
            }
            @media (max-width: 991.98px) {
                .sidebar-expanded {
                    width: 0;
                }
                .content {
                    margin-left: 0;
                }
            }
        </style>
    </head>
    <body>
        <div class="sidebar-toggle" id="sidebarToggle">
                <i class="fa fa-bars"></i>
            </div>
            <div class="sidebar d-flex flex-column justify-content-between" id="sidebar">
                <a href="/" class="d-flex align-items-center me-md-auto mt-4 text-white text-decoration-none">
                    <img src="css/img/alt solutions-logo.png" class="d-flex align-items-center" alt="" width="60" height="50">
                    <span class="fs-4 sidebar-text" style="font-family: 'Poppins', sans-serif;">Solutions</span>
                </a>
                <hr>
                <ul class="nav nav-pills flex-column mb-auto">
                    <li class="nav-item">
                        <a href="<%= request.getContextPath()%>/home" class="nav-link d-flex align-items-center">
                            <i class="fa fa-home me-1"></i>
                            <span class="sidebar-text">Home</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath()%>/products" class="nav-link d-flex align-items-center">
                            <i class="fa fa-plus-circle me-1" aria-hidden="true"></i>
                            <span class="sidebar-text">Products</span>
                        </a>
                    </li>
                    <li>
                        <a href="<%= request.getContextPath()%>/user" class="nav-link d-flex align-items-center">
                            <i class="fa fa-user-circle me-1" aria-hidden="true"></i>
                            <span class="sidebar-text">User</span>
                        </a>
                    </li>         
                </ul>
                <hr>
<!--                <div>
                    <a href="<%= request.getContextPath()%>/customer" class="nav nav-link d-flex align-items-center">
                        <i class="fa fa-user me-1" aria-hidden="true"></i>
                        <span class="sidebar-text">Customer</span>
                    </a>
                </div>-->
            </div>
             
    <script>
        $(document).ready(function() {
        $('#sidebarToggle').click(function() {
        $('#sidebar').toggleClass('sidebar-expanded');
        if ($('#sidebar').hasClass('sidebar-expanded')) {
        $('.sidebar-toggle').css('left', '17%');
        } else {
        $('.sidebar-toggle').css('left', '0');
        }
    });
});

    </script>
    </body>
</html>