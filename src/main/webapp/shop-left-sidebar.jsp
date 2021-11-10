<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <meta name="robots" content="index, follow" />
    <title>Mioca - Handmade Goods eCommerce HTML Template</title>
    <meta name="description" content="Mioca - Handmade Goods eCommerce HTML Template" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Add site Favicon -->
    <link rel="shortcut icon" href="assets/images/favicon/favicon.ico" type="image/png">

    <!-- vendor css (Icon Font) -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.bundle.min.css" />
    <link rel="stylesheet" href="assets/css/vendor/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="assets/css/vendor/font.awesome.css" />

    <!-- plugins css (All Plugins Files) -->
    <link rel="stylesheet" href="assets/css/plugins/animate.css" />
    <link rel="stylesheet" href="assets/css/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/nice-select.css" />
    <link rel="stylesheet" href="assets/css/plugins/venobox.css" />

    <!-- Main Style -->
    <link rel="stylesheet" href="assets/css/style.css" />

</head>

<body>

<!-- Header Area Start -->
<jsp:include page="header.jsp" />
<!-- Header Area End -->

<!-- breadcrumb-area start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 text-center">
                <h2 class="breadcrumb-title">Shop</h2>
                <!-- breadcrumb-list start -->
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Shop</li>
                </ul>
                <!-- breadcrumb-list end -->
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb-area end -->



<!-- Shop Page Start  -->
<div class="shop-category-area pt-100px pb-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 order-lg-last col-md-12 order-md-first">
                <div class="sidebar-widget-image">
                    <a href="#" class="single-banner">
                        <img src="assets/images/banner/12.jpg" alt="">
                    </a>
                </div>
                <!-- Shop Top Area Start -->
                <div class="desktop-tab">
                    <div class="shop-top-bar d-flex">
                        <!-- Left Side End -->
                        <div class="shop-tab nav">
                            <a class="active" href="#shop-grid" data-bs-toggle="tab">
                                <i class="fa fa-th" aria-hidden="true"></i>
                            </a>
                            <a href="#shop-list" data-bs-toggle="tab">
                                <i class="fa fa-list" aria-hidden="true"></i>
                            </a>
                        </div>
                        <!-- Right Side Start -->
                        <div class="select-shoing-wrap d-flex align-items-center">
                            <div class="shot-product">
                                <p>Sort By:</p>
                            </div>
                            <div class="shop-select">
                                <select class="shop-sort">
                                    <!-- <option data-display="Default">Default</option> -->
                                    <option value="1" selected> Name, A to Z</option>
                                    <option value="2"> Name, Z to A</option>
                                    <option value="3"> Price, low to high</option>
                                    <option value="4"> Price, high to low</option>
                                </select>

                            </div>
                        </div>
                        <!-- Right Side End -->
                        <!-- Left Side start -->
                        <p class="compare-product">Product Compare <span>(0) </span></p>
                    </div>
                </div>
                <!-- Shop Top Area End -->

                <!-- Mobile shop bar -->
                <div class="shop-top-bar mobile-tab">
                    <!-- Left Side End -->
                    <div class="shop-tab nav d-flex justify-content-between">
                        <div class="shop-tab nav">
                            <a class="active" href="#shop-grid" data-bs-toggle="tab">
                                <i class="fa fa-th" aria-hidden="true"></i>
                            </a>
                            <a href="#shop-list" data-bs-toggle="tab">
                                <i class="fa fa-list" aria-hidden="true"></i>
                            </a>
                        </div>
                        <!-- Right Side Start -->
                        <div class="select-shoing-wrap d-flex align-items-center">
                            <div class="shot-product">
                                <p>Sort By:</p>
                            </div>
                            <div class="shop-select">
                                <select class="shop-sort">
                                    <option data-display="Default">Default</option>
                                    <option value="1"> Name, A to Z</option>
                                    <option value="2"> Name, Z to A</option>
                                    <option value="3"> Price, low to high</option>
                                    <option value="4"> Price, high to low</option>
                                </select>

                            </div>
                        </div>
                    </div>
                    <!-- Right Side End -->
                    <!-- Right Side Start -->
                    <div class="select-shoing-wrap d-flex align-items-center justify-content-between">
                        <p class="compare-product">Product Compare <span>(0) </span></p>
                    </div>
                </div>
                <!-- Right Side End -->
                <!-- Left Side start -->
                <!-- Mobile shop bar -->

                <!-- Shop Bottom Area Start -->
                <div class="shop-bottom-area">

                    <!-- Tab Content Area Start -->
                    <div class="row">
                        <div class="col">
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="shop-grid">
                                    <div class="row mb-n-30px">
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="200">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/1.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="new">New</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Hand-Made Garlic
                                                        Mortar
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="400">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/2.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/2.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="sale">-10%</span>
                                                            <span class="new">New</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Handmade Ceramic
                                                        Pottery
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                            <span class="old">$45.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                            <!-- Single Prodect -->
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="600">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/3.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/3.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="new">Sale</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Hand Painted
                                                        Bowls
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="800">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/4.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/5.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="sale">-5%</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Antique Wooden
                                                        Farm Large
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                            <span class="old">$40.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                            <!-- Single Prodect -->
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="200">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/6.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/6.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Handmade Jute
                                                        Basket
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6  mb-30px" data-aos="fade-up"
                                             data-aos-delay="400">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/7.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/7.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="new">New</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Knitting yarn &
                                                        crochet hook
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                            <!-- Single Prodect -->
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="600">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/8.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/8.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="sale">-8%</span>
                                                            <span class="new">New</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">David Head
                                                        Portraits
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                            <span class="old">$44.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="800">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/9.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/10.jpg"
                                                             alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="new">Sale</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">solid wood
                                                        cherry paddle
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                            <!-- Single Prodect -->
                                        </div>
                                        <div class="col-lg-4 col-md-6 col-sm-6 col-xs-6 mb-30px" data-aos="fade-up"
                                             data-aos-delay="800">
                                            <!-- Single Prodect -->
                                            <div class="product">
                                                <div class="thumb">
                                                    <a href="single-product.jsp" class="image">
                                                        <img src="assets/images/product-image/1.jpg"
                                                             alt="Product" />
                                                        <img class="hover-image"
                                                             src="assets/images/product-image/1.jpg" alt="Product" />
                                                    </a>
                                                    <span class="badges">
                                                            <span class="new">New</span>
                                                        </span>
                                                    <div class="actions">
                                                        <a href="wishlist.jsp" class="action wishlist"
                                                           title="Wishlist"><i class="pe-7s-like"></i></a>
                                                        <a href="#" class="action quickview"
                                                           data-link-action="quickview" title="Quick view"
                                                           data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                                                class="pe-7s-look"></i></a>
                                                        <a href="compare.jsp" class="action compare"
                                                           title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                    </div>
                                                </div>
                                                <div class="content">
                                                        <span class="ratings">
                                                            <span class="rating-wrap">
                                                                <span class="star" style="width: 100%"></span>
                                                            </span>
                                                            <span class="rating-num d-none">( 5 Review )</span>
                                                        </span>
                                                    <h5 class="title"><a href="single-product.jsp">Hand-Made Garlic
                                                        Mortar
                                                    </a>
                                                    </h5>
                                                    <span class="price">
                                                            <span class="new">$38.50</span>
                                                        </span>
                                                </div>
                                                <button title="Add To Cart" class=" add-to-cart">Add
                                                    To Cart</button>
                                            </div>
                                            <!-- Single Prodect -->
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="shop-list">
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/1.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/1.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="new">New</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 100%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 5 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Hand-Made Garlic
                                                            Mortar
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/2.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/2.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="sale">-10%</span>
                                                                <span class="new">New</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 80%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 4 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Handmade Ceramic
                                                            Pottery
                                                        </a>
                                                        </h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                                <span class="old">$48.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/3.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/3.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="sale">-7%</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 0%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 0 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Hand Painted
                                                            Bowls
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                                <span class="old">$45.00</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/4.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/4.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="new">Sale</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 70%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 3.5 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Antique Wooden
                                                            Farm Large
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/5.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/5.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="sale">-5%</span>
                                                                <span class="new">New</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 100%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 5 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Handmade Jute
                                                            Basket
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                                <span class="old">$45.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/6.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/6.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 100%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 5 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Knitting yarn &
                                                            crochet hook
                                                        </a> </h5>

                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/7.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/7.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 80%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 4 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">David Head
                                                            Portraits
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/8.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/8.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="new">Sale</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 60%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 3 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">solid wood
                                                            cherry paddle
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="shop-list-wrapper">
                                        <div class="row">
                                            <div class="col-md-5 col-lg-5 col-xl-4">
                                                <div class="product">
                                                    <div class="thumb">
                                                        <a href="single-product.jsp" class="image">
                                                            <img src="assets/images/product-image/9.jpg"
                                                                 alt="Product" />
                                                            <img class="hover-image"
                                                                 src="assets/images/product-image/9.jpg"
                                                                 alt="Product" />
                                                        </a>
                                                        <span class="badges">
                                                                <span class="new">Sale</span>
                                                            </span>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7 col-lg-7 col-xl-8">
                                                <div class="content-desc-wrap">
                                                    <div class="content">
                                                            <span class="ratings">
                                                                <span class="rating-wrap">
                                                                    <span class="star" style="width: 60%"></span>
                                                                </span>
                                                                <span class="rating-num d-none">( 3 Review )</span>
                                                            </span>
                                                        <h5 class="title"><a href="single-product.jsp">Hand-Made Garlic
                                                            Mortar
                                                        </a></h5>
                                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                                                            sed do eiusmodol tempor incididunt ut labore et dolore
                                                            magna aliqua. Ut enim ad minim veni quis nostrud
                                                            exercitation ullamco laboris </p>
                                                    </div>
                                                    <div class="box-inner">
                                                            <span class="price">
                                                                <span class="new">$38.50</span>
                                                            </span>
                                                        <div class="actions">
                                                            <a href="wishlist.jsp" class="action wishlist"
                                                               title="Wishlist"><i class="pe-7s-like"></i></a>
                                                            <a href="#" class="action quickview"
                                                               data-link-action="quickview" title="Quick view"
                                                               data-bs-toggle="modal"
                                                               data-bs-target="#exampleModal"><i
                                                                    class="pe-7s-search"></i></a>
                                                            <a href="compare.jsp" class="action compare"
                                                               title="Compare"><i class="pe-7s-refresh-2"></i></a>
                                                        </div>
                                                        <button title="Add To Cart" class=" add-to-cart">Add
                                                            To Cart</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Tab Content Area End -->

                    <!--  Pagination Area Start -->
                    <div class="pro-pagination-style text-center text-lg-end" data-aos="fade-up" data-aos-delay="200">
                        <div class="pages">
                            <ul>
                                <li class="li"><a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                                </li>
                                <li class="li"><a class="page-link" href="#">1</a></li>
                                <li class="li"><a class="page-link active" href="#">2</a></li>
                                <li class="li"><a class="page-link" href="#">3</a></li>
                                <li class="li"><a class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--  Pagination Area End -->
                </div>
                <!-- Shop Bottom Area End -->
            </div>
            <!-- Sidebar Area Start -->
            <div class="col-lg-3 order-lg-first col-md-12 order-md-last">
                <div class="shop-sidebar-wrap">
                    <!-- Sidebar single item -->
                    <div class="sidebar-widget">
                        <h4 class="sidebar-title">Categories</h4>
                        <div class="sidebar-widget-category">
                            <ul>
                                <li>
                                    <a href="#" class="selected m-0">
                                        <i class="fa fa-angle-right"></i>
                                        All
                                        <span>(${allQuantityProduct})</span>
                                    </a>
                                </li>
                                <c:forEach var="item" items="${categoriesShopDTOList}">
                                    <li>
                                        <a href="#" class="">
                                            <i class="fa fa-angle-right"></i>
                                            ${item.getName()}
                                        <span>(${item.getSize()})</span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- Sidebar single item -->
                    <div class="sidebar-widget">
                        <h4 class="sidebar-title">Color</h4>
                        <div class="sidebar-widget-color">
                            <ul>
                                <li>
                                    <a href="#" class="selected m-0">
                                        <i class="fa fa-angle-right"></i>
                                        All
                                        <span>(${allQuantityProduct})</span>
                                    </a>
                                </li>
                                <c:forEach var="item" items="${colorShopDTOList}">
                                    <li>
                                        <a href="#" class="">
                                        <i class="fa fa-angle-right"></i>
                                        ${item.getName()}
                                        <span>(${item.getSize()})</span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- Sidebar single item -->
                    <div class="sidebar-widget mt-8">
                        <h4 class="sidebar-title">Price Filter</h4>
                        <div class="price-filter">
                            <div class="price-slider-amount">
                                <input type="text" id="amount" class="p-0 h-auto lh-1" name="price"
                                       placeholder="Add Your Price" />
                            </div>
                            <div id="slider-range"></div>
                        </div>
                    </div>
                    <!-- Sidebar single item -->
                    <div class="sidebar-widget-image ">
                        <a href="#" class="single-banner">
                            <img src="assets/images/banner/11.jpg" alt="">
                        </a>
                    </div>
                    <!-- Sidebar single item -->
                    <div class="sidebar-widget tag m-0">
                        <h4 class="sidebar-title">Tags</h4>
                        <div class="sidebar-widget-tag">
                            <ul>
                                <c:forEach var="item" items="${tagShopDTOList}">
                                    <li><a href="#">${item.getName()}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <!-- Sidebar single item -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Page End  -->

<!-- Footer Area Start -->
<jsp:include page="footer.jsp" />
<!-- Footer Area End -->

<!-- Modal -->
<div class="modal modal-2 fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px">
                        <!-- Swiper -->
                        <div class="swiper-container gallery-top">
                            <div class="swiper-slide">
                                <img class="img-responsive m-auto"
                                     src="assets/images/product-image/zoom-image/1.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-xs-12" data-aos="fade-up" data-aos-delay="200">
                        <div class="product-details-content quickview-content">
                            <h2>Hand-Made Garlic Mortar</h2>
                            <div class="pricing-meta">
                                <ul class="d-flex">
                                    <li class="new-price">$20.90</li>
                                    <li class="old-price"><del>$30.90</del></li>
                                </ul>
                            </div>
                            <div class="pro-details-rating-wrap">
                                <div class="rating-product">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                                <span class="read-review"><a class="reviews" href="#">( 2 Review )</a></span>
                            </div>
                            <div class="stock mt-30px">
                                <span class="avallabillty">Availability: <span class="in-stock"><i
                                        class="fa fa-check"></i>In Stock</span></span>
                            </div>

                            <div class="color-group mt-30px">
                                <a id="color-1" href="#" class="color-block bg-warning" ></a>

                                <a id="color-2" href="#" class="color-block bg-danger" onclick="onClickColor(this.id);"></a>

                                <a id="color-3" href="#" class="color-block bg-success" onclick="onClickColor(this.id);"></a>

                                <a id="color-4" href="#" class="color-block bg-info" onclick="onClickColor(this.id);"></a>

                                <a id="color-5" href="#" class="color-block bg-dark" onclick="onClickColor(this.id);"></a>
                            </div>
                            <p class="mt-20px mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                eiusmodol tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni
                                nostrud exercitation ullamco laboris </p>
                            <div class="pro-details-quality">
                                <div class="cart-plus-minus">
                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1" />
                                </div>
                                <div class="pro-details-cart">
                                    <button class="add-cart"> Add To
                                        Cart</button>
                                </div>
                                <div class="pro-details-compare-wishlist pro-details-wishlist ">
                                    <a href="wishlist.jsp"><i class="pe-7s-like"></i></a>
                                </div>
                            </div>
                            <div class="pro-details-categories-info pro-details-same-style d-flex">
                                <span>Categories: </span>
                                <ul class="d-flex">
                                    <li>
                                        <a href="#">Handmade, </a>
                                    </li>
                                    <li>
                                        <a href="#">Furniture, </a>
                                    </li>
                                    <li>
                                        <a href="#">Decore</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="pro-details-social-info pro-details-same-style d-flex">
                                <span>Share: </span>
                                <ul class="d-flex">
                                    <li>
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-google"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-youtube"></i></a>
                                    </li>
                                    <li>
                                        <a href="#"><i class="fa fa-instagram"></i></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="payment-img">
                                <a href="#"><img src="assets/images//icons/payment.png" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->

<!-- Global Vendor, plugins JS -->

<!-- Vendor JS -->
<script src="assets/js/vendor/jquery-3.5.1.min.js"></script>

<script src="assets/js/vendor/bootstrap.bundle.min.js"></script>
<script src="assets/js/vendor/jquery-migrate-3.3.0.min.js"></script>
<script src="assets/js/vendor/modernizr-3.11.2.min.js"></script>

<!--Plugins JS-->
<script src="assets/js/plugins/swiper-bundle.min.js"></script>
<script src="assets/js/plugins/jquery-ui.min.js"></script>
<script src="assets/js/plugins/jquery.nice-select.min.js"></script>
<script src="assets/js/plugins/countdown.js"></script>
<script src="assets/js/plugins/scrollup.js"></script>
<script src="assets/js/plugins/jquery.zoom.min.js"></script>
<script src="assets/js/plugins/venobox.min.js"></script>

<!-- Main Js -->
<script src="assets/js/main.js"></script>
</body>

</html>