<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html lang="zh-tw">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>iPet.com - 新增獸醫院資料</title>


    <!-- css -->
    <!-- <link rel="stylesheet" href="vendor/bootstrap-5.1.0-dist/css/bootstrap.csss"> -->
    <link rel="stylesheet" href="vendor/bootstrap-5.1.0-dist/css/bootstrap-grid.css">
    <!-- <link rel="stylesheet" href="vendor/zay_shop/css/templatemo.css"> -->
    <link rel="stylesheet" href="asset/css/bootstrap-customized.css">
    <link rel="stylesheet" href="asset/css/custom.css">
    <link rel="stylesheet" href="asset/css/header.css">
    <link rel="stylesheet" href="asset/css/navbar.css">
    <link rel="stylesheet" href="asset/css/carousel.css">
    <link rel="stylesheet" href="asset/css/gap.css">
    <link rel="stylesheet" href="asset/css/diary.css">
    <link rel="stylesheet" href="asset/css/good-to-share.css">
    <link rel="stylesheet" href="asset/css/footer.css">

    <!-- js -->
    <script src="vendor/bootstrap-5.1.0-dist/js/bootstrap.bundle.js"></script>
    <script src="vendor/zay_shop/js/jquery-1.11.0.min.js"></script>
    <script src="vendor/zay_shop/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="vendor/zay_shop/js/templatemo.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/masonry-layout@4.2.2/dist/masonry.pkgd.min.js"
        integrity="sha384-GNFwBvfVxBkLMJpYMOABq3c+d3KnQxudP/mGPkzpZSTYykLBNsZEnG2D9G/X/+7D" crossorigin="anonymous"
        async></script>

    <!-- fonts -->
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">

    <!-- bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">


</head>

<body>
    <div id="admin-pet-hospital-add">
        <!-- Fixed Top Starts  -->
        <div id="fixed-top " class="fixed-top shadow-sm">
            <!-- Header Starts -->
            <header id="header" class="py-2 bg-primary text-white">
                <div id="header-container" class="container">
                    <div id="header-content" class="d-flex flex-wrap align-items-center justify-content-between">

                        <!-- Brand Label Starts -->
                        <a id="brand-label" class="navbar-brand text-white d-inline-flex align-items-center py-0"
                            href="home_page.html"><img id="brand-logo" class="me-2"
                                src="asset/images/brand/favicon.png" />iPet.com</a>
                        <!-- Brand Label Ends -->


                        <!-- Shopping Cart Button & User Button Starts -->
                        <div class="text-end d-inline-flex">

                            <!-- Shopping Cart Button Starts -->
                            <div id="shoppingCart-button">
                                <button class="btn btn-light" type="button"><svg xmlns="http://www.w3.org/2000/svg"
                                        width="16" height="16" fill="currentColor" class="bi bi-bag-fill"
                                        viewBox="0 0 16 16">
                                        <path
                                            d="M8 1a2.5 2.5 0 0 1 2.5 2.5V4h-5v-.5A2.5 2.5 0 0 1 8 1zm3.5 3v-.5a3.5 3.5 0 1 0-7 0V4H1v10a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V4h-3.5z" />
                                    </svg></button>
                            </div>
                            <!-- Shopping Cart Button Ends -->

                            <!-- User Button Starts -->
                            <div id="user-button" class="dropdown">
                                <button class="btn btn-light dropdown-toggle" type="button" id="user-dropdown"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor"
                                        class="bi bi-person-fill" viewBox="0 0 16 16">
                                        <path
                                            d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                    </svg>
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="user-dropdown">
                                    <li>
                                        <h6 class="dropdown-header font-weight-bolder">會員中心</h6>
                                    </li>
                                    <li><a class="dropdown-item" href="#">我的日記</a></li>
                                    <li><a class="dropdown-item" href="#">會員資料管理</a></li>
                                    <li><a class="dropdown-item" href="#">其他功能</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">登出</a></li>
                                </ul>
                            </div>
                            <!-- User Button Ends -->
                        </div>
                        <!-- Shopping Cart & User Button Ends -->

                    </div>
                </div>
            </header>
            <!-- Header Ends -->

            <!-- Top Navbar Starts -->
            <nav id="top-navbar" class="navbar navbar-expand-lg navbar-light bg-white" aria-label="Top Navbar">

                <div id="top-navbar-container" class="container px-3">
                    <div style="width:0;"></div>

                    <!-- Hamburger Menu Starts -->
                    <button id="navbar-toggler" class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#top-navbar-navs" aria-controls="top-navbar-navs" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse align-items-center
            justify-content-between" id="top-navbar-navs">

                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item me-sm-0 me-lg-2" id="home-page">
                                <a id="homepage" class="nav-link active pl-sm-2" aria-current="page"
                                    href="home_page.html">首頁</a>
                            </li>
                            <li class="nav-item dropdown me-sm-0 me-lg-2" id="read-information">
                                <a class="nav-link active dropdown-toggle pl-sm-2" href="#"
                                    id="dropdown-read-information" data-bs-toggle="dropdown"
                                    aria-expanded="false">資訊閱讀</a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown-read-information">
                                    <li><a id="whats-new" class="dropdown-item" href="#">最新消息</a></li>
                                    <li><a id="health-of-pet" class="dropdown-item" href="#">寵物健康</a></li>
                                    <li><a id="good-to-share" class="dropdown-item" href="#">好康分享</a></li>
                                </ul>
                            </li>


                            <li class="nav-item dropdown me-sm-0 me-lg-2" id="adopt-seek">
                                <a class="nav-link active dropdown-toggle pl-sm-2" href="#" id="dropdown-adopt-seek"
                                    data-bs-toggle="dropdown" aria-expanded="false">領養 / 協尋</a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown-adopt-seek">
                                    <li><a id="public-adoption" class="dropdown-item" href="#">公立領養</a></li>
                                    <li><a id="general-adoption" class="dropdown-item" href="#">一般領養</a></li>
                                    <li><a id="seek" class="dropdown-item" href="#">走失協尋</a></li>
                                </ul>
                            </li>


                            <li class="nav-item dropdown me-sm-0 me-lg-2">
                                <a class="nav-link active dropdown-toggle pl-sm-2" href="#" id="dropdown-shop"
                                    data-bs-toggle="dropdown" aria-expanded="false">寵物用品購買</a>
                                <ul class="dropdown-menu" aria-labelledby="dropdown-shop">
                                    <li><a id="cat" class="dropdown-item" href="#">貓</a></li>
                                    <li><a id="dog" class="dropdown-item" href="#">狗</a></li>
                                    <li><a id="bird" class="dropdown-item" href="#">鳥</a></li>
                                    <li><a id="fish" class="dropdown-item" href="#">魚</a></li>
                                    <li><a id="others" class="dropdown-item" href="#">其他</a></li>
                                </ul>
                            </li>

                            <li class="nav-item  me-sm-0 me-lg-2">
                                <a id="hospital" class="nav-link active pl-sm-2" href="#">動物醫院查詢</a>
                            </li>

                        </ul>

                        <form class="form-inline">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-warning my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </div>
                    <!-- Hamburger Menu Ends -->

                </div>
            </nav>
            <!-- Top Navbar Ends -->
        </div>
        <!-- Fixed Top Ends  -->

        <!-- 要給一個gap，不然 Banner Carousel 會被 Fixed Top 蓋住一部分 -->

        <div id="gap" class="gap-lg-120 gap-md-1420 gap-sm-120 gap-120 bg-white"></div>


        <!-- Banner Carousel Starts -->
        <div id="banner-carousel" class="carousel slide" data-bs-ride="carousel">
            <ol class="carousel-indicators">
                <li data-bs-target="#banner-carousel" data-bs-slide-to="0" class="active"></li>
                <li data-bs-target="#banner-carousel" data-bs-slide-to="1"></li>
                <li data-bs-target="#banner-carousel" data-bs-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="asset/images/big-cat2.jpg" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left align-self-center">
                                    <h1 class="h1 text-success"><b>Zay</b> eCommerce</h1>
                                    <h3 class="h2">Tiny and Perfect eCommerce Template</h3>
                                    <p>
                                        Zay Shop is an eCommerce HTML5 CSS template with latest version of Bootstrap 5
                                        (beta
                                        1).
                                        This template is 100% free provided by <a rel="sponsored" class="text-success"
                                            href="https://templatemo.com" target="_blank">TemplateMo</a> website.
                                        Image credits go to <a rel="sponsored" class="text-success"
                                            href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>,
                                        <a rel="sponsored" class="text-success" href="https://unsplash.com/"
                                            target="_blank">Unsplash</a> and
                                        <a rel="sponsored" class="text-success" href="https://icons8.com/"
                                            target="_blank">Icons 8</a>.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="asset/images/big-dog4.jpg" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h1 class="h1">Proident occaecat</h1>
                                    <h3 class="h2">Aliquip ex ea commodo consequat</h3>
                                    <p>
                                        You are permitted to use this Zay CSS template for your commercial websites.
                                        You are <strong>not permitted</strong> to re-distribute the template ZIP file in
                                        any
                                        kind of template collection websites.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="container">
                        <div class="row p-5">
                            <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                                <img class="img-fluid" src="asset/images/big-raccoon.jpg" alt="">
                            </div>
                            <div class="col-lg-6 mb-0 d-flex align-items-center">
                                <div class="text-align-left">
                                    <h1 class="h1">Repr in voluptate</h1>
                                    <h3 class="h2">Ullamco laboris nisi ut </h3>
                                    <p>
                                        We bring you 100% free CSS templates for your websites.
                                        If you wish to support TemplateMo, please make a small contribution via PayPal
                                        or
                                        tell your friends about our website. Thank you.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#banner-carousel" role="button"
                data-bs-slide="prev">

                <i class="bi bi-chevron-left"></i>
            </a>
            <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#banner-carousel" role="button"
                data-bs-slide="next">
                <i class="bi bi-chevron-right"></i>
            </a>
        </div>
        <!-- Banner Ends -->



        <!-- 這裡要再加gap，調整版面視覺用，顏色自己選 -->
        <div id="gap" class="gap-lg-120 gap-md-50 gap-sm-10 gap-0 bg-warning">

        </div>

        <!-- Read Information - Diary Starts -->
        <div id="diary" class="bg-warning">
            <div id="diary-container" class="container">
                <div class="align-items-center justify-content-center pt-5 pb-5">
                    <h3 id="area-title" class="text-center font-weight-bold">新增獸醫院資料</h3>
                </div>
                
                <form>
                    <div class="container">
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">醫院名稱</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">區域</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">地址</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                      <label for="exampleInputEmail1" class="form-label">電話</label>
                      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                    </div>
                    <button type="submit" class="btn btn-primary">刊登</button>
                    <a href="獸醫院管理.html" class="btn btn-primary">回上一頁</a>
                  </div>
                  </form>
              
                  </div>
                </div>
              </div>
              </div>

            </div>
        </div> 

        <div id="gap" class="gap-lg-120 gap-md-50 gap-sm-10 gap-0 bg-warning"></div>

        <!-- <div id="gap" class="gap-lg-120 gap-md-50 gap-sm-10 gap-0 bg-danger"></div> -->


        <!-- Read Information - Diary Ends -->

        <!-- Read Information - Good to Share Starts -->


        
        <!-- Read Information - Good to Share Ends -->
        <!-- <div id="gap" class="gap-lg-120 gap-md-50 gap-sm-10 gap-0 bg-danger"></div>
    </div> -->


    <!-- Footer Starts -->
    <div class="bg-primary">
        <div class="container">
            <div id="gap" class="gap-30 bg-primary"></div>
            <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 border-top">
                <p class="col-md-4 mb-0 text-light">&copy; 2021 Company, Inc</p>
                <ul class="nav col-md-8 mt-sm-2 mt-2 justify-content-end d-flex align-items-center">
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">首頁</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">會員中心</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">退換貨</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">Q&A</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">關於我們</a></li>
                    <li class="nav-item"><a href="#" class="nav-link px-2 text-light">聯絡我們</a></li>
                </ul>
            </footer>
        </div>
    </div>
    <!-- Footer Ends -->

    <!-- Chatting Room Starts -->

    <!-- Chatting Room Ends -->


    <!-- Back to Top Button Starts -->

    <!-- Back to Top Button Ends -->
    
</body>

</html>
