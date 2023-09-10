<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Danh sách người giám hộ</title>

    <!-- Fontfaces CSS-->
    <link href="css/font-face.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
<<<<<<< HEAD
<<<<<<< HEAD
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
=======
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
>>>>>>> 0b6235c01a40a04723e22e9081d0a895b21566b6
=======
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
=======
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
>>>>>>> fb98c75e0ffe13a24c54327927f6bd6830a30efd

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
        a {
            text-decoration: none;
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
                        <a href="#">
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
                    <h2 class="title-1 m-b-25 justify-content-center d-flex" style="color: #0c0c0c; margin-bottom: 0">
                        Danh sách người giám hộ</h2>
                    <a class="btn btn-outline-light" href="/nguoi-giam-ho?action=themmoinguoigiamho" style="color: black">
                        <i class="fas fa-plus"></i>
                    </a>
                    <div class="table-responsive table--no-card m-b-40">
                        <table class="table table-borderless table-striped table-earning">
                            <thead>
                            <tr>
                                <th>STT</th>
                                <th>Tên</th>
                                <th>Giới Tính</th>
                                <th>Khu Vực</th>
                                <th>Số Điện Thoại</th>
                                <th>Sửa</th>
                                <th>Xóa</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="nguoiGiamHo" items="${nguoiGiamHos}" varStatus="lam">
                                <tr>
                                    <td><c:out value="${lam.count}"/></td>
                                    <td><c:out value="${nguoiGiamHo.tenNguoiGiamHo}"/></td>

                                        <%--            xử lý giới tính--%>
                                    <c:if test="${nguoiGiamHo.gioiTinh == 1}">
                                        <td>Nam</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.gioiTinh == 0}">
                                        <td>Nữ</td>
                                    </c:if>

                                        <%--            xử lý khu vực--%>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 1}">
                                        <td>Hà Giang</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 2}">
                                        <td>Cao Bằng</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 3}">
                                        <td>Lào Cai</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 4}">
                                        <td>Bắc Kạn</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 5}">
                                        <td>Lạng Sơn</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 6}">
                                        <td>Tuyên Quang</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 7}">
                                        <td>Yên Bái</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 8}">
                                        <td>Thái Nguyên</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 9}">
                                        <td>Phú Thọ</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 10}">
                                        <td>Bắc Giang</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 11}">
                                        <td>Lai Châu</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 12}">
                                        <td>Điện Biên</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 13}">
                                        <td>Sơn La</td>
                                    </c:if>
                                    <c:if test="${nguoiGiamHo.maKhuVuc == 14}">
                                        <td>Hòa Bình</td>
                                    </c:if>
                                    <td><c:out value="${nguoiGiamHo.soDienThoai}"/></td>
                                    <td>
                                        <a href="/nguoi-giam-ho?action=capnhatnguoigiamho&maNguoiGiamHo=${nguoiGiamHo.maNguoiGiamHo}"
                                           role="button" data-bs-toggle="modal"
                                           data-bs-target="#exampleModal">
                                            <i class="fas fa-pencil-square-o" style="color: black"></i></a>
                                    </td>
                                    <td>
                                        <button type="button" data-bs-toggle="modal"
                                                data-bs-target="#delete"
                                                onclick="maNguoiGiamHo('${nguoiGiamHo.maNguoiGiamHo}','${nguoiGiamHo.tenNguoiGiamHo}')">
                                            <i class="fas fa-trash"></i></button>
                                    </td>
                                </tr>
<<<<<<< HEAD
<<<<<<< HEAD
=======
                            </c:forEach>
                            </tbody>
                        </table>
=======
>>>>>>> fb98c75e0ffe13a24c54327927f6bd6830a30efd
                                </thead>
                                <tbody>
                                <c:forEach var="nguoiGiamHo" items="${nguoiGiamHos}" varStatus="lam">
                                    <tr>
                                        <td><c:out value="${lam.count}"/></td>
                                        <td><c:out value="${nguoiGiamHo.tenNguoiGiamHo}"/></td>

                                            <%--            xử lý giới tính--%>
                                        <c:if test="${nguoiGiamHo.gioiTinh == 1}">
                                            <td>Nam</td>
                                        </c:if>
                                        <c:if test="${nguoiGiamHo.gioiTinh == 0}">
                                            <td>Nữ</td>
                                        </c:if>

                                            <%--            xử lý khu vực--%>
                                        <c:forEach var="khuvuc" items="${khuVuc}">
                                            <c:if test="${nguoiGiamHo.maKhuVuc == khuvuc.maKhuVuc}">
                                                <td><c:out value="${khuvuc.tenKhuVuc}"/></td>
                                            </c:if>
                                        </c:forEach>
                                        <td><c:out value="${nguoiGiamHo.soDienThoai}"/></td>
                                        <td>
                                            <a href="/nguoi-giam-ho?action=capnhatnguoigiamho&maNguoiGiamHo=${nguoiGiamHo.maNguoiGiamHo}"
                                               role="button" data-bs-toggle="modal"
                                               data-bs-target="#exampleModal">
                                                <button type="button" data-bs-toggle="modal"
                                                        data-bs-target="#exampleModal">
                                                    <i class="fas fa-pencil-square-o" style="color: black"></i>
                                                </button>
                                            </a>
                                        </td>
                                        <td>
                                            <button type="button" data-bs-toggle="modal"
                                                    data-bs-target="#delete"
                                                    onclick="maNguoiGiamHo('${nguoiGiamHo.maNguoiGiamHo}','${nguoiGiamHo.tenNguoiGiamHo}')">
                                                <i class="fas fa-trash"></i></button>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal" tabindex="-1" id="delete" aria-labelledby="exampleModalLabel">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="/nguoi-giam-ho?action=xoa" method="post">
                            <div class="modal-header" style="background-color: #dc3545">
                                <h5 class="modal-title" id="exampleModalLabel" style="color: WHITE; text-align: center">
                                    XÓA NGƯỜI GIÁM HỘ</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body" style="color: black">
                                <input name="maNguoiGiamHo" id="ma" type="hidden">
                                Bạn có chắc chắn muốn xóa <span id="thongBao"
                                                                style="color:red; font-weight: bold"></span> khỏi danh
                                sách người giám hộ ?
                            </div>
                            <div class="modal-body" style="color: red; font-size:medium ">
                                (Lưu ý: Hành động này không thể hoàn tác)
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                                <button type="submit" class="btn btn-danger">Xác Nhận</button>
                            </div>
                        </form>
<<<<<<< HEAD
=======
                            </c:forEach>
                            </tbody>
                        </table>
>>>>>>> 0b6235c01a40a04723e22e9081d0a895b21566b6
=======
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
>>>>>>> fb98c75e0ffe13a24c54327927f6bd6830a30efd
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

<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> fb98c75e0ffe13a24c54327927f6bd6830a30efd

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

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
    function maNguoiGiamHo(maNguoiGiamHo, ten) {
        document.getElementById("ma").value = maNguoiGiamHo;
        document.getElementById("thongBao").innerText = ten;
    }
</script>

<<<<<<< HEAD
=======
>>>>>>> 0b6235c01a40a04723e22e9081d0a895b21566b6
=======
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
>>>>>>> fb98c75e0ffe13a24c54327927f6bd6830a30efd
</body>
</html>
