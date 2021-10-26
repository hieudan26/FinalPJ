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

    <!-- Use the minified version files listed below for better performance and remove the files listed above -->
    <!-- <link rel="stylesheet" href="assets/css/vendor/vendor.min.css" />
    <link rel="stylesheet" href="assets/css/plugins/plugins.min.css" />
    <link rel="stylesheet" href="assets/css/style.min.css"> -->

    <!-- Main Style -->
    <link rel="stylesheet" href="assets/css/style.css" />

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

<!-- breadcrumb-area start -->
<div class="breadcrumb-area">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-12 text-center">
                <h2 class="breadcrumb-title">Single Product</h2>
                <!-- breadcrumb-list start -->
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                    <li class="breadcrumb-item active">Product</li>
                </ul>
                <!-- breadcrumb-list end -->
            </div>
        </div>
    </div>
</div>
<!-- breadcrumb-area end -->

<!-- Product Details Area Start -->
<div class="product-details-area pt-100px pb-100px">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px">
                <!-- Swiper -->
                <div class="swiper-slide zoom-image-hover">
                    <img class="img-responsive m-auto" src="assets/images/product-image/zoom-image/1.jpg"
                         alt="">
                </div>
                <!-- <div class="swiper-container zoom-top">
                    <div class="swiper-wrapper">

                        <div class="swiper-slide zoom-image-hover">
                            <img class="img-responsive m-auto" src="assets/images/product-image/zoom-image/2.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide zoom-image-hover">
                            <img class="img-responsive m-auto" src="assets/images/product-image/zoom-image/3.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide zoom-image-hover">
                            <img class="img-responsive m-auto" src="assets/images/product-image/zoom-image/4.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide zoom-image-hover">
                            <img class="img-responsive m-auto" src="assets/images/product-image/zoom-image/5.jpg"
                                alt="">
                        </div>
                    </div>
                </div> -->
                <!-- <div class="swiper-container mt-20px zoom-thumbs ">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <img class="img-responsive m-auto" src="assets/images/product-image/small-image/1.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="img-responsive m-auto" src="assets/images/product-image/small-image/2.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="img-responsive m-auto" src="assets/images/product-image/small-image/3.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="img-responsive m-auto" src="assets/images/product-image/small-image/4.jpg"
                                alt="">
                        </div>
                        <div class="swiper-slide">
                            <img class="img-responsive m-auto" src="assets/images/product-image/small-image/5.jpg"
                                alt="">
                        </div>
                    </div>
                </div> -->
            </div>
            <div class="col-lg-6 col-sm-12 col-xs-12" data-aos="fade-up" data-aos-delay="200">
                <div class="product-details-content quickview-content ml-25px">
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
                        <a id="color-1" href="#" class="color-block bg-warning" onclick="onClickColor(event, this.id);"></a>

                        <a id="color-2" href="#" class="color-block bg-danger" onclick="onClickColor(event, this.id);"></a>

                        <a id="color-3" href="#" class="color-block bg-success" onclick="onClickColor(event, this.id);"></a>

                        <a id="color-4" href="#" class="color-block bg-info" onclick="onClickColor(event, this.id);"></a>

                        <a id="color-5" href="#" class="color-block bg-dark" onclick="onClickColor(event, this.id);"></a>
                    </div>

                    <script>
                        const onClickColor = (event, idColor) => {
                            event.preventDefault();
                            for (var i = 1; i <= 5; i++) {
                                var temp = "color-" + i;
                                if (temp === idColor) {
                                    document.getElementById(temp).style.transform = "scale(1.3,1.3)"
                                }
                                else {
                                    document.getElementById(temp).style.transform = "scale(1,1)";
                                }
                            }
                        }
                    </script>

                    <p class="mt-20px mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                        eiusmodol tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veni nostrud
                        exercitation ullamco laboris </p>
                    <div class="pro-details-quality">
                        <div class="cart-plus-minus">
                            <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1" />
                        </div>
                        <div class="pro-details-cart">
                            <button class="add-cart"> Add To
                                Cart</button>
                        </div>
                        <div class="pro-details-cart">
                            <button class="add-cart buy-button"> Buy It Now</button>
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


<!-- product details description area start -->
<div class="description-review-area pb-100px" data-aos="fade-up" data-aos-delay="200">
    <div class="container">
        <div class="description-review-wrapper">
            <div class="description-review-topbar nav">
                <a data-bs-toggle="tab" href="#des-details2">Information</a>
                <a class="active" data-bs-toggle="tab" href="#des-details1">Description</a>
                <a data-bs-toggle="tab" href="#des-details3">Reviews (02)</a>
            </div>
            <div class="tab-content description-review-bottom">
                <div id="des-details2" class="tab-pane">
                    <div class="product-anotherinfo-wrapper text-start">
                        <ul>
                            <li><span>Weight</span> 400 g</li>
                            <li><span>Dimensions</span>10 x 10 x 15 cm</li>
                            <li><span>Materials</span> 60% cotton, 40% polyester</li>
                            <li><span>Other Info</span> American heirloom jean shorts pug seitan letterpress</li>
                        </ul>
                    </div>
                </div>
                <div id="des-details1" class="tab-pane active">
                    <div class="product-description-wrapper">
                        <p>

                            Lorem ipsum dolor sit amet, consectetur adipisici elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation
                            ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                            reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur
                            sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id
                            est laborum. Sed utlo perspiciatis unde omnis iste natus error sit voluptatem
                            accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
                            veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam
                            voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni
                            dolores eos qui ratione voluptatem sequi nesciunt.

                        </p>
                    </div>
                </div>
                <div id="des-details3" class="tab-pane">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="review-wrapper">
                                <div class="single-review">
                                    <div class="review-img">
                                        <img src="assets/images/review-image/1.png" alt="" />
                                    </div>
                                    <div class="review-content">
                                        <div class="review-top-wrap">
                                            <div class="review-left">
                                                <div class="review-name">
                                                    <h4>White Lewis</h4>
                                                </div>
                                                <div class="rating-product">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-bottom">
                                            <p>
                                                Vestibulum ante ipsum primis aucibus orci luctustrices posuere
                                                cubilia Curae Suspendisse viverra ed viverra. Mauris ullarper
                                                euismod vehicula. Phasellus quam nisi, congue id nulla.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="single-review">
                                    <div class="review-img">
                                        <img src="assets/images/review-image/2.png" alt="" />
                                    </div>
                                    <div class="review-content">
                                        <div class="review-top-wrap">
                                            <div class="review-left">
                                                <div class="review-name">
                                                    <h4>White Lewis</h4>
                                                </div>
                                                <div class="rating-product">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="review-bottom">
                                            <p>Vestibulum ante ipsum primis aucibus orci luctustrices posuere
                                                cubilia Curae Sus pen disse viverra ed viverra. Mauris ullarper
                                                euismod vehicula.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="ratting-form-wrapper pl-50">
                                <h3>Add a Review</h3>
                                <div class="ratting-form">
                                    <form action="#">
                                        <div class="star-box">
                                            <span>Your rating:</span>
                                            <div class="rating-product">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="rating-form-style">
                                                    <input placeholder="Name" type="text" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="rating-form-style">
                                                    <input placeholder="Email" type="email" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="rating-form-style form-submit">
                                                    <textarea name="Your Review" placeholder="Message"></textarea>
                                                    <button class="btn btn-primary btn-hover-color-primary "
                                                            type="submit" value="Submit">Submit</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- product details description area end -->

<!-- Related product Area Start -->
<div class="related-product-area">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title text-center line-height-1">
                    <h2 class="title">Related Products</h2>
                    <p class="sub-title">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                        incididunt ut labore et dolore magna aliqua.
                    </p>
                </div>
            </div>
        </div>
        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
            <div class="new-product-wrapper swiper-wrapper">
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/9.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/9.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                    <span class="new">New</span>
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Hand-Made Garlic Mortar
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
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/10.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/10.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                    <span class="sale">-10%</span>
                                    <span class="new">New</span>
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Handmade Ceramic Pottery
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
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/11.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/11.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                    <span class="new">Sale</span>
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Hand Painted Bowls
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
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/12.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/1.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                    <span class="sale">-5%</span>
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Antique Wooden Farm
                                Large
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
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/6.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/6.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Handmade Jute Basket
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
                <div class="new-product-item swiper-slide">
                    <!-- Single Prodect -->
                    <div class="product">
                        <div class="thumb">
                            <a href="single-product.jsp" class="image">
                                <img src="assets/images/product-image/7.jpg" alt="Product" />
                                <img class="hover-image" src="assets/images/product-image/7.jpg" alt="Product" />
                            </a>
                            <span class="badges">
                                    <span class="new">New</span>
                                </span>
                            <div class="actions">
                                <a href="wishlist.jsp" class="action wishlist" title="Wishlist"><i
                                        class="pe-7s-like"></i></a>
                                <a href="#" class="action quickview" data-link-action="quickview" title="Quick view"
                                   data-bs-toggle="modal" data-bs-target="#exampleModal"><i
                                        class="pe-7s-look"></i></a>
                                <a href="compare.jsp" class="action compare" title="Compare"><i
                                        class="pe-7s-refresh-2"></i></a>
                            </div>
                        </div>
                        <div class="content">
                                <span class="ratings">
                                    <span class="rating-wrap">
                                        <span class="star" style="width: 100%"></span>
                                    </span>
                                    <span class="rating-num">( 5 Review )</span>
                                </span>
                            <h5 class="title"><a href="single-product.jsp">Knitting yarn & crochet
                                hook
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
            <!-- Add Arrows -->
            <div class="swiper-buttons">
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
    </div>
</div>
<!-- Related product Area End -->

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
                <div class="row">
                    <div class="col-lg-6 col-sm-12 col-xs-12 mb-lm-30px mb-md-30px mb-sm-30px">
                        <!-- Swiper -->
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/zoom-image/1.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/zoom-image/2.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/zoom-image/3.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/zoom-image/4.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/zoom-image/5.jpg" alt="">
                                </div>
                            </div>
                        </div>
                        <div class="swiper-container gallery-thumbs mt-20px">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/small-image/1.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/small-image/2.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/small-image/3.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/small-image/4.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img class="img-responsive m-auto"
                                         src="assets/images/product-image/small-image/5.jpg" alt="">
                                </div>
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
                            <p class="mt-30px mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
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


<!-- Use the minified version files listed below for better performance and remove the files listed above -->
<!-- <script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script> -->

<!-- Main Js -->
<script src="assets/js/main.js"></script>
</body>

</html>