<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Danh sách bảng cam kết</title>

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
                        <a href="#">
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
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2 class="title-1 m-b-25 justify-content-center d-flex"
                            style="color: #0c0c0c; margin-bottom: 0">
                            Danh sách bảng cam kết</h2>
                        <a class="btn btn-outline-light" href="/cam-ket-them-moi.jsp" style="color: black">
                            <i class="fas fa-plus"></i>
                        </a>
                        <div class="table-responsive table--no-card m-b-40">
                            <table id="myTable" class="table table-borderless table-striped table-earning">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Số tiền (VND)</th>
                                    <th>Ngày nhận nuôi</th>
                                    <th>Trạng thái</th>
                                    <th>Trẻ em</th>
                                    <th>Người nuôi</th>
                                    <th>Sửa</th>
                                    <th>Xóa</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${danhSach}" var="d" varStatus="loop">
                                    <tr>
                                        <td><c:out value="${loop.count}"/></td>
                                        <td>
                                            <p><fmt:formatNumber value="${d.soTien}"/></p>
                                        </td>

                                        <c:set var="dateString" value="${d.getNgayNhanNuoi()}"/>
                                        <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                                        <td>
                                            <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                                        </td>

                                            <%--   Xử lý trạng thái  --%>
                                        <td>
                                            <c:if test="${d.trangThai == 1}">Nhận nuôi</c:if>
                                        </td>
                                        <td><c:out value="${d.tenTreEm}"/></td>
                                        <td><c:out value="${d.tenNguoiNuoi}"/></td>
                                        <td>
                                            <a href="cam-ket?action=sua&maCamKet=${d.maCamKet}"
                                               role="button">
                                                <i class="fas fa-pencil-square-o" style="color: black"></i></a>
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal"
                                                    onclick="sendInforModal('${d.maCamKet}','${d.tenNguoiNuoi}','${d.tenTreEm}')"><i
                                                    class="fas fa-trash"></i>
                                            </button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
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
<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->

<%--Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/cam-ket?action=xoa" method="post">
                <div class="modal-header" style="background-color: #dc3545">
                    <h5 class="modal-title" id="exampleModalLabel"  style="color: WHITE">XÓA CAM KẾT</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div style=" color: #C63D2F " class="modal-body">
                    <input type="hidden" id="xoa_ma" name="xoa_ma">
                    Bạn muốn xóa cam kết giữa trẻ <strong><span id="tenTreEm"></span> với người nuôi <span id="tenNguoiNuoi"></span>
                </strong> NÀY KHÔNG ? <br>
                    (Thao tác này khi thực hiện sẽ không thể hoàn tác)
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-danger">Xác nhận</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function sendInforModal(ma,tenNguoiNuoi,tenTreEm) {
        document.getElementById("xoa_ma").value = ma;
        document.getElementById("tenNguoiNuoi").innerText =tenNguoiNuoi
        document.getElementById("tenTreEm").innerText =tenTreEm
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

</body>
</html>
<script>
$(document).ready(function () {
        $('#mytable').DataTable({
            language: {
                "decimal": ",",
                "thousands": ".",
                "sEmptyTable": "Không có dữ liệu",
                "sInfo": "Đang hiển thị _START_ đến _END_ của tổng số _TOTAL_ mục",
                "sInfoEmpty": "Đang hiển thị 0 đến 0 của tổng số 0 mục",
                "sInfoFiltered": "(được lọc từ tổng số _MAX_ mục)",
                "sInfoPostFix": "",
                "sInfoThousands": ",",
                "sLengthMenu": "Hiển thị _MENU_ mục",
                "sLoadingRecords": "Đang tải...",
                "sProcessing": "Đang xử lý...",
                "sSearch": "Tìm kiếm:",
                "Show:": "",
                "entries": "",
                "oPaginate": {
                    "sFirst": "Đầu",
                    "sLast": "Cuối",
                    "sNext": "Tiếp",
                    "sPrevious": "Trước"
                },

            },
            color: {
                "oPaginate": {
                    "sFirst": "blue",
                    "sLast": "green",
                    "sNext": "green",
                    "sPrevious": "blue"
                },
            }
        });
    });
</script>
</body>
</html>
