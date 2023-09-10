<%--
  Created by IntelliJ IDEA.
  User: TUẤN
  Date: 9/6/2023
  Time: 6:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Cập nhật người giám hộ</title>

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
<body>
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
                            <a href="/tai-chinh">Tài chính</a>
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
                            <a href="/tai-chinh">Tài chính</a>
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
                                        <a href="/nuoi-em-trang-chu.jsp">
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
                                <strong>Cập Nhật Người Giám Hộ</strong>
                            </div>
                            <div class="card-body card-block">
                                <form action="/nguoi-giam-ho?action=capnhat" method="post"
                                      class="form-horizontal" id="capnhat">
                                    <c:if test="${nguoiGiamHo != null}">
                                        <input type="hidden" name="maNguoiGiamHo"
                                               value="<c:out value='${nguoiGiamHo.maNguoiGiamHo}'/>"/>
                                    </c:if>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="tenNguoiGiamHo" class=" form-control-label">Họ và tên</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="tenNguoiGiamHo" required name="tenNguoiGiamHo"
                                                   class="form-control"
                                                   value="<c:out value='${nguoiGiamHo.tenNguoiGiamHo}' />">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label class=" form-control-label" style="margin-left: 50px">Giới
                                                tính</label>
                                        </div>
                                        <div class="col col-md-9">
                                            <div class="form-check-inline form-check">
                                                <c:set var="luachon" value="${nguoiGiamHo.gioiTinh}"/>
                                                <label for="inline-radio1" class="form-check-label ">
                                                    <input type="radio" id="inline-radio1" name="gioiTinh" value="1"
                                                           required checked class="form-check-input"
                                                           <c:if test="${luachon eq 1}">checked</c:if>>Nam

                                                </label>
                                                <label for="inline-radio2" class="form-check-label ">
                                                    <input type="radio" id="inline-radio2" name="gioiTinh" value="0"
                                                           class="form-check-input"
                                                           <c:if test="${luachon eq 0}">checked</c:if>>Nữ
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="maKhuVuc" class=" form-control-label">Khu vực</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="maKhuVuc" id="maKhuVuc" class="form-control" required>
                                                <c:forEach var="k" items="${khuVuc}">
                                                    <c:if test="${k.getMaKhuVuc()== nguoiGiamHo.maKhuVuc}">
                                                        <option value="${k.getMaKhuVuc()}">${k.getTenKhuVuc()}</option>
                                                    </c:if>
                                                </c:forEach>
                                                <c:forEach var="k" items="${khuVuc}">
                                                    <option value="${k.getMaKhuVuc()}">
                                                            ${k.getTenKhuVuc()}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-12 col-md-3">
                                            <label for="soDienThoai" class="col-form-label" style="margin-left: 50px">Số
                                                điện thoại</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="soDienThoai" name="soDienThoai" class="form-control"
                                                   value="${nguoiGiamHo.soDienThoai}"
                                                   aria-describedby="passwordHelpInline" required>
                                            <c:if test="${nguoiGiamHo.soDienThoai} == ${soDienThoai}"/>
                                            <c:if test="${soDienThoaiTonTai != null}">
                                                <div class="alert alert-danger d-flex align-items-center"
                                                     role="alert" style="top: 5px">
                                                    <svg class="bi flex-shrink-0 me-2" width="0" height="0"
                                                         role="img" aria-label="Danger:">
                                                        <use xlink:href="#check-circle-fill"/>
                                                    </svg>
                                                    <div>
                                <span class="error">
                                    <i class="uil uil-ban"></i><label
                                        style="padding-left: 5px">${soDienThoaiTonTai}</label>
                                </span>
                                                    </div>
                                                </div>
                                            </c:if>
                                            <c:if test="${loi != null}">
                                                <div class="alert alert-danger d-flex align-items-center"
                                                     role="alert" style="top: 5px">
                                                    <svg class="bi flex-shrink-0 me-2" width="0" height="0"
                                                         role="img" aria-label="Danger:">
                                                        <use xlink:href="#check-circle-fill"/>
                                                    </svg>
                                                    <div>
                                <span class="error">
                                    <i class="uil uil-ban"></i><label
                                        style="padding-left: 5px">${loi}</label>
                                </span>
                                                    </div>
                                                </div>
                                            </c:if>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="card-footer">
                                            <button type="submit" class="btn" style="background-color: #ffff00">
                                                Câp nhật
                                            </button>
                                            <a href="/nguoi-giam-ho" class="btn btn-dark">Đóng</a>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <c:if test="${thongBao != null}">
                                            <div class="alert alert-success d-flex align-items-center"
                                                 role="alert">
                                                <svg class="bi flex-shrink-0 me-2" width="0" height="0"
                                                     role="img"
                                                     aria-label="Success:">
                                                    <use xlink:href="#check-circle-fill"/>
                                                </svg>
                                                <div>
                                                    <i class="fa-regular fa-circle-check"></i><label
                                                        style="padding-left: 5px">${thongBao}</label>
                                                </div>
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
