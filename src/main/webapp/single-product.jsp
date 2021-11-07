<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Utils.SingletonServiceUltils" %>
<%@ page import="java.util.List" %>
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
    <link rel="stylesheet" href="assets/css/singleproduct.css" />
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
                <h2 class="breadcrumb-title">Single Product</h2>
                <!-- breadcrumb-list start -->
                <ul class="breadcrumb-list">
                    <li class="breadcrumb-item"><a href="<c:url value="/home" />">Home</a></li>
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
                    <img class="img-responsive m-auto" src="${singleProductDTO.getImage()}" alt="">
                </div>

            </div>
            <div class="col-lg-6 col-sm-12 col-xs-12" data-aos="fade-up" data-aos-delay="200">
                <div class="product-details-content quickview-content ml-25px">
                    <h2>${singleProductDTO.getName()}</h2>
                    <div class="pricing-meta">
                        <ul class="d-flex">
                            <c:choose>
                                <c:when test="${singleProductDTO.isProductStatus()}">
                                    <li class="new-price">$${singleProductDTO.getDiscountPrice()}
                                    </li>
                                    <li class="old-price">
                                        <del>$${singleProductDTO.getRegularPrice()}</del>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="new-price">$${singleProductDTO.getRegularPrice()}
                                    </li>
                                </c:otherwise>
                            </c:choose>
                        </ul>
                    </div>
                    <div class="pro-details-rating-wrap">
                        <div class="rating-product">
                            <c:set var="star" scope="session" value="${singleProductDTO.getAvgReview()}" />
                            <c:forEach begin="1" end="${star}" varStatus="loop">
                                <i class="fa fa-star" style="color: #ffde00"></i>
                            </c:forEach>

                            <c:forEach begin="${star + 1}" end="5" varStatus="loop">
                                <i class="fa fa-star" style="color: #bcbebf"></i>
                            </c:forEach>
                        </div>
                        <span class="read-review"><a class="reviews" href="#">(${singleProductDTO.getTotalReview()}
                                    Review )</a></span>
                    </div>
                    <div class="stock mt-30px">
                        <c:choose>
                            <c:when test="${singleProductDTO.getQuantity() == 0}">
                                    <span class="avallabillty">Availability: <span class="out-of-stock"><i
                                            class="fa fa-times"></i>Out Of
                                            Stock</span></span>
                            </c:when>
                            <c:otherwise>
                                    <span class="avallabillty">Availability: <span class="in-stock"><i
                                            class="fa fa-check"></i>In Stock</span></span>
                            </c:otherwise>
                        </c:choose>
                    </div>

                    <%--FORM--%>
                    <form action="OrderProductController">
                        <input hidden type="text" name="productId" value="${singleProductDTO.getId()}">
                        <div id="color-grp" class="color-group mt-30px">
                            <li hidden name="colorId" value="${singleProductDTO.getColorDTOList().get(0).getId()}" id="color-${itemColor.getId()}" href="#" class="color-block"
                                style="background: ${itemColor.getName()}" onclick="onClickColor(this.id)"></li>
                            <c:forEach items="${singleProductDTO.getColorDTOList()}" var="itemColor">
                                <li name="colorId" value="${itemColor.getId()}" id="color-${itemColor.getId()}" href="#" class="color-block"
                                   style="background: ${itemColor.getName()}" onclick="onClickColor(this.id)"></li>
                            </c:forEach>
                        </div>

                        <p class="mt-20px mb-0">
                            ${singleProductDTO.getDescription().split("\\.")[0]}.
                            ${singleProductDTO.getDescription().split("\\.")[1] }</p>

                        <div class="pro-details-quality">
                            <div class="cart-plus-minus">
                                <input class="cart-plus-minus-box" type="text" name="quantity" value="1">
                            </div>
                            <div class="pro-details-cart">
                                <button class="add-cart" name="action" value="addCart">
                                    Add To Cart
                                </button>
                            </div>
                            <div class="pro-details-cart">
                                <button class="add-cart buy-button" name="action" value="buyNow">Buy It Now</button>
                            </div>
                            <div class="pro-details-compare-wishlist pro-details-wishlist ">
                                <a href="wishlist.jsp"><i class="pe-7s-like"></i></a>
                            </div>
                        </div>
                    </form>
                    <div class="pro-details-categories-info pro-details-same-style d-flex">
                        <span>Categories: </span>
                        <ul class="d-flex">
                            <li>
                                <a href="#">${singleProductDTO.getCategoriesName()} </a>
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
                        <a href="#"><img src="assets/images/icons/payment.png" alt=""></a>
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
                <a data-bs-toggle="tab" href="#des-details3">Reviews </a>
            </div>
            <div class="tab-content description-review-bottom">
                <div id="des-details2" class="tab-pane">
                    <div class="product-anotherinfo-wrapper text-start">
                        <ul>
                            <li><span>Weight</span> ${singleProductDTO.getInformation().getWeight()}
                            </li>
                            <li><span>Dimensions</span>${singleProductDTO.getInformation().getDimensions()}
                            </li>
                            <li><span>Materials</span>
                                ${singleProductDTO.getInformation().getMaterials()}</li>
                            <li><span>Other Info</span>
                                ${singleProductDTO.getInformation().getOtherInfo()}</li>
                        </ul>
                    </div>
                </div>
                <div id="des-details1" class="tab-pane active">
                    <div class="product-description-wrapper">
                        <p>
                            ${singleProductDTO.getDescription()}
                        </p>
                    </div>
                </div>
                <div id="des-details3" class="tab-pane">
                    <div class="row">
                        <div class="col-lg-7">
                            <div class="review-wrapper" style="overflow-y: auto; height: 425px;">
                                <c:forEach items="${singleProductDTO.getReviewOfUserDTOList()}" var="itemReview">
                                    <div class="single-review">
                                        <div class="review-img">
                                            <img style="border-radius: 70px; width: 65px; height: 65px"
                                                 src="${itemReview.getImage()}" alt="" />
                                        </div>
                                        <div class="review-content">
                                            <div class="review-top-wrap">
                                                <div class="review-left">
                                                    <div class="review-name">
                                                        <h4>${itemReview.getFullname()}</h4>
                                                    </div>
                                                    <div class="rating-product">
                                                        <c:set var="starReview" scope="session"
                                                               value="${itemReview.getAvg_rating()}" />
                                                        <c:forEach begin="1" end="${starReview}" varStatus="loop">
                                                            <i class="fa fa-star" style="color: #ffde00"></i>
                                                        </c:forEach>

                                                        <c:forEach begin="${starReview + 1}" end="5"
                                                                   varStatus="loop">
                                                            <i class="fa fa-star" style="color: #bcbebf"></i>
                                                        </c:forEach>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="review-bottom">
                                                <p>
                                                        ${itemReview.getComment()}
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="ratting-form-wrapper pl-50">
                                <h3>Add a Review</h3>
                                <div class="ratting-form">
                                    <%--FROM--%>
                                    <form action="ReviewController" method="post">
                                        <div class="star-box">
                                            <span>Your rating:</span>
                                            <div class="rating-container">
                                                <div class="star-widget">
                                                    <input type="radio" class="radio_rate" value="5" name="rate"
                                                           id="rate-5">
                                                    <label for="rate-5" class="fa fa-star"></label>
                                                    <input type="radio" class="radio_rate" value="4" name="rate"
                                                           id="rate-4">
                                                    <label for="rate-4" class="fa fa-star"></label>
                                                    <input type="radio" class="radio_rate" value="3" name="rate"
                                                           id="rate-3">
                                                    <label for="rate-3" class="fa fa-star"></label>
                                                    <input type="radio" class="radio_rate" value="2" name="rate"
                                                           id="rate-2">
                                                    <label for="rate-2" class="fa fa-star"></label>
                                                    <input type="radio" class="radio_rate" value="1" name="rate"
                                                           id="rate-1" checked>
                                                    <label for="rate-1" class="fa fa-star"> </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="rating-form-style">
                                                    <input placeholder="Name" type="text" name="username" />
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="rating-form-style">
                                                    <input placeholder="Email" type="email" name="email" />
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="rating-form-style form-submit">
                                                    <textarea name="review" placeholder="Message"></textarea>
                                                    <button class="btn btn-primary btn-hover-color-primary"
                                                            type="submit" value="${singleProductDTO.getId()}"
                                                            name="productId">Submit
                                                    </button>
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
                    <p class="sub-title">Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                        sed do eiusmod
                        incididunt ut labore et dolore magna aliqua.
                    </p>
                </div>
            </div>
        </div>
        <!-- 8 product random with category -->
        <div class="new-product-slider swiper-container slider-nav-style-1 pb-100px">
            <div class="new-product-wrapper swiper-wrapper">
                <c:forEach items="${Top8Product_categories}" var="item">
                    <div class="new-product-item swiper-slide">
                            <%--FORM--%>
                        <form action="OrderProductController">
                            <!-- Single Prodect -->
                            <div class="product">
                                <div class="thumb">
                                    <a href="singleproduct?productCode=${item.getId()}" class="image">
                                        <img src="${item.getImage()}" alt="Product" />
                                        <img class="hover-image" src="${item.getImage()}" alt="Product" />
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
                                        <a onclick="onClickLoadData(${item.getId()}, 2);" href="#"
                                           class="action quickview" data-link-action="quickview" title="Quick view"
                                           data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            <i class="pe-7s-look"></i>
                                        </a>
                                        <a href="compare.jsp" class="action compare" title="Compare"><i
                                                class="pe-7s-refresh-2"></i></a>
                                    </div>
                                </div>
                                <div class="content">
                                    <div class="rating-product">
                                        <c:set var="star" scope="session" value="${item.getAvgReview()}" />
                                        <c:forEach begin="1" end="${star}" varStatus="loop">
                                            <i class="fa fa-star" style="color: #ffde00"></i>
                                        </c:forEach>

                                        <c:forEach begin="${star + 1}" end="5" varStatus="loop">
                                            <i class="fa fa-star" style="color: #bcbebf"></i>
                                        </c:forEach>
                                    </div>
                                    <h5 class="title">
                                        <a href="single-product.jsp">${item.getName()}</a>
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
                                <button title="Add To Cart" class=" add-to-cart" name="pid" value="${item.getId()}">
                                    Add To Cart
                                </button>
                            </div>
                        </form>
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
                <div class="row" id="modal">

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Modal end -->
<script>
    const onClickColor = (id) => {
        event.preventDefault();
        var doc = document.getElementById("color-grp");
        var notes = null;
        for (var i = 0; i < doc.childNodes.length; i++) {
            doc.childNodes[i].className = "color-block"
        }
        document.getElementById(id).className += " color-block-active";
    }

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
                flag === 1 ? document.getElementById("tab-data").innerHTML = response :
                    document.getElementById("modal").innerHTML = response;
            },
            error: function (xhr) {
                alert("Loading data not success. Please comeback later <3")
            }
        })
    }
</script>

<!-- Global Vendor, plugins JS -->
<script src="assets/js/Checked.js"></script>
<script>
    checked('radio_rate');
</script>
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
<script src="assets/js/Checked.js"></script>
<script src="assets/js/main.js"></script>
</body>

</html>