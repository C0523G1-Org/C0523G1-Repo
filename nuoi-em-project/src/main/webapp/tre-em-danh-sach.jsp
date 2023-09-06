<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Quản lý</title>

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

</head>
<body class="animsition">
<div class="page-wrapper">
    <!-- HEADER MOBILE-->
    <header class="header-mobile d-block d-lg-none">
        <div class="header-mobile__bar">
            <div class="container-fluid">
                <div class="header-mobile-inner">
                    <a class="logo" href="index.html">
                        <%--                        <img src="images/icon/logo.png" alt="CoolAdmin"/>--%>
                        <h3>Team 2</h3>
                    </a>
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
                                <a href="#">Trẻ em</a>
                            </li>
                            <li>
                                <a href="/nguoi-giam-ho">Người giám hộ</a>
                            </li>
                            <li>
                                <a href="#">Mạnh thường quân</a>
                            </li>
                            <li>
                                <a href="#">Bảng cam kết</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-users"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-arrow-left"></i>Trở về</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
    <!-- END HEADER MOBILE-->

    <!-- MENU SIDEBAR-->
    <aside class="menu-sidebar d-none d-lg-block">
        <div class="logo">
            <a class="logo" href="index.html">
                <%--                        <img src="images/icon/logo.png" alt="CoolAdmin"/>--%>
                <h3>Team 2</h3>
            </a>
        </div>
        <div class="menu-sidebar__content js-scrollbar1">
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
                                <a href="#">Trẻ em</a>
                            </li>
                            <li>
                                <a href="/nguoi-giam-ho">Người giám hộ</a>
                            </li>
                            <li>
                                <a href="#">Mạnh thường quân</a>
                            </li>
                            <li>
                                <a href="#">Bảng cam kết</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            <i class="fas fa-users"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="#">
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
        <header class="header-desktop">
            <div class="section__content section__content--p30">
                <div class="container-fluid">
                    <div class="header-wrap">
                        <form class="form-header" action="" method="POST">
                        </form>
                        <div class="header-button">
                            <div class="account-wrap">
                                <div class="account-item clearfix js-item-menu">
                                    <div class="image">
                                        <img src="images/icon/avatar.jpg" alt="Zhang Ming"/>
                                    </div>
                                    <div class="content">
                                        <a class="js-acc-btn" href="#">Zhang Ming</a>
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
                                                    <a href="#">Zhang Ming</a>
                                                </h5>
                                                <span class="email">zhangming8443@gmail.com</span>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__body">
                                            <div class="account-dropdown__item">
                                                <a href="#">
                                                    <i class="zmdi zmdi-account"></i>Thông tin cá nhân</a>
                                            </div>
                                        </div>
                                        <div class="account-dropdown__footer">
                                            <a href="#">
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

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="title-1 m-b-25 justify-content-center d-flex">Danh sách trẻ em</h2>
                    <div class="table-responsive table--no-card m-b-40">
                        <table class="table table-borderless table-striped table-earning">
                            <thead>
                            <tr>
                                <th>Mã</th>
                                <th>Tên</th>
                                <th>Giới tính</th>
                                <th>Ngày sinh</th>
                                <th>Mô tả</th>
                                <th>Người giám hộ</th>
                                <th>Khu vực</th>
                                <th>Trạng thái</th>
                                <th>Ảnh</th>
                                <th>Sửa</th>
                                <th>Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${treEmDto}" var="treEmDto">
                                <tr>
                                    <td>
                                            ${treEmDto.getMaTreEm()}
                                    </td>

                                    <td>
                                            ${treEmDto.getTenTreEm()}
                                    </td>

                                    <td>
                                        <c:if test="${treEmDto.getGioiTinh() == 1}">Nam</c:if>
                                        <c:if test="${treEmDto.getGioiTinh() == 0}">Nữ</c:if>
                                    </td>

                                    <c:set var="dateString" value="${treEmDto.getNgaySinh()}"/>
                                    <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                                    <td>
                                        <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                                    </td>

                                    <td>
                                            ${treEmDto.getMoTa()}
                                    </td>

                                    <td>
                                            ${treEmDto.getTenNguoiGiamHo()}
                                    </td>

                                    <td>
                                            ${treEmDto.getTenKhuVuc()}
                                    </td>

                                    <td>
                                        <c:if test="${treEmDto.getTrangThai() == 1}">Đã được nhận nuôi</c:if>
                                        <c:if test="${treEmDto.getTrangThai() == 0}">Chưa được nhận nuôi</c:if>
                                    </td>

                                    <td>
                                        <img height="50px" width="50px" src="${treEmDto.getHinhAnh()}" alt="">
                                    </td>
                                    <td>
                                        <a href="TreEm?action=sua&id=${treEm.getMaTreEm()}"
                                           role="button">
                                            <i class="fas fa-pencil-square-o" style="color: black"></i></a>
                                    </td>
                                    <td>
                                        <button><i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="row">
                <a class="btn btn-outline-danger" href="/tre-em?action=them">Them moi</a>
            </div>
            <div class="row">
                <div class="col-lg-12 justify-content-center">
                    <div class="copyright">
                        <p>Copyright © 2023 Team 2. All rights reserved.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->

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
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js"></script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js"></script>

<!-- Main JS-->
<script src="js/main.js"></script>

</body>
</html>
