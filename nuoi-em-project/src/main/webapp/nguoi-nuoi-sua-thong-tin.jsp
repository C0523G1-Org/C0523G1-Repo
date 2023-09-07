<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/2/2023
  Time: 11:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%--    <title>Sửa thông tin mạnh tường quân</title>--%>
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"--%>
    <%--          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">--%>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Sửa thông tin mạnh thường quân</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/theme.css" rel="stylesheet" media="all">
    <style>
        @import url('//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css');

        .info-msg,
        .success-msg,
        .warning-msg,
        .error-msg {
            margin: 10px 0;
            padding: 10px;
            border-radius: 3px 3px 3px 3px;
        }

        .info-msg {
            color: #059;
            background-color: #BEF;
        }

        .success-msg {
            color: #270;
            background-color: #DFF2BF;
        }

        .warning-msg {
            color: #9F6000;
            background-color: #FEEFB3;
        }

        .error-msg {
            color: #D8000C;
            background-color: #FFBABA;
        }
    </style>
</head>
<body class="animsition">
<div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar" style="background-color: #90953b">
            <div class="container-fluid">
                <div class="header-mobile-inner">
                    <div class="logo" style="background-color: #90953b">
                        <img src="images/logo.png" width="50px" height="50px" style="padding-right: 5px">
                        <a href="#">
                            <h3>Nuôi em</h3>
                        </a>
                    </div>
                    <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                    </button>
                </div>
            </div>
        </div>
        <nav class="navbar-mobile">
            <div class="container-fluid">
                <ul class="navbar-mobile__list list-unstyled">
                    <li>
                        <a href="#">
                            <i class="fas fa-signal"></i>Thống kê</a>
                    </li>
                    <li class="active has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-list"></i>Danh sách</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="/cam-ket">Bảng cam kết</a>
                            </li>
                            <li>
                                <a href="/nguoi-nuoi">Mạnh thường quân</a>
                            </li>
                            <li>
                                <a href="/nguoi-giam-ho">Người giám hộ</a>
                            </li>
                            <li>
                                <a href="/tre-em">Trẻ em</a>
                            </li>
                            <li>
                                <a href="/giao-dich">Tài chính</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/tai-khoan">
                            <i class="fas fa-users"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="/nuoi-em-trang-chu.jsp">
                            <i class="fas fa-arrow-left"></i>Trở về</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- END HEADER MOBILE-->

    <!-- MENU SIDEBAR-->
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo" style="background-color: #90953b">
            <img src="images/logo.png" width="50px" height="50px" style="padding-right: 5px">
            <a href="#">
                <h3>Nuôi em</h3>
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1" style="background-color: #78853f">
            <nav class="navbar-sidebar">
                <ul class="list-unstyled navbar__list">
                    <li>
                        <a href="#">
                            <i class="fas fa-signal"></i>Thống kê</a>
                    </li>
                    <li class="active has-sub">
                        <a class="js-arrow" href="#">
                            <i class="fas fa-list"></i>Danh sách</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                            <li>
                                <a href="/cam-ket">Bảng cam kết</a>
                            </li>
                            <li>
                                <a href="/nguoi-nuoi">Mạnh thường quân</a>
                            </li>
                            <li>
                                <a href="/nguoi-giam-ho">Người giám hộ</a>
                            </li>
                            <li>
                                <a href="/tre-em">Trẻ em</a>
                            </li>
                            <li>
                                <a href="/giao-dich">Tài chính</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/tai-khoan">
                            <i class="fas fa-users"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="/nuoi-em-trang-chu.jsp">
                            <i class="fas fa-arrow-left"></i>Trở về</a>
                    </li>
                </ul>
            </nav>
        </div>
    </aside>
    <!-- END MENU SIDEBAR-->

    <!-- PAGE CONTAINER-->
    <div class="page-container">
        <!-- HEADER DESKTOP-->
        <header class="header-desktop" style="background-color: #78853f">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <div class="form-header">
                        </div>
                        <div class="header-button">
                            <div class="account-wrap">
                                <div class="account-item clearfix js-item-menu">
                                    <div class="image">
                                        <img src="images/icon/avatar.jpg" alt="Zhang Ming"/>
                                    </div>
                                    <div class="content">
                                        <a class="js-acc-btn" href="#">Admin</a>
                                    </div>
                                    <div class="account-dropdown js-dropdown">
                                        <div class="info clearfix">
                                            <div class="image">
                                                <a href="#">
                                                    <img src="images/icon/avatar.jpg" alt="Zhang Ming"/>
                                                </a>
                                            </div>
                                            <div class="content">
                                                <h5 class="name">
                                                    <a href="#">Admin</a>
                                                </h5>
                                                <span class="email">nuoiem@gmail.com</span>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-account"></i>Thông tin cá nhân</a>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__footer">
                                            <a href="nuoi-em-trang-chu.jsp">
                                                <i class="zmdi zmdi-power"></i>Đăng xuất</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- HEADER DESKTOP-->
        <!-- MAIN CONTENT-->
        <div class="main-content">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header">
                                    <strong>Sửa thông tin mạnh thường quân</strong>
                                </div>
                                <div class="card-body card-block">


                                    <form action="/nguoi-nuoi?action=sua" method="post" name="form-2"
                                          class="form-horizontal" onsubmit="return(validate());">

                                        <c:if test="${nguoiNuoi != null}">
                                        <input type="hidden" name="maNguoiNuoi" value="${nguoiNuoi.maNguoiNuoi}"/>
                                        <input type="hidden" id="maTaiKhoan" name="maTaiKhoan"
                                               value="${nguoiNuoi.maTaiKhoan}"/>
                                        </c:if>

                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <label for="tenNguoiNuoi" class="col-form-label">Họ và tên</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="tenNguoiNuoi" name="tenNguoiNuoi"
                                                       class="form-control" style="text-transform:capitalize"
                                                       aria-describedby="passwordHelpInline"
                                                       value="${nguoiNuoi.tenNguoiNuoi}"/>
                                                <span class="form-message text-warning"></span>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-12 col-md-3">
                                                <label class="col-form-label">Giới tính</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <%-- hiển thị ô đã đc chọn--%>
                                                <c:set var="luaChon" value="${nguoiNuoi.gioiTinh}"/>

                                                <input type="radio" name="gioiTinh" value="1"
                                                       <c:if test="${luaChon eq 1}">checked</c:if>
                                                >Nam
                                                <input type="radio" name="gioiTinh" value="0"
                                                       <c:if test="${luaChon eq 0}">checked</c:if>
                                                >Nữ
                                            </div>
                                        </div>

                                        <%--                                        <div class="row form-group">--%>
                                        <%--                                            <div class="col col-md-3">--%>
                                        <%--                                                <label for="maTaiKhoan" class="col-form-label">Mã Tài Khoản</label>--%>
                                        <%--                                            </div>--%>
                                        <%--                                            <div class="col-12 col-md-9">--%>
                                        <%--                                                <input type="text" id="maTaiKhoan" name="maTaiKhoan"--%>
                                        <%--                                                       class="form-control"--%>
                                        <%--                                                       aria-describedby="passwordHelpInline"--%>
                                        <%--                                                       value="${nguoiNuoi.maTaiKhoan}">--%>
                                        <%--                                            </div>--%>
                                        <%--                                        </div>--%>
                                        <div class="row form-group">
                                            <div class="col-12 col-md-3">
                                                <label for="soDienThoai" class="col-form-label">Số điện thoại</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="soDienThoai" name="soDienThoai"
                                                       class="form-control"
                                                       aria-describedby="passwordHelpInline"
                                                       value="0${nguoiNuoi.soDienThoai}">
                                                <span class="form-message text-warning"></span>
                                                <%--                                                <c:if test="${loi != null}">--%>
                                                <%--                                                    <div class="alert alert-danger d-flex align-items-center"--%>
                                                <%--                                                         role="alert" style="top: 5px">--%>
                                                <%--                                                        <svg class="bi flex-shrink-0 me-2" width="0" height="0"--%>
                                                <%--                                                             role="img" aria-label="Danger:">--%>
                                                <%--                                                            <use xlink:href="#check-circle-fill"/>--%>
                                                <%--                                                        </svg>--%>
                                                <%--                                                        <div>--%>
                                                <%--                                <span class="error">--%>
                                                <%--                                    <i class="uil uil-ban"></i><label--%>
                                                <%--                                        style="padding-left: 5px">${loi}</label>--%>
                                                <%--                                </span>--%>
                                                <%--                                                        </div>--%>
                                                <%--                                                    </div>--%>
                                                <%--                                                </c:if>--%>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col-12 col-md-3">
                                                <label for="email" class="col-form-label">Email</label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <input type="text" id="email" name="email" class="form-control"
                                                       aria-describedby="passwordHelpInline"
                                                       value="${nguoiNuoi.email}">
                                                <span class="form-message text-warning"></span>
                                                <%--                                                <c:if test="${loi1 != null}">--%>
                                                <%--                                                    <div class="alert alert-danger d-flex align-items-center"--%>
                                                <%--                                                         role="alert" style="top: 5px">--%>
                                                <%--                                                        <svg class="bi flex-shrink-0 me-2" width="0" height="0"--%>
                                                <%--                                                             role="img" aria-label="Danger:">--%>
                                                <%--                                                            <use xlink:href="#check-circle-fill"/>--%>
                                                <%--                                                        </svg>--%>
                                                <%--                                                        <div>--%>
                                                <%--                                <span class="error">--%>
                                                <%--                                    <i class="uil uil-ban"></i><label--%>
                                                <%--                                        style="padding-left: 5px">${loi1}</label>--%>
                                                <%--                                </span>--%>
                                                <%--                                                        </div>--%>
                                                <%--                                                    </div>--%>
                                                <%--                                                </c:if>--%>
                                            </div>
                                        </div>
                                        <div class="card-footer">
                                            <button class="btn" style="background-color: #ffff00" type="submit">
                                                Xác nhận
                                            </button>
                                            <a href="/nguoi-nuoi" class="btn btn-dark">Đóng</a>
                                        </div>
                                </div>
                                <div class="row form-group">
                                    <c:if test="${thongBao != null}">
                                        <div class="success-msg">
                                            <i class="fa fa-check"></i>
                                                ${thongBao}
                                        </div>
                                    </c:if>
                                </div>
                                </form>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright">
                            <p>Copyright © 2023 Team 2. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</div>
</div>

<%--validate--%>
<script>
    function Validator(options) {

        function validate(inputElement, rule) {
            var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
            var errorMessage = rule.test(inputElement.value)
            if (errorMessage) {
                errorElement.innerText = errorMessage;
                inputElement.parentElement.classList.add('invalid');
            } else {
                errorElement.innerText = '';
                inputElement.parentElement.classList.remove('invalid');
            }
        }

        var formElement = document.querySelector(options.form);
        if (formElement) {

            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                if (inputElement) {
                    inputElement.onblur = function () {
                        validate(inputElement, rule)
                    }
                    inputElement.oninput = function () {
                        var errorElement = inputElement.parentElement.querySelector('.form-message');
                        errorElement.innerText = '';
                        inputElement.parentElement.classList.remove('invalid');
                    }
                }
            });
        }
    }

    //dinh nghia rules
    //nguyen tac cua rules
    //1. khi co loi -> tra ra message loi
    //2. khi hop le thi thoi (undefined)
    Validator.isRequired = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                return value.trim() ? undefined : 'Vui lòng nhập trường này';
            }
        };
    }
    Validator.isEmail = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                return regex.test(value) ? undefined : 'Trường này phải là email hợp lệ';
            }
        };
    }
    Validator.minLength = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                return value.length >= 6 ? undefined : 'Vui lòng nhập tối thiểu 6 ký tự';
            }
        };
    }
    Validator.isConfirmed = function (selector, getConfirmValue) {
        return {
            selector: selector,
            test: function (value) {
                return value === getConfirmValue() ? undefined : 'Giá trị nhập vào không trùng khớp';
            }
        };
    }
    Validator.isTelNumber = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                var regex = /^\d{10,}$/;
                return regex.test(value) ? undefined : 'Số điện thoại không hợp lệ';
            }
        };
    }
</script>

<script>
    Validator({
        form: '#form-2',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#tenNguoiNuoi'),
            // Validator.isRequired('#tenTaiKhoan'),
            // Validator.isRequired('#soDienThoai'),
            Validator.isEmail('#email'),
            // Validator.minLength('#matKhau'),
            Validator.isTelNumber('#soDienThoai'),
            // Validator.isConfirmed('#nhapLaiMatKhau', function (){
            //     return document.querySelector('#form-1 #matKhau').value;
            // }),
        ]
    });
</script>


<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>
</body>
</html>
