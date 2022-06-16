<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2021
  Time: 08:50 am
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--    Them the meta de dam bao CSP--%>

<%@ page isELIgnored="false" %>
<%@ page import="Utils.CSRFUltils" %>
<%
    // generate a random CSRF token
    String csrfToken = CSRFUltils.getToken();
// place the CSRF token in a cookie
    javax.servlet.http.Cookie cookie = new javax.servlet.http.Cookie("csrfTokenMioca", csrfToken);
    cookie.setHttpOnly(true);
    response.addCookie(cookie);
%>

<script type="text/javascript">
    document.onreadystatechange = function () {
        var state = document.readyState;
        if (state == 'complete') {
            fnInit("csrfTokenMioca", "<%= csrfToken %>");
        }
    };
</script>
<jsp:include page="headerAdmin.jsp"/>
<main class="page-content">
    <div class="container">
        <div class="page-header">
            <h1 class="page-header__title">Reviews <span class="text-grey" id="number-review">(50)</span></h1>
        </div>
        <div class="page-tools">
            <div class="page-tools__breadcrumbs">
                <div class="breadcrumbs">
                    <div class="breadcrumbs__container">
                        <ol class="breadcrumbs__list">
                            <li class="breadcrumbs__item">
                                <a class="breadcrumbs__link" href="/admin">
                                    <svg class="icon-icon-home breadcrumbs__icon">
                                        <use xlink:href="#icon-home"></use>
                                    </svg>
                                    <svg class="icon-icon-keyboard-right breadcrumbs__arrow">
                                        <use xlink:href="#icon-keyboard-right"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="breadcrumbs__item disabled"><a class="breadcrumbs__link" href="#"><span>Admin</span>
                                <svg class="icon-icon-keyboard-right breadcrumbs__arrow">
                                    <use xlink:href="#icon-keyboard-right"></use>
                                </svg></a>
                            </li>
                            <li class="breadcrumbs__item active"><span class="breadcrumbs__link">reviews</span>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
            <div class="page-tools__right">
                <div class="page-tools__right-row">
                    <div class="page-tools__right-item"><a class="button-icon" href="#"><span class="button-icon__icon">
                          <svg class="icon-icon-print">
                            <use xlink:href="#icon-print"></use>
                          </svg></span></a>
                    </div>
                    <div class="page-tools__right-item"><a class="button-icon" href="#"><span class="button-icon__icon">
                          <svg class="icon-icon-import">
                            <use xlink:href="#icon-import"></use>
                          </svg></span></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="toolbox">
            <div class="toolbox__row row gutter-bottom-xs">
                <div class="toolbox__left col-12 col-lg">
                    <div class="toolbox__left-row row row--xs gutter-bottom-xs">
                        <div class="form-group form-group--inline col-12 col-sm-auto">
                            <label class="form-label">Show</label>
                            <div class="input-group input-group--white input-group--append">
                                <input class="input input--select" type="text" value="10" size="1" data-toggle="dropdown" readonly><span class="input-group__arrow">
                            <svg class="icon-icon-keyboard-down">
                              <use xlink:href="#icon-keyboard-down"></use>
                            </svg></span>
                                <div class="dropdown-menu dropdown-menu--right dropdown-menu--fluid js-dropdown-select">
                                    <a class="dropdown-menu__item active show-item" href="#" tabindex="0" data-value="10">10</a>
                                    <a class="dropdown-menu__item show-item" href="#" tabindex="0" data-value="15">15</a>
                                    <a class="dropdown-menu__item show-item" href="#" tabindex="0" data-value="20">20</a>
                                    <a class="dropdown-menu__item show-item" href="#" tabindex="0" data-value="25">25</a>
                                    <a class="dropdown-menu__item show-item" href="#" tabindex="0" data-value="50">50</a>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="toolbox__right col-12 col-lg-auto">
                    <div class="toolbox__right-row row row--xs flex-nowrap">
                        <div class="col col-lg-auto">
                            <form class="toolbox__search" method="GET">
                                <input type="hidden" name="csrfTokenMioca" value="<%= csrfToken %>"/>
                                <div class="input-group input-group--white input-group--prepend">
                                    <div class="input-group__prepend">
                                        <svg class="icon-icon-search">
                                            <use xlink:href="#icon-search"></use>
                                        </svg>
                                    </div>
                                    <input id="search-box"  class="input" type="text" placeholder="Search Review" oninput="Search();">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="table-wrapper">
            <div class="table-wrapper__content table-collapse scrollbar-thin scrollbar-visible" data-simplebar>
                <table class="table table--lines">
                    <colgroup>
                        <col>
                        <col>
                        <col >
                        <col >
                        <col width="120px">
                        <col width="90px">
                    <thead class="table__header">
                    <tr class="table__header-row">
                        <th class="mw-70"><span class="align-middle">ID</span>
                        </th>
                        <th class="mw-120"><span class="align-middle">Product</span>
                        </th>
                        <th class="mw-120"><span class="align-middle">Author</span>
                        </th>
                        <th><span class="align-middle">Review</span>
                        </th>
                        <th class="align-middle"><span class="align-middle">Rating</span>
                        </th>
                        <th class="table__actions"></th>
                    </tr>
                    </thead>
                    <tbody id="review-table">
                    </tbody>
                </table>
            </div>
            <div class="table-wrapper__footer">
                <div class="row">
                    <div class="table-wrapper__show-result col text-grey" id="info-show">
                    </div>
                    <div class="table-wrapper__pagination col-auto">
                        <ol class="pagination">
                            <li class="pagination__item" id="previous">
                                <a class="pagination__arrow pagination__arrow--prev" >
                                    <svg class="icon-icon-keyboard-left">
                                        <use xlink:href="#icon-keyboard-left"></use>
                                    </svg>
                                </a>
                            </li>
                            <li class="pagination__item active" id="pagination_first"  data-value=1><a class="pagination__link">1</a>
                            </li>
                            <li class="pagination__item pagination__item--dots" id="pagination_space_1">...</li>
                            <li class="pagination__item" id="pagination_2" data-value = 2><a class="pagination__link" >2</a>
                            </li>
                            <li class="pagination__item" id="pagination_3" data-value = 3><a class="pagination__link" >3</a>
                            </li>
                            <li class="pagination__item" id="pagination_4" data-value = 4><a class="pagination__link" >4</a>
                            </li>
                            <li class="pagination__item pagination__item--dots" id="pagination_space_2">...</li>
                            <li class="pagination__item" id="pagination_last" data-value = 10><a class="pagination__link" >10</a>
                            </li>
                            <li class="pagination__item" id="next">
                                <a class="pagination__arrow pagination__arrow--next">
                                    <svg class="icon-icon-keyboard-right">
                                        <use xlink:href="#icon-keyboard-right"></use>
                                    </svg>
                                </a>
                            </li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script src="../Admin/assets/js/custom/review.js"></script>
<jsp:include page="footerAdmin.jsp"/>