<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Danh sách tài khoản</title>

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
                                <a href="/tai-chinh">Tài chính</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="/tai-khoan">
                            <i class="fas fa-users"></i>Tài khoản</a>
                    </li>
                    <li>
                        <a href="/dang-nhap-admin.jsp?tenTaiKhoan=admin&matKhau=admin">
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
        <div class="container">
            <div class="main-content">

                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="title-1 m-b-25 justify-content-center d-flex" style="color: #0c0c0c; margin-bottom: 0">
                            Danh sách tài khoản</h2>
                        <a class="btn btn-outline-light" href="/tai-khoan?action=themTaiKhoan" style="color: black">
                            <i class="fas fa-plus"></i>
                        </a>
                        <div class="table-responsive table--no-card m-b-40">
                            <table id="myTable" class="table table-borderless table-striped table-earning">
                                <thead>
                                <tr class="table-primary">
                                    <th class="table-primary">STT</th>
                                    <th class="table-primary">Tài khoản</th>
                                    <th class="table-primary">Mật khẩu</th>
                                    <th class="table-primary">Đổi mật khẩu</th>
                                    <th class="table-primary">Xoá</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="tai_khoan" items="${list}" varStatus="loop">
                                    <tr class="table-light">
                                        <td><c:out value="${loop.count}">STT</c:out></td>
                                        <td><c:out value="${tai_khoan.tenTaiKhoan}"></c:out></td>
                                        <td><c:out value="${tai_khoan.matKhau}"></c:out></td>
                                        <td>
                                            <a href="/tai-khoan?action=suaTaiKhoan&maTaiKhoan=${tai_khoan.maTaiKhoan}&tenTaiKhoan=${tai_khoan.tenTaiKhoan}"> <i class="fas fa-pencil-square-o" style="color: black"></i></a>
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal"
                                                    onclick="guiThongTin('${tai_khoan.getMaTaiKhoan()}','${tai_khoan.tenTaiKhoan}')">
                                                <i class="fas fa-trash" style="color: black"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
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
<<<<<<< HEAD
<div class="container">
    <%--    --%>
<%--    <table class="table table-hover">--%>
<%--        <thead>--%>
<%--        <tr class="table-primary">--%>
<%--            <td class="table-primary">STT</td>--%>
<%--            <td class="table-primary">Tên tài khoản</td>--%>

<%--            <td colspan="3" style="text-align: center" class="table-primary">Quản lý</td>--%>
<%--        </tr>--%>
<%--        </thead>--%>
<%--        <tbody>--%>
<%--        <c:forEach var="tai_khoan" items="${list}" varStatus="loop">--%>
<%--            <tr class="table-light">--%>
<%--                <td class="table-info"><c:out value="${loop.count}">STT</c:out></td>--%>
<%--                <td class="table-info"><c:out value="${tai_khoan.tenTaiKhoan}"></c:out></td>--%>
<%--                <td class="table-info" style="text-align: center">--%>
<%--                    <a href="/tai-khoan?action=suaTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Sửa thông tin </a>--%>
<%--                </td>--%>

<%--&lt;%&ndash;                <td class="table-info" style="text-align: center">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <button type="button" class="btn btn-outline-info" data-bs-target="modal">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <a href="/tai-khoan?action=timThongTinTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Chi tiết&ndash;%&gt;--%>
<%--&lt;%&ndash;                            tài&ndash;%&gt;--%>
<%--&lt;%&ndash;                            khoản </a>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </button>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </td>&ndash;%&gt;--%>
<%--                <td class="table-info" style="text-align: center">--%>
<%--                        <button type="button" class="btn btn-outline-info" data-bs-toggle="modal"--%>
<%--                                data-bs-target="#modalThongTin"--%>
<%--                                onclick="guiTenTaiKhoan('${tai_khoan.tenTaiKhoan}')">--%>
<%--                            Chi tiết tài khoản--%>
<%--                        </button>--%>
<%--                </td>--%>
<%--                <td class="table-info" style="text-align: center">--%>
<%--                    <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal"--%>
<%--                            data-bs-target="#exampleModal"--%>
<%--                            onclick="guiThongTin('${tai_khoan.maTaiKhoan}','${tai_khoan.tenTaiKhoan}')">--%>
<%--                        Xóa tài khoản--%>
<%--                    </button>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--        </tbody>--%>
<%--    </table>--%>
    <%--    --%>
</div>
<%--modal xóa--%>
<%--<div class="modal fade" tabindex="-1" id="exampleModal" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
=======
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->
<%--modal--%>
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/tai-khoan?action=xoaTaiKhoan" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel" style="color: black; text-align: center">XÓA TÀI KHOẢN</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input type="hidden" id="maTaiKhoan" name="maTaiKhoan">
                       <div style="color:#C63D2F;">
                           Bạn có muốn xóa tài khoản <strong><span id="tenTaiKhoan"></span></strong> không ?
                           <br>
                           (Lưu ý: Hành động này sẽ không thể hoàn tác)
                       </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="submit" class="btn btn-danger">Xác nhận</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
<%--modal xóa end--%>

<%--modal xem thông tin--%>
<div class="modal fade" tabindex="-1" id="modalThongTin" aria-labelledby="xemThongTin" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông tin</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group">
                    <li class="list-group-item active" aria-current="true">Thông tin tài khoản: <span
                            id="tenTK"></span></li>
                        <li class="list-group-item">Mã tài khoản: <span id="maTaiKhoanShow">${tai_khoan_dto.getMaTaiKhoan()}</span></li>
                        <li class="list-group-item">Mật khẩu: <span id="matKhauShow">${tai_khoan_dto.getMatKhau()}</span></li>
                        <li class="list-group-item">Tên chủ tài khoản: <span id="tenNguoiNuoiShow">${tai_khoan_dto.getTenNguoiNuoi()}</span></li>
                        <li class="list-group-item">Giới tính: <span id="gioiTinhShow">${tai_khoan_dto.getGioiTinh()}</span></li>
                        <li class="list-group-item">SDT: <span id="soDienThoaiShow">${tai_khoan_dto.getSoDienThoai()}</span></li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
            </div>
        </div>
    </div>
</div>
<%--modal xem thông tin--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<%--modal end--%>
<script>
    function guiThongTin(maTaiKhoan, tenTaiKhoan) {
        document.getElementById("tenTaiKhoan").innerText = tenTaiKhoan;
        document.getElementById("maTaiKhoan").value = maTaiKhoan;
    }
    function guiTenTaiKhoan(tenTaiKhoan) {
        document.getElementById("tenTK").innerText = tenTaiKhoan;
    }
</script>
<script src="vendor/bootstrap-5.2.3-dist/js/bootstrap.bundle.js"></script>


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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
