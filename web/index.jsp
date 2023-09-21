<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
        <script src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700,900|Open+Sans:400,700,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900|Lora:400,700,900" rel="stylesheet">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <title>ALT Solutions</title>
    </head>
    <style>
        #scrollToTop {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 40px;
            height: 40px;
            background-color: #c4092e;
            color: #fff;
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            z-index: 9999;
        }

        #scrollToTop:hover {
            background-color: #333;
        }
    </style>

    <body>
        <div class="hero_bg">
            <!-- LOGO & NAV BAR -->
            <header>            

                <%@include file="NavBar.jsp" %>

            </header>
            <!--LOGO END-->

            <!-- LOADER -->
            <%@include file="loader.jsp" %>
            <!-- LOADER END-->

            <!-- HERO SECTION -->
            <section id="hero" class="hero">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 order-sm-1 order-lg-2 mb-5">                 
                            <div id="carouselExample" class="carousel slide" data-bs-ride="carousel">
                                <div class="carousel-indicators">
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                </div>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <center><img src="css/img/carousel-item-1.png" class="side-img d-block" alt="..." width="478" height="268"></center>
                                    </div>
                                    <div class="carousel-item">
                                        <center><img src="css/img/carousel-item-2.png" class="side-img d-block" alt="..." width="478" height="268"></center> 
                                    </div>
                                    <div class="carousel-item">
                                        <center><img src="css/img/carousel-item-3.png" class="side-img d-block" alt="..." height="268"></center>
                                    </div>
                                </div>
                                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Previous</span>
                                </button>
                                <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="visually-hidden">Next</span>
                                </button>                            
                            </div>
                        </div>

                        <div class="col-lg-6 order-sm-2 order-lg-1">
                            <div class="hero-caption lh-1 ms-lg-5 ms-sm-5">
                                <h1>Power-Up With</h1>
                                <h1><strong class="name"><span>ALT</span>SOLUTIONS</strong></h1>
                                <p class="catch-phrase mb-4 lead">Take your computer setup to the next level</p>
                                <div class="button mb-5">
                                    <a href="log_in.jsp"><button class="btn btn-outline-danger btn-sm me-3 mt-3 px-4 rounded-5">Log in</button></a>
                                    <a href="${pageContext.request.contextPath}/customer/create/form">
                                        <button class="btn btn-outline-danger btn-sm mt-3 px-4 rounded-5">Sign up</button>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <!-- HERO SECTION END-->

        <!-- SECOND -->
        <section id="second" class="second">
            <div class="container">
                <div class="row justify-content-center align-items-center">                   
                    <div class="side-img-left second-img mb-lg-5 col-lg-5">
                        <img src="css/img/altsolution-model.jpg" alt="" class="img-fluid rounded-4"/>
                    </div>
                    <div class="second_contents col-lg-5 mt-lg-5 p-lg-5">
                        <h3 class="mb-4">
                            Welcome to <strong class="name1"><span>ALT</span> SOLUTIONS,</strong>
                        </h3>
                        <p class="text lead">
                            Your ultimate destination for innovative desktop solutions. We
                            offer a wide range of products and exceptional customer service to
                            make your shopping experience seamless and enjoyable. Join us in
                            exploring the world of desktop technology today.
                        </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- SECOND END -->

        <!-- THIRD -->
        <section id="third" class="third">
            <div class="container">
                <div class="why-shop">
                    <p class="d-flex justify-content-center align-items-center mb-lg-2">WHY SHOP WITH US?</p>
                </div>
                <div class="card-group p-5" style="gap: 2rem">
                    <div class="card-color card rounded-4">
                        <img src="css/img/card-image-1.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="title-card card-title fw-bolder"><span>A</span>lternative</h5>
                            <p class="card-text my-4">In a state of ever-growing and rapidly evolving market for information technology and system integration, recognizing the need of an individual and a company that can offer high quality and take the lead on the market. </p>

                        </div>
                    </div>
                    <div class="card-color card rounded-4">
                        <img src="css/img/card-image-2.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="title-card card-title fw-bolder"><span>L</span>eading</h5>
                            <p class="card-text my-4">We build the necessary infrastructure to quickly and efficiently respond to customers, computer needs, guaranteeing speedy, friendly and competent, cost effective and intensive technical support.</p>

                        </div>
                    </div>
                    <div class="card-color card rounded-4">
                        <img src="css/img/card-image-3.png" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="title-card card-title fw-bolder"><span>T</span>echnology</h5>
                            <p class="card-text my-4">We are IT firm specializing in providing the most advance and reliable computer system and IT products with top-notch services and consulting capabilities to provide high quality and reliability, thus, insuring maximum productivity, profitability and peace of mind.</p>

                        </div>
                    </div>
                </div>
            </div>
            <!-- <center><button class="btn btn-outline-danger btn-md me-2 mt-4 px-4 rounded-5">Shop Now</button></center> -->
        </section>
        <!--THIRD END -->

        <!-- PARTNERS -->
        <section id="partners">
            <div class="container">
                <div class="partners py-lg-5 py-5">
                    <h1 class="fw-bold text-center">Our Partners</h1>
                    <marquee behavior="scroll">
                        <div class="row">                 
                            <div class="col">
                                <img src="css/img/partner1.png" alt="alt"/>     
                            </div>

                            <div class="col">
                                <img src="css/img/partner2.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner3.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner4.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner5.png" alt="alt"/>
                            </div>



                            <div class="col">
                                <img src="css/img/partner1.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner2.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner3.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner4.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner5.png" alt="alt"/>
                            </div>


                            <div class="col">
                                <img src="css/img/partner1.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner2.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner3.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner4.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner5.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner1.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner2.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner3.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner4.png" alt="alt"/>
                            </div>

                            <div class="col">
                                <img src="css/img/partner5.png" alt="alt"/>
                            </div>
                        </div>
                    </marquee>
                </div>
            </div>
        </section>
        <!-- PARTNERS END -->       

        <!-- FOOTER START -->
        <footer>

            <%@include file="footer.jsp" %>

        </footer>
        <!-- FOOTER END --> 
        <a id="scrollToTop" href="#"><i class="fas fa-arrow-up"></i></a>

        <!-- SCRIPTS -->
        <script>
            // Enable auto scrolling for the carousel
            $('.carousel').carousel({
                interval: 1000 // Adjust the interval (in milliseconds) as per your requirement
            });

            // Show or hide the scroll-to-top button based on scroll position
            $(window).scroll(function () {
                if ($(this).scrollTop() > 100) {
                    $('#scrollToTop').fadeIn();
                } else {
                    $('#scrollToTop').fadeOut();
                }
            });

            // Smooth scrolling to top on button click
            $('#scrollToTop').click(function () {
                $('html, body').animate({scrollTop: 0}, 'slow');
            });
        </script>

    </body>
</html>
