<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 11/11/2021
  Time: 08:50 am
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<jsp:include page="headerAdmin.jsp"/>
<main class="page-auth">
    <div class="page-auth__center">
        <div class="page-auth__screen">
            <div class="auth-logo">
                <img class="auth-logo__icon" src="../Admin/assets/img/content/logotype.svg" width="44" alt="#" />
                <div class="auth-logo__text">arion</div>
            </div>
            <img class="page-auth__screen-bg auth-bg-image-light" src="https://scontent.fsgn13-2.fna.fbcdn.net/v/t39.30808-6/255437074_2690442647768064_3239204446502871189_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gbsDAxiULxUAX94aTDy&_nc_ht=scontent.fsgn13-2.fna&oh=a09810140fab2ef0344709047e8c04ae&oe=61A4D76E" alt="#">
            <img class="page-auth__screen-bg auth-bg-image-dark" src="https://scontent.fsgn13-2.fna.fbcdn.net/v/t39.30808-6/255437074_2690442647768064_3239204446502871189_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gbsDAxiULxUAX94aTDy&_nc_ht=scontent.fsgn13-2.fna&oh=a09810140fab2ef0344709047e8c04ae&oe=61A4D76E" alt="#">
        </div>
        <div class="auth-card card">
            <div class="card__wrapper">
                <div class="auth-card__left">
                    <div class="auth-card__logo">
                        <div class="auth-logo">
                            <img class="auth-logo__icon" src="../Admin/assets/img/content/logotype.svg" width="44" alt="#" />
                            <div class="auth-logo__text">Mioca</div>
                        </div>
                    </div>
                    <img class="auth-card__bg auth-bg-image-light" src="https://scontent.fsgn9-1.fna.fbcdn.net/v/t39.30808-6/255437074_2690442647768064_3239204446502871189_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=t5xXe3wLkX8AX-T_6hY&_nc_ht=scontent.fsgn9-1.fna&oh=0c9f1e7f268ee7088fcd710d484ddfef&oe=61ACC06E" alt="#">
                    <img class="auth-card__bg auth-bg-image-dark" src="https://scontent.fsgn13-2.fna.fbcdn.net/v/t39.30808-6/255437074_2690442647768064_3239204446502871189_n.jpg?_nc_cat=108&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=gbsDAxiULxUAX94aTDy&_nc_ht=scontent.fsgn13-2.fna&oh=a09810140fab2ef0344709047e8c04ae&oe=61A4D76E" alt="#">
                </div>
                <form class="auth-card__right" action="<c:url  value="/admin/createaccount"/>" method="POST">
                    <div class="auth-card__top">
                        <h1 class="auth-card__title">Create Account</h1>
                    </div>
                    <div class="auth-card__body">
                        <div class="form-group">
                            <div class="input-group input-group--prepend"><span class="input-group__prepend">
                    <svg class="icon-icon-user">
                      <use xlink:href="#icon-user"></use>
                    </svg></span>
                                <input name="username" class="input" type="text" placeholder="Username" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group--prepend"><span class="input-group__prepend">
                    <svg class="icon-icon-email-2">
                      <use xlink:href="#icon-email-2"></use>
                    </svg></span>
                                <input name="email" class="input" type="email" placeholder="example@mail.com" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group--prepend"><span class="input-group__prepend">
                    <svg class="icon-icon-password">
                      <use xlink:href="#icon-password"></use>
                    </svg></span>
                                <input id="password-register" name="password" class="input" type="password" placeholder="password" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="input-group input-group--prepend"><span class="input-group__prepend">
                    <svg class="icon-icon-password">
                      <use xlink:href="#icon-password"></use>
                    </svg></span>
                                <input id="repassword-register"  name="retypepassword" class="input" type="password" placeholder="Password (Confirm)" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Role</label>
                            <div class="input-group input-group--append ">
                                <select name="role" class="input js-input-select input--fluid" data-placeholder="">
                                    <option value="1" selected="selected">Customer
                                    </option>
                                    <option value="2">Admin
                                    </option>
                                </select><span class="input-group__arrow">
                                    <svg class="icon-icon-keyboard-down">
                                        <use xlink:href="#icon-keyboard-down"></use>
                                    </svg></span>
                            </div>
                        </div>
                        <div class="auth-card__submit">
                            <button class="button button--primary button--block" type="submit"><span class="button__text">Create account</span>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
<script>
    <c:if test="${requestScope.Message != null && requestScope.Message != '' }">
        alert("${requestScope.Message}");
    </c:if>
</script>
<script src="../Admin/assets/js/custom/register.js"></script>
<jsp:include page="footerAdmin.jsp"/>