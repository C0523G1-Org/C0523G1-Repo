<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
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
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="index.html">
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
                        <ul class="navbar-nav">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink"
                                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Xin chào: <span>${tenTaiKhoan}</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-dark"
                                    aria-labelledby="navbarDarkDropdownMenuLink">

                                    <li><a class="dropdown-item" href="#">Chi tiết tài khoản</a></li>
                                    <li><a class="dropdown-item" href="#">Chi tiết bản cảm kết</a></li>
                                    <%--                                    LIÊN thêm--%>
                                    <li><a class="dropdown-item"
                                           href="/nguoi-nuoi?action=xemTre&maTaiKhoan=${maTaiKhoan}">Chi tiết trẻ em</a>
                                    </li>
                                    <li><a class="dropdown-item"
                                           href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay
                                        đổi mật khẩu</a></li>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}">Chi tiết tài khoản</a></li>--%>
                                    <li><a class="dropdown-item"
                                           href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Chi
                                        tiết tài khoản</a></li>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay đổi mật khẩu</a></li>--%>

                                    <li><a class="dropdown-item" href="tai-khoan?action=dangXuat">Đăng xuất</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>


    <!-- MAIN CONTENT-->
    <div class="main-content justify-content-center form-control">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Thêm mới cam kết</strong>
                            </div>

                            <div class="card-body card-block">
                                <form action="cam-ket?action=them" method="post"
                                      class="form-horizontal">
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label class=" form-control-label">Trẻ Em</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input readonly type="hidden" id="maTreEm" required name="maTreEm"
                                                   class="form-control" value="${maTreEm}">
                                            <span>${treEm1.tenTreEm}</span>

                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label class=" form-control-label">Người Nuôi</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="hidden" id="maNguoiNuoi" required name="maNguoiNuoi"
                                                   class="form-control" value="${maNguoiNuoi}">
                                            <span>${nguoiNuoi1.tenNguoiNuoi}</span>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="ngayNhanNuoi" class=" form-control-label">Ngày nhận
                                                nuôi</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input id="ngayNhanNuoi" name="ngayNhanNuoi" class="form-control"
                                                   required type="date">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="trangThai" class=" form-control-label">Trạng Thái</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input readonly type="hidden" id="trangThai" required name="trangThai"
                                                   class="form-control" value="1"><span>Nhận Nuôi</span>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="soTien" class=" form-control-label">Số tiền</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="soTien" required name="soTien"
                                                   class="form-control">
                                        </div>
                                    </div>

                                    <div class="row form-group">
                                        <div class="card-footer">
                                            <button type="submit" class="btn btn-warning btn-sm">
                                                <i class="fa fa-dot-circle-o"></i> Xác nhận
                                            </button>
                                            <a href="/cam-ket-danh-sach.jsp" class="btn btn-dark">Đóng</a>
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
<input type="hidden" name="tenTaiKhoan" value="${tenTaiKhoan}">
<input type="hidden" name="maTaiKhoan" value="${maTaiKhoan}">
</body>
</html>

