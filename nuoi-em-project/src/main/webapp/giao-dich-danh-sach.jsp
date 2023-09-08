<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/5/2023
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Tài chính</title>

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
                                                <span class="email">nuoi@gmail.com</span>
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
        <div class="main-content container">

            <div class="section__content section__content--p30">
                <div class="container-fluid">

                    <form action="/giao-dich?action=xem" method="post">
                        <h5 style="color: black">Nhập thời gian bạn muốn xem sao kê:</h5>
                        <br>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="thang" class="col-form-label">Tháng</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="thang" class="form-control" name="thang" value="9"
                                               aria-describedby="passwordHelpInline">
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="row g-3 align-items-center">
                                    <div class="col-auto">
                                        <label for="nam" class="col-form-label">Năm</label>
                                    </div>
                                    <div class="col-auto">
                                        <input type="text" id="nam" class="form-control" name="nam" value="2023"
                                               aria-describedby="passwordHelpInline">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br>
                        <button type="submit" class="btn" style="background-color: #ffff00">Hiển thị</button>

                        <div class="row">
                            <div class="col-lg-12">
                                <h2 class="title-1 m-b-25 justify-content-center d-flex" style="color: black">Lịch sử giao dịch</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                        <tr>
                                            <th colspan="2">
                                                Tổng số tiền:
                                            </th>
                                            <th colspan="2">

                                                <fmt:formatNumber value="${chenhLech}" type="currency" currencySymbol="" maxFractionDigits="0" />
                                            </th>
                                        </tr>
                                        <tr>
                                            <th colspan="2">
                                                Tổng thu:
                                            </th>
                                            <th colspan="2">
                                                <fmt:formatNumber value="${tongThu}" type="currency" currencySymbol="" maxFractionDigits="0" />
                                            </th>
                                        </tr>
                                        <tr>
                                            <th colspan="2">
                                                Tổng chi:
                                            </th>
                                            <th colspan="2">
                                                <fmt:formatNumber value="${tongChi}" type="currency" currencySymbol="" maxFractionDigits="0" />
                                            </th>
                                        </tr>
                                        <tr>
                                            <th>STT</th>
                                            <th>Ngày giao dịch</th>
                                            <th>Số tiền(VND)</th>
                                            <th>Nội dung</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:if test="${thongBao!=null}">
                                            <h2>${thongBao}</h2>
                                        </c:if>
                                        <c:forEach items="${danhSachGiaoDich}" var="d" varStatus="loop">
                                            <tr>
                                                <td><c:out value="${loop.count}"/></td>

                                                <c:set var="dateString" value="${d.ngayGiaoDich}"/>
                                                <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                                                <td>
                                                    <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                                                </td>

                                                <td>
                                                    <fmt:formatNumber value="${d.soTien}" type="currency" currencySymbol="" maxFractionDigits="0" />
                                                </td>
                                                <td><c:out value="${d.noiDungGiaoDich}"/></td>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <%--nút thêm--%>
                        <div class="row">
                            <div class="col-12 col-xl-6">
                                <a class="btn" style="background-color: #ffff00; color: black" href="/giao-dich?action=them">Thêm mới tiền thu</a>
                            </div>
                            <div class="col-12 col-xl-6" style="float: right">
                            <a class="btn" style="background-color: #ffff00; color: black; float: right;" href="/giao-dich?action=themChi">Thêm mới tiền chi</a>
                            </div>
                        </div>
                    </form>

                    <div class="row">
                        <div class="col-lg-12 justify-content-center">
                            <div class="copyright">
                                <p>&copy; 2023 Mọi quyền được bảo lưu bởi Nuôi em</p>
                            </div>
                        </div>
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
