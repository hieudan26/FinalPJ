<%@ page import="Utils.SingletonServiceUltils" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
    <link href ="assets/css/vendor/bootstrap.bundle.min.css" rel="stylesheet">
    <link href ="assets/css/vendor/pe-icon-7-stroke.css" rel="stylesheet">
    <link href ="assets/css/vendor/font.awesome.css" rel="stylesheet">


    <!-- plugins css (All Plugins Files) -->
    <link href ="assets/css/plugins/animate.css" rel="stylesheet">
    <link href ="assets/css/plugins/swiper-bundle.min.css" rel="stylesheet">
    <link href ="assets/css/plugins/jquery-ui.min.css" rel="stylesheet">
    <link href ="assets/css/plugins/nice-select.css" rel="stylesheet">
    <link href ="assets/css/plugins/venobox.css" rel="stylesheet">

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css" />
    <link rel="stylesheet" href="assets/css/style.min.css"> -->

    <!-- Main Style -->
    <link href ="assets/css/style.css" rel="stylesheet">

</head>

<body>
<!-- Header Area Start -->
<jsp:include page="header.jsp" />
<!-- Header Area End -->
<div class="offcanvas-overlay"></div>

<!-- OffCanvas Wishlist Start -->
<div id="offcanvas-wishlist" class="offcanvas offcanvas-wishlist">
    <div class="inner">
        <div class="head">
            <span class="title">Wishlist</span>
            <button class="offcanvas-close">×</button>
        </div>
        <div class="body customScroll">
            <ul class="minicart-product-list">
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/1.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Hand-Made Garlic Mortar</a>
                        <span class="quantity-price">1 x <span class="amount">$21.86</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/2.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Handmade Ceramic Pottery</a>
                        <span class="quantity-price">1 x <span class="amount">$13.28</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/3.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Hand Painted Bowls</a>
                        <span class="quantity-price">1 x <span class="amount">$17.34</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="foot">
            <div class="buttons">
                <a href="wishlist.jsp" class="btn btn-dark btn-hover-primary mt-30px">view wishlist</a>
            </div>
        </div>
    </div>
</div>
<!-- OffCanvas Wishlist End -->
<!-- OffCanvas Cart Start -->
<div id="offcanvas-cart" class="offcanvas offcanvas-cart">
    <div class="inner">
        <div class="head">
            <span class="title">Cart</span>
            <button class="offcanvas-close">×</button>
        </div>

        <div class="body customScroll">
            <ul class="minicart-product-list">
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/1.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Hand-Made Garlic Mortar</a>
                        <span class="quantity-price">1 x <span class="amount">$18.86</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/2.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Handmade Ceramic Pottery</a>
                        <span class="quantity-price">1 x <span class="amount">$43.28</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
                <li>
                    <a href="single-product.jsp" class="image"><img src="assets/images/product-image/3.jpg"
                                                                    alt="Cart product Image"></a>
                    <div class="content">
                        <a href="single-product.jsp" class="title">Hand Painted Bowls</a>
                        <span class="quantity-price">1 x <span class="amount">$37.34</span></span>
                        <a href="#" class="remove">×</a>
                    </div>
                </li>
            </ul>
        </div>
        <div class="foot">
            <div class="buttons mt-30px">
                <a href="cart.jsp" class="btn btn-dark btn-hover-primary mb-30px">view cart</a>
                <a href="checkout.jsp" class="btn btn-outline-dark current-btn">checkout</a>
            </div>
        </div>
    </div>
</div>
<!-- OffCanvas Cart End -->

<!-- OffCanvas Menu Start -->
<div id="offcanvas-mobile-menu" class="offcanvas offcanvas-mobile-menu">
    <button class="offcanvas-close"></button>

    <div class="inner customScroll">

        <div class="offcanvas-menu mb-4">
            <ul>
                <li><a href="#"><span class="menu-text">Home</span></a>
                </li>
                <li><a href="about.jsp">About</a></li>

                <li><a href="shop-left-sidebar.jsp"><span class="menu-text">Shop</span></a>
                </li>
                <li><a href="coming-soon.jsp"><span class="menu-text">Blog</span></a>
                </li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
        </div>
        <!-- OffCanvas Menu End -->
        <div class="offcanvas-social mt-auto">
            <ul>
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
    </div>
</div>
<!-- OffCanvas Menu End -->

<!-- Hero/Intro Slider Start -->
<div class="section ">
    <div class="hero-slider swiper-container slider-nav-style-1 slider-dot-style-1">
        <!-- Hero slider Active -->
        <div class="swiper-wrapper">
            <!-- Single slider item -->
            <div class="hero-slide-item slider-height swiper-slide d-flex bg-color1"
                 data-bg-image="assets/images/slider-image/slider-bg-1.jpg">
                <div class="container align-self-center">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 align-self-center sm-center-view">
                            <div class="hero-slide-content slider-animated-1">
                                <h2 class="title-1">Best Handmade <br class="d-sm-none"> Goods</h2>
                                <span class="price">
                                    <span class="old"> <del>$25.00</del></span>
                                    <span class="new">- $18.00</span>
                                </span>
                                <a href="shop-left-sidebar.jsp" class="btn btn-primary m-auto text-uppercase">View
                                    Collection</a>
                            </div>
                        </div>
                        <div
                                class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex justify-content-center position-relative">
                            <div class="show-case">
                                <div class="hero-slide-image">
                                    <img src="assets/images/slider-image/slider-1.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single slider item -->
            <div class="hero-slide-item slider-height swiper-slide d-flex bg-color1"
                 data-bg-image="assets/images/slider-image/slider-bg-1.jpg">
                <div class="container align-self-center">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 align-self-center sm-center-view">
                            <div class="hero-slide-content slider-animated-1">
                                <h2 class="title-1">Best Handmade <br class="d-sm-none"> Goods</h2>
                                <span class="price">
                                    <span class="old"> <del>$25.00</del></span>
                                    <span class="new">- $18.00</span>
                                </span>
                                <a href="shop-left-sidebar.jsp" class="btn btn-primary m-auto text-uppercase">View
                                    Collection</a>
                            </div>
                        </div>
                        <div
                                class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex justify-content-center position-relative">
                            <div class="show-case">
                                <div class="hero-slide-image">
                                    <img src="assets/images/slider-image/slider-2.png" alt="" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination swiper-pagination-white"></div>
        <!-- Add Arrows -->
        <div class="swiper-buttons">
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </div>
</div>

<!-- Hero/Intro Slider End -->

<!-- Banner Area Start -->
<div class="banner-area pt-100px pb-100px">
    <div class="container">
        <div class="row">
            <div class="single-col">
                <div class="single-banner">
                    <img src="assets/images/banner/1.jpg" alt="">
                    <div class="banner-content">
                        <span class="category">Best Seller</span>
                        <span class="title">Flower Vase <br>
                            & Poot</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
            </div>
            <div class="single-col center-col">
                <div class="single-banner">
                    <img src="assets/images/banner/2.jpg" alt="">
                    <div class="banner-content">
                        <span class="category">Best Seller</span>
                        <span class="title">Wool Silk Dress <br>
                            & Offer 2021</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
            </div>
            <div class="single-col">
                <div class="single-banner">
                    <img src="assets/images/banner/3.jpg" alt="">
                    <div class="banner-content">
                        <span class="category">Best Seller</span>
                        <span class="title">Pen Holder<br>
                            & Poot</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner Area End -->
<!-- Product Area Start -->
<div class="product-area">
    <div class="container">
        <!-- Section Title & Tab Start -->
        <div class="row">
            <!-- Section Title Start -->
            <div class="col-12">
                <div class="section-title text-center mb-60px">
                    <h2 class="title">Popular Categories</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod incididunt ut labore
                        et dolore magna aliqua. </p>
                </div>
                <!-- Tab Start -->
                <div class="tab-slider swiper-container slider-nav-style-1 small-nav">
                    <ul class="product-tab-nav nav swiper-wrapper">
                        <c:forEach items="${categoriesEntityList}" var="categoriesEntity">
                            <li class="nav-item swiper-slide" onclick="onClickLoadData(${categoriesEntity.id}, 1);">
                                <a data-bs-toggle="tab" class="nav-link">
                                    <img src="<c:url value="assets/images/icons/fabric-icon.png" />" alt="">
                                    <span onclick="onChangeBG(this.id)" id="${categoriesEntity.id}"> ${categoriesEntity.name}</span>
                                </a>
                            </li>
                        </c:forEach>
                    </ul>
                    <!-- Add Arrows -->
                    <div class="swiper-buttons">
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
                <!-- Tab End -->
            </div>
            <!-- Section Title End -->

        </div>
        <!-- Section Title & Tab End -->

        <div class="row">
            <div class="col">
                <div class="tab-content mt-60px">
                    <!-- 1st tab start -->
                    <div class="tab-pane fade show active">
                        <div class="row" id="tab-data">
                            <%--respond--%>
                        </div>

                    </div>
                    <!-- 1st tab end -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Area End -->

<!-- Feature Area Srart -->
<div class="feature-area pt-100px">
    <div class="container">
        <div class="feature-wrapper">
            <div class="single-feture-col">
                <!-- single item -->
                <div class="single-feature">
                    <div class="feature-icon">
                        <img src="assets/images/icons/1.png" alt="">
                    </div>
                    <div class="feature-content">
                        <h4 class="title">Free Shipping</h4>
                        <span class="sub-title">Capped at $39 per order</span>
                    </div>
                </div>
            </div>
            <!-- single item -->
            <div class="single-feture-col ">
                <div class="single-feature">
                    <div class="feature-icon">
                        <img src="assets/images/icons/2.png" alt="">
                    </div>
                    <div class="feature-content">
                        <h4 class="title">Card Payments</h4>
                        <span class="sub-title">12 Months Installments</span>
                    </div>
                </div>
            </div>
            <!-- single item -->
            <div class="single-feture-col">
                <div class="single-feature">
                    <div class="feature-icon">
                        <img src="assets/images/icons/3.png" alt="">
                    </div>
                    <div class="feature-content">
                        <h4 class="title">Easy Returns</h4>
                        <span class="sub-title">Shop With Confidence</span>
                    </div>
                </div>
                <!-- single item -->
            </div>
        </div>
    </div>
</div>
<!-- Feature Area End -->


<!-- Deal Area Start -->
<div class="deal-area pb-100px pt-100px">
    <div class="container ">
        <div class="row">
            <div class="col-12">
                <div class="deal-inner deal-bg position-relative ptb-80px"
                     data-bg-image="assets/images/deal-img/deal-bg.jpg">
                    <div class="deal-wrapper">
                        <h3 class="title">Handmade Pen Holder <br>
                            & Offer Sale -20% </h3>
                        <span class="price">
                            <span class="old"> <del>$25.00</del></span>
                            <span class="new">- $18.00</span>
                        </span>
                        <a href="single-product-variable.jsp" class="btn btn-lg btn-primary">Explore now</a>
                    </div>
                    <div class="deal-image">
                        <img class="img-fluid" src="assets/images/deal-img/woman.png" alt="">
                        <div class="discount">
                            <h3>-20%</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Deal Area End -->

<!-- Product Area Start -->
<div class="product-area">
    <div class="container">
        <!-- Section Title & Tab Start -->
        <div class="row">
            <!-- Section Title Start -->
            <div class="col-12">
                <div class="section-title text-center m-0">
                    <h2 class="title">Bestsellers Items</h2>
                </div>
                <!-- Tab Start -->
                <div class="tab-slider nav-center">
                    <ul class="product-tab-nav nav justify-content-center align-items-center">
                        <c:set var = "a" scope = "session" value = "${1}"/>
                        <c:forEach items="${categoriesTop4EntityList}" var="item">
                            <li class="nav-item">
                                <c:choose>
                                    <c:when test="${categoriesTop4EntityList_firstIndex == item.getId()}">
                                        <a id="item-${item.id}" class="nav-link active" data-bs-toggle="tab" href="#tab${a}">
                                            <span>${item.name}</span>
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a id="item-${item.id}" class="nav-link" data-bs-toggle="tab" href="#tab${a}">
                                            <span>${item.name}</span>
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                            </li>
                            <c:set var = "a" scope = "session" value = "${a + 1}"/>
                        </c:forEach>
                    </ul>
                </div>
                <!-- Tab End -->
            </div>
            <!-- Section Title End -->

        </div>
        <!-- Section Title & Tab End -->

        <%--top4categories--%>
        <div class="row">
            <div class="col">
                <div class="tab-content mt-60px">
                    <!-- 1st tab start -->
                    <div class="tab-pane fade show active" id="tab1">
                        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
                            <div class="new-product-wrapper swiper-wrapper">
                                <!-- DATA -->
                                <c:forEach items="${Top8Product_categoriesTop4EntityList_tab1}" var="item">
                                    <div class="new-product-item swiper-slide">
                                        <!-- Single Prodect -->
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="singleproduct?productId=${item.getId()}" class="image">
                                                    <img src="${item.getImage()}" alt="Product" />
                                                    <img class="hover-image" src="${item.getImage()}"
                                                         alt="Product" />
                                                </a>
                                                <span class="badges">
                                                    <c:if test="${item.isProductStatus()}">
                                                        <span class="sale">-${item.getDiscount_percent()}%</span>
                                                    </c:if>
                                                    <c:forEach var="tag" items="${item.getTagsName()}">
                                                        <span class="new">${tag.toString().trim()}</span>
                                                    </c:forEach>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                                            class="pe-7s-like"></i></a>
                                                    <a onclick="onClickLoadData(${item.getId()}, 2)" href="#" class="action quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#exampleModal"><i class="pe-7s-look"></i></a>
                                                    <a href="compare.jsp" class="action compare" title="Compare"><i
                                                            class="pe-7s-refresh-2"></i></a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating-product">
                                                    <c:set var="star" scope="session" value="${item.getAvgReview()}" />
                                                    <c:forEach begin="1" end="${star}" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #ffde00"></i>
                                                    </c:forEach>

                                                    <c:forEach begin="${star + 1}" end="5" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #bcbebf"></i>
                                                    </c:forEach>
                                                </div>
                                                <h5 class="title"><a href="singleproduct?productId=${item.getId()}">${item.getName()}
                                                </a>
                                                </h5>
                                                <span class="price">
                                                    <c:choose>
                                                        <c:when test="${item.isProductStatus()}">
                                                            <span class="new">$${item.getDiscountPrice()}</span>
                                                            <span class="old">$${item.getRegularPrice()}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="new">$${item.getRegularPrice()}</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
<%--                                    window.location.href='/AddorCheckRedirectController?productId=${item.getId()}&amp;quantity=1&amp;colorId=${item.getColorsId().get(0)--%>
                                            <button onclick="onClickAddToCart(${item.getId()}, ${item.getQuantity()}, ${item.getColorsId().get(0)})" title="Add To Cart" class=" add-to-cart">Add
                                                To Cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 1st tab end -->
                    <!-- 2st tab start -->
                    <div class="tab-pane fade" id="tab2">
                        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
                            <div class="new-product-wrapper swiper-wrapper">
                                <!-- DATA -->
                                <c:forEach items="${Top8Product_categoriesTop4EntityList_tab2}" var="item">
                                    <div class="new-product-item swiper-slide">
                                        <!-- Single Prodect -->
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="singleproduct?productId=${item.getId()}" class="image">
                                                    <img src="${item.getImage()}" alt="Product" />
                                                    <img class="hover-image" src="${item.getImage()}"
                                                         alt="Product" />
                                                </a>
                                                <span class="badges">
                                                    <c:if test="${item.isProductStatus()}">
                                                        <span class="sale">-${item.getDiscount_percent()}%</span>
                                                    </c:if>
                                                    <c:forEach var="tag" items="${item.getTagsName()}">
                                                        <span class="new">${tag.toString().trim()}</span>
                                                    </c:forEach>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                                            class="pe-7s-like"></i></a>
                                                    <a onclick="onClickLoadData(${item.getId()}, 2)" href="#" class="action quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#exampleModal"><i class="pe-7s-look"></i></a>
                                                    <a href="compare.jsp" class="action compare" title="Compare"><i
                                                            class="pe-7s-refresh-2"></i></a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating-product">
                                                    <c:set var="star" scope="session" value="${item.getAvgReview()}" />
                                                    <c:forEach begin="1" end="${star}" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #ffde00"></i>
                                                    </c:forEach>

                                                    <c:forEach begin="${star + 1}" end="5" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #bcbebf"></i>
                                                    </c:forEach>
                                                </div>
                                                <h5 class="title"><a href="singleproduct?productId=${item.getId()}">${item.getName()}
                                                </a>
                                                </h5>
                                                <span class="price">
                                                    <c:choose>
                                                        <c:when test="${item.isProductStatus()}">
                                                            <span class="new">$${item.getDiscountPrice()}</span>
                                                            <span class="old">$${item.getRegularPrice()}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="new">$${item.getRegularPrice()}</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
                                            <button onclick="onClickAddToCart(${item.getId()}, ${item.getQuantity()}, ${item.getColorsId().get(0)})" title="Add To Cart" class=" add-to-cart">Add
                                                To Cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 2st tab end -->
                    <!-- 3st tab start -->
                    <div class="tab-pane fade" id="tab3">
                        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
                            <div class="new-product-wrapper swiper-wrapper">
                                <!-- DATA -->
                                <c:forEach items="${Top8Product_categoriesTop4EntityList_tab3}" var="item">
                                    <div class="new-product-item swiper-slide">
                                        <!-- Single Prodect -->
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="singleproduct?productId=${item.getId()}" class="image">
                                                    <img src="${item.getImage()}" alt="Product" />
                                                    <img class="hover-image" src="${item.getImage()}"
                                                         alt="Product" />
                                                </a>
                                                <span class="badges">
                                                    <c:if test="${item.isProductStatus()}">
                                                        <span class="sale">-${item.getDiscount_percent()}%</span>
                                                    </c:if>
                                                    <c:forEach var="tag" items="${item.getTagsName()}">
                                                        <span class="new">${tag.toString().trim()}</span>
                                                    </c:forEach>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                                            class="pe-7s-like"></i></a>
                                                    <a onclick="onClickLoadData(${item.getId()}, 2)" href="#" class="action quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#exampleModal"><i class="pe-7s-look"></i></a>
                                                    <a href="compare.jsp" class="action compare" title="Compare"><i
                                                            class="pe-7s-refresh-2"></i></a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating-product">
                                                    <c:set var="star" scope="session" value="${item.getAvgReview()}" />
                                                    <c:forEach begin="1" end="${star}" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #ffde00"></i>
                                                    </c:forEach>

                                                    <c:forEach begin="${star + 1}" end="5" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #bcbebf"></i>
                                                    </c:forEach>
                                                </div>
                                                <h5 class="title"><a href="singleproduct?productId=${item.getId()}">${item.getName()}
                                                </a>
                                                </h5>
                                                <span class="price">
                                                    <c:choose>
                                                        <c:when test="${item.isProductStatus()}">
                                                            <span class="new">$${item.getDiscountPrice()}</span>
                                                            <span class="old">$${item.getRegularPrice()}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="new">$${item.getRegularPrice()}</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
                                            <button onclick="onClickAddToCart(${item.getId()}, ${item.getQuantity()}, ${item.getColorsId().get(0)})" title="Add To Cart" class=" add-to-cart">Add
                                                To Cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 3st tab end -->
                    <!-- 4st tab start -->
                    <div class="tab-pane fade" id="tab4">
                        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
                            <div class="new-product-wrapper swiper-wrapper">
                                <!-- DATA -->
                                <c:forEach items="${Top8Product_categoriesTop4EntityList_tab4}" var="item">
                                    <div class="new-product-item swiper-slide">
                                        <!-- Single Prodect -->
                                        <div class="product">
                                            <div class="thumb">
                                                <a href="singleproduct?productId=${item.getId()}" class="image">
                                                    <img src="${item.getImage()}" alt="Product" />
                                                    <img class="hover-image" src="${item.getImage()}"
                                                         alt="Product" />
                                                </a>
                                                <span class="badges">
                                                    <c:if test="${item.isProductStatus()}">
                                                        <span class="sale">-${item.getDiscount_percent()}%</span>
                                                    </c:if>
                                                    <c:forEach var="tag" items="${item.getTagsName()}">
                                                        <span class="new">${tag.toString().trim()}</span>
                                                    </c:forEach>
                                                </span>
                                                <div class="actions">
                                                    <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                                            class="pe-7s-like"></i></a>
                                                    <a onclick="onClickLoadData(${item.getId()}, 2)" href="#" class="action quickview" data-link-action="quickview"
                                                       title="Quick view" data-bs-toggle="modal"
                                                       data-bs-target="#exampleModal"><i class="pe-7s-look"></i></a>
                                                    <a href="compare.jsp" class="action compare" title="Compare"><i
                                                            class="pe-7s-refresh-2"></i></a>
                                                </div>
                                            </div>
                                            <div class="content">
                                                <div class="rating-product">
                                                    <c:set var="star" scope="session" value="${item.getAvgReview()}" />
                                                    <c:forEach begin="1" end="${star}" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #ffde00"></i>
                                                    </c:forEach>

                                                    <c:forEach begin="${star + 1}" end="5" varStatus="loop" >
                                                        <i class="fa fa-star" style="color: #bcbebf"></i>
                                                    </c:forEach>
                                                </div>
                                                <h5 class="title"><a href="singleproduct?productId=${item.getId()}">${item.getName()}
                                                </a>
                                                </h5>
                                                <span class="price">
                                                    <c:choose>
                                                        <c:when test="${item.isProductStatus()}">
                                                            <span class="new">$${item.getDiscountPrice()}</span>
                                                            <span class="old">$${item.getRegularPrice()}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="new">$${item.getRegularPrice()}</span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </span>
                                            </div>
                                            <button onclick="onClickAddToCart(${item.getId()}, ${item.getQuantity()}, ${item.getColorsId().get(0)})" title="Add To Cart" class=" add-to-cart">Add
                                                To Cart</button>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                            <!-- Add Arrows -->
                            <div class="swiper-buttons">
                                <div class="swiper-button-next"></div>
                                <div class="swiper-button-prev"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 4st tab end -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Product Area End -->

<!-- Testimonial Area Start -->
<div class="banner-area-2">
    <div class="container">
        <div class="row m-0">
            <div class="col-md-6 p-0">
                <div class="single-banner nth-child-1">
                    <img src="assets/images/banner/4.jpg" alt="">
                    <div class="banner-content nth-child-1">
                        <span class="category">Best Seller</span>
                        <span class="title">Handmade Pot <br>
                            & Pen Holder</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6 p-0 ">
                <div class="single-banner nth-child-2 mb-lm-30px mt-lm-30px">
                    <img src="assets/images/banner/5.jpg" alt="">
                    <div class="banner-content nth-child-2">
                        <span class="category">Best Seller</span>
                        <span class="title">Wool Silk Pod <br>
                            -20% Off</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
                <div class="single-banner nth-child-3">
                    <img src="assets/images/banner/6.jpg" alt="">
                    <div class="banner-content nth-child-3">
                        <span class="category">Best Seller</span>
                        <span class="title">Handmade Plate <br>
                            -40 Off</span>
                        <a href="shop-left-sidebar.jsp" class="shop-link btn btn-primary text-uppercase">Shop
                            Now</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div style="margin-bottom: 50px;"></div>
</div>
<!-- Testimonial Area End -->


<!-- Footer Area Start -->
<jsp:include page="footer.jsp" />
<!-- Footer Area End -->

<!-- Search Modal Start -->
<div class="modal popup-search-style" id="searchActive">
    <button type="button" class="close-btn" data-bs-dismiss="modal"><span aria-hidden="true">&times;</span></button>
    <div class="modal-overlay">
        <div class="modal-dialog p-0" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <h2>Search Your Product</h2>
                    <form class="navbar-form position-relative" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="Search here...">
                        </div>
                        <button type="submit" class="submit-btn"><i class="pe-7s-search"></i></button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Search Modal End -->

<!-- Modal -->
<div class="modal modal-2 fade" id="exampleModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="row" id="modal">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->

<script type="text/javascript">

    function onClickAddToCart(idItem, quantity, idColor) {
        if (quantity === 0) {
            event.preventDefault();
            alert("We apologize for this inconvenience." +
                "\nThe item is currently out of stock, please comeback later");
        }
        else {
            let href = '/AddorCheckRedirectController?productId=' + idItem + '&quantity=1&colorId=' + idColor;
            window.location.href = href;
        }
    }

    window.onload = function()
    {
        var span = document.getElementById("${categoriesEntityList_firstIndex}");
        span.click();
    };

    const onClickLoadData = (ID, flag) => {
        //flag == 1 --> get data 1
        //flag == 2 --> load modal
        var URL = "<c:url value="/api-top8product" />";
        if (flag == 2) {
            URL = "<c:url value="/api-modal" />"
        }

        $.ajax({
            url: URL,
            type: "get",
            data: {
                ID: ID,
                // action: (function() {
                //     if (flag === 1) return "tab-data";
                //     else return "modal";
                // })
            },
            success: function (response) {
                flag === 1 ? document.getElementById("tab-data").innerHTML = response
                    : document.getElementById("modal").innerHTML = response;
            },
            error: function (xhr) {
                alert("Loading data not success. Please comeback later <3")
            }
        })
    }

    function onChangeBG(id) {
        document.getElementById(id).style.opacity = '1';
    }

</script>

<!-- Global Vendor, plugins JS -->

<!-- Vendor JS -->

<script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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


<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<!-- <script src="assets/js/vendor/vendor.min.js"></script>
        <script src="assets/js/plugins/plugins.min.js"></script> -->

<!-- Main Js -->
<script src="assets/js/main.js"></script>
</body>

</html>