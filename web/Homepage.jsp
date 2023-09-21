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
            .carousel-item img {
                max-height: 100vh;
                object-fit: cover;
            }
            h5{
                font-family: 'Poppins', sans-serif;
            }
            .card:hover{
                transform: translateY(-10px) !important;
                box-shadow: none;
            }
        </style>
    </head>
    <body>
        <!-- SIDEBAR START -->
        <%@include file="Sidebar.jsp" %>
        <!-- SIDEBAR END -->

        <!-- HERO CAROUSEL START -->
        <div class="content"> 
            <!-- DROPDOWN -->
            <%@include file="Dropdown.jsp" %>
            <!-- END -->

            <!-- LOADER -->
            <%@include file="loader.jsp" %>
            <!-- LOADER END-->

            <section class="hero-carousel">
                <div id="carouselExampleCaptions" class="carousel slide">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                                aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                                aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                                aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="css/img/hero-carousel-1.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-lg-8 text-center">
                                            <h5 class="text-white text-uppercase mb-3 animated slideInDown">Welcome to <span style="color: red;">ALT</span> Solutions</h5>
                                            <h2 class="display-3 text-white animated slideInDown mb-4">Elevate your Desktop Experience</h2>
                                            <p class="fs-5 fw-medium text-white mb-4 pb-2">Discover a range of innovative solutions at ALT Solutions, designed to enhance your desktop.</p>
                                            <a href="#products" class="btn btn-sm btn-outline-danger py-md-3 px-md-5 me-3 animated slideInDown">Our Products</a>
                                            <a href="#second" class="btn btn-sm btn-light py-md-3 px-md-5 animated slideInDown">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="css/img/hero-carousel-1.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-lg-8 text-center">
                                            <h1 class="display-3 text-white animated slideInDown mb-4">Unleash the Power of Technology</h1>
                                            <p class="fs-5 fw-medium text-white mb-4 pb-2">Experience a seamless desktop shopping experience with ALT Solutions. Discover a wide range of cutting-edge technology products designed to enhance your digital lifestyle.</p>
                                            <a href="#products" class="btn btn-sm btn-outline-danger py-md-3 px-md-5 me-3 animated slideInDown">Our Products</a>
                                            <a href="#second" class="btn btn-sm btn-light py-md-3 px-md-5 animated slideInDown">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="css/img/hero-carousel-1.jpg" class="d-block w-100" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <div class="container">
                                    <div class="row justify-content-center">
                                        <div class="col-12 col-lg-8 text-center">
                                            <h2 class="display-3 text-white animated slideInDown mb-4">Your Best Source for Technological Solutions</h2>
                                            <p class="fs-5 fw-medium text-white mb-4 pb-2">Unlock the potential of your desktop with our comprehensive selection of state-of-the-art technologies, empowering you to stay ahead in today's rapidly evolving digital landscape.</p>
                                            <a href="#products" class="btn btn-sm btn-outline-danger py-md-3 px-md-5 me-3 animated slideInDown">Our Products</a>
                                            <a href="#second" class="btn btn-sm btn-light py-md-3 px-md-5 animated slideInDown">About Us</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                            data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                            data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </section>
            <!-- HERO CAROUSEL END -->

            <!-- SECOND START -->
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

            <!-- PRODUCTS START -->
            <section class="Products" id="products">
                <div class="container-xxl py-5">
                    <div class="container">
                        <div class="row g-0 gx-5 align-items-center justify-content-center">
                            <div class="col-lg-6">
                                <div class="text-start mx-auto mb-5 animated slideInDown" data-wow-delay="0.1s">
                                    <h2 class="mb-3">Our Cutting Edge Products</h2>
                                    <p><span style="color: red;">ALT</span> Solutions Technology offers a diverse range of cutting-edge products to meet your technological needs.</p>
                                </div>
                            </div>
                            <div class="col-lg-6 text-start text-lg-end animated slideInRight" data-wow-delay="0.1s">
                                <ul class="nav nav-pills d-inline-flex justify-content-end mb-5">
                                    <li class="nav-item me-2">
                                        <a class="btn btn-outline-danger active" data-bs-toggle="pill" href="#tab-1">Featured</a>
                                    </li>
                                    <li class="nav-item me-2">
                                        <a class="btn btn-outline-danger" data-bs-toggle="pill" href="#tab-2">Sale</a>
                                    </li>
                                    <li class="nav-item me-0">
                                        <a class="btn btn-outline-danger" data-bs-toggle="pill" href="#tab-3">Best Selling</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="tab-content">
                            <div id="tab-1" class="tab-pane fade show p-0 active">
                                <div class="row g-4">
                                    <!-- PRODUCT 1 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-1.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Featured</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">17% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">P21,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG248Q</a>
                                                <small>23.8-inch Full HD gaming monitor with a 240Hz native refresh rate for fluid gameplays</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 1 END -->

                                    <!-- PRODUCT 2 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 2 END -->

                                    <!-- PRODUCT 3 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 3 END -->

                                    <!-- PRODUCT 4 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 4 END -->

                                    <!-- PRODUCT 5 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 5 END -->

                                    <!-- PRODUCT 6 -->
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PRODUCT 6 END -->

                                    <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.1s">
                                        <a class="btn btn-sm btn-outline-danger py-3 px-5" href="">Browse More Products</a>
                                    </div>
                                </div>
                            </div>

                            <div id="tab-2" class="tab-pane fade show p-0">
                                <div class="row g-4">
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-2.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Sale</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">20% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Swift 360Hz PG259QNR</a>
                                                <small>24.5-inch FHD (1920 x 1080) fast IPS gaming monitor with 360 Hz refresh rate designed for professional esports gamers</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 text-center">
                                        <a class="btn btn-outline-danger py-3 px-5" href="">Browse More Products</a>
                                    </div>
                                </div>
                            </div>
                            <div id="tab-3" class="tab-pane fade show p-0">
                                <div class="row g-4">
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                                        <div class="property-item rounded overflow-hidden">
                                            <div class="position-relative overflow-hidden">
                                                <a href=""><img class="img-fluid" src="css/img/product-image-3.jpg" alt=""></a>
                                                <div class="bg-danger rounded text-white position-absolute start-0 top-0 m-4 py-1 px-3">Best Selling</div>
                                                <div class="bg-danger rounded-top text-white position-absolute start-0 bottom-0 mx-4 pt-1 px-3">25% OFF</div>
                                            </div>
                                            <div class="p-4 pb-1">
                                                <h5 class="text-danger mb-3">$12,345</h5>
                                                <a class="d-block h5 mb-2" href="">ROG Strix XG27AQM</a>
                                                <small>High Dynamic Range (HDR) technology with professional color gamut delivers contrast and color performance that meets the DisplayHDR™ 400 certification</small>
                                            </div>
                                            <div class="d-flex border-top">
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-outline-dark"><i class="fa fa-window-restore me-2"></i>Find Similar</button></small>
                                                <small class="flex-fill text-center border-end py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-bag me-2"></i>Buy Now</button></small>
                                                <small class="flex-fill text-center py-2"><button class="btn btn-sm btn-danger"><i class="fa fa-shopping-cart me-2"></i>Add to Cart</button></small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12 text-center">
                                        <a class="btn btn-outline-danger py-3 px-5" href="">Browse More Products</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <!-- PRODUCTS END -->

        <!-- FOOTER START -->
        <footer>
            <%@include file="footer.jsp" %>
        </footer>
        <!-- FOOTER END -->

    </body>
</html>
