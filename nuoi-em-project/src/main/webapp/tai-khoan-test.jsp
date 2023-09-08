<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/8/2023
  Time: 11:09 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

    <!-- Basic -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Nuôi em</title>

    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css"/>
    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700|Poppins:400,700|Roboto:400,700&display=swap"
          rel="stylesheet"/>


    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"/>
    <%--    <link rel="stylesheet" href="vendor/bootstrap-5.2.3-dist/css/bootstrap.css" type="text/css">--%>
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet"/>
</head>

<body>
<style>

    h4 {
        text-align: center;
    }

</style>
<header class="header_section">
    <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
            <a class="navbar-brand" href="#">
                <img src="images/logo.png" width="50px" height="50px" alt=""/>
                <span>
              Nuôi em
            </span>
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                    <ul class="navbar-nav  ">

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink"
                               role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Tài khoản: ${tenTaiKhoan}
                            </a>
                            <ul class="dropdown-menu dropdown-menu-dark"
                                aria-labelledby="navbarDarkDropdownMenuLink">
                                <li><a class="dropdown-item" href="#">Liên hệ với chúng tôi</a></li>
                                <li><a class="dropdown-item"
                                       href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Đổi
                                    mật khẩu</a></li>
                                <li><a class="dropdown-item" href="tai-khoan?action=dangXuat">Đăng xuất</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<div class="container mt-4 mb-1">
    <div class="container title">
        <h4>Thông tin tài khoản</h4>
        <button type="button" class="btn btn-outline-success"><a
                href="nguoi-nuoi?action=sua1&maNguoiNuoi=${maTaiKhoan}">Thay đổi thông tin</a></button>
    </div>
</div>
<div class="container mt-3">
    <div class="table-responsive">
        <table class="table mt-3">
            <thead>
            <tr>
                <th scope="col">Tên tài khoản</th>
                <th scope="col">Chủ tài khoản</th>
                <th scope="col">Email</th>
                <th scope="col">Giới tính</th>
                <th scope="col">SDT</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${thongKe}" var="tk" varStatus="loop">
                <tr>
                    <td>${tk.tenTaiKhoan}</td>
                    <td>${tk.tenNguoiNuoi}</td>
                    <td>${tk.email}</td>
                    <td>
                        <c:if test="${tk.gioiTinhNguoiNuoi == 0}">
                            Nữ
                        </c:if>
                        <c:if test="${tk.gioiTinhNguoiNuoi == 1}">
                            Nam
                        </c:if>
                    </td>
                    <td>${tk.soDienThoai}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="container  mt-4 mb-1">
    <div class="container title">
        <h4>Danh sách cam kết</h4>
        <button type="button" class="btn btn-outline-success"><a href="#">Thêm mới cam kết</a></button>
    </div>
</div>
<div class="container mt-3">
    <div class="table-responsive">
        <table class="table mt-3">
            <thead>
            <tr>
                <th scope="col">Người làm cam</th>
                <th scope="col">Ngày tạo cam kết</th>
                <th scope="col">Trạng thái cam kết</th>
                <th scope="col">Tên trẻ em</th>
                <th scope="col">Giới tính</th>
                <th scope="col">Ngày sinh</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${thongKeCamKet}" var="tkck" varStatus="loop">
                <tr>
                    <td>${tkck.tenNguoiNuoi}</td>
                    <td>${tkck.ngayLamCamKet}</td>
                    <td>
                        <c:if test="${tkck.trangThaiHopDong == 0}">
                            Đã hủy
                        </c:if>
                        <c:if test="${tkck.trangThaiHopDong == 1}">
                            Tồn tại
                        </c:if>
                    </td>
                    <td>${tkck.tenTreEm}</td>
                    <td>
                        <c:if test="${tkck.gioiTinhTreEm == 0}">
                            Nữ
                        </c:if>
                        <c:if test="${tkck.gioiTinhTreEm == 1}">
                            Nam
                        </c:if>
                    </td>
                    <td>${tkck.ngaySinhTreEm}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="container mt-4 mb-1">
    <div class="container title">
        <h4>Thống kê tài chính cá nhân</h4>
        <button type="button" class="btn btn-outline-success"><a href="#">Phản hồi</a></button>
    </div>
</div>
<div class="container mt-3">
    <div class="table-responsive">
        <table class="table mt-3">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Ngày giao dịch</th>
                <th scope="col">Nội dung giao dịch</th>
                <th scope="col">Số tiền giao dịch (VND)</th>
                <th scope="col">Tên trẻ em</th>
                <th scope="col">Ngày làm cam kết</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${traCuuTaiChinh}" var="tc" varStatus="loop">
                <tr>
                    <td><c:out value="${loop.count}"></c:out></td>
                    <td>${tc.ngayGiaoDich}</td>
                    <td>${tc.noiDungGiaoDich}</td>
                    <td><fmt:formatNumber value="${tc.soTien}" type="currency" currencySymbol=""
                                          maxFractionDigits="0"/></td>
                    <td>${tc.tenTreEm}</td>
                    <td>${tc.ngayNhanNuoi}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<%--<div class="my-footer">--%>
<%--    <p>--%>
<%--        &copy; 2023 Mọi quyền được bảo lưu bởi--%>
<%--        <a href="nuoi-em-trang-chu.jsp">Nuôi em</a>--%>
<%--    </p>--%>
<%--</div>--%>
<%--    script--%>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
        var map = new google.maps.Map(document.getElementById("map"), {
            zoom: 11,
            center: {
                lat: 40.645037,
                lng: -73.880224
            }
        });

        var image = "images/maps-and-flags.png";
        var beachMarker = new google.maps.Marker({
            position: {
                lat: 40.645037,
                lng: -73.880224
            },
            map: map,
            icon: image
        });
    }
</script>
<!-- google map js -->

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
</script>
<!-- end google map js -->

<script>
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>
<script src="vendor/bootstrap-5.2.3-dist/js/bootstrap.bundle.js">
</script>
<%--    script--%>
</body>
</html>
