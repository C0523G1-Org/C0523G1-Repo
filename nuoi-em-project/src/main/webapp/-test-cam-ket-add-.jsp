<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/10/2023
  Time: 11:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
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

    <title>Cam kết</title>

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
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet"/>
</head>
<body>
<%--header--%>
    <!-- header section strats -->
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
                            <li class="nav-item active">
                                <a class="nav-link" href="#">
                                    Trang chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/tre-em-tc&maTaiKhoan=${maTaiKhoan}">Trẻ em</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Chứng nhận</a>
                            </li>
                            <li class="nav-item">

                                <%--                                <a class="nav-link" href="tai-chinh">Tài chính</a>--%>

                                <%--                                <a class="nav-link" href="/tai-chinh">Tài chính</a>--%>

                                <a class="nav-link"
                                   href="/tai-chinh?action&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Tài
                                    chính</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDarkDropdownMenuLink"
                                   role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Xin chào: <span>${tenTaiKhoan}</span>
                                </a>
                                <ul class="dropdown-menu dropdown-menu-dark"
                                    aria-labelledby="navbarDarkDropdownMenuLink">
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}">Chi tiết tài khoản</a></li>--%>
                                    <li><a class="dropdown-item"
                                           href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Chi
                                        tiết tài khoản</a></li>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay đổi mật khẩu</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết tài khoản</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết bản cảm kết</a></li>--%>
                                    <%--&lt;%&ndash;                                    LIÊN thêm&ndash;%&gt;--%>
                                    <%--                                    <li><a class="dropdown-item" href="/nguoi-nuoi?action=xemTre&maTaiKhoan=${maTaiKhoan}">Chi tiết trẻ em</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay đổi mật khẩu</a></li>--%>

                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết tài khoản</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết bản cảm kết</a></li>--%>
                                    <%--&lt;%&ndash;                                    LIÊN thêm&ndash;%&gt;--%>
                                    <%--                                    <li><a class="dropdown-item" href="/nguoi-nuoi?action=xemTre&maTaiKhoan=${maTaiKhoan}">Chi tiết trẻ em</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay đổi mật khẩu</a></li>--%>
                                    <%--&lt;%&ndash;                                    <li><a class="dropdown-item" href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}">Chi tiết tài khoản</a></li>&ndash;%&gt;--%>
                                    <%--                                    <li><a class="dropdown-item" href="tai-khoan?action=chiTietTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Chi tiết tài khoản</a></li>--%>
                                    <%--&lt;%&ndash;                                    <li><a class="dropdown-item" href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay đổi mật khẩu</a></li>&ndash;%&gt;--%>

                                    <%-->>>>>>> e633ab4f3c8bf5d158c27a3b63e80325265ae94f--%>
                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết tài khoản</a></li>--%>
                                    <%--                                    <li><a class="dropdown-item" href="#">Chi tiết bản cảm kết</a></li>--%>
                                    <%--                                    lien--%>
                                    <li><a class="dropdown-item"
                                           href="/nguoi-nuoi?action=xemTre&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Chi
                                        tiết trẻ em</a></li>
                                    <%--                                    lienEnd--%>
                                    <li><a class="dropdown-item"
                                           href="tai-khoan?action=suaTaiKhoan&maTaiKhoan=${maTaiKhoan}&tenTaiKhoan=${tenTaiKhoan}">Thay
                                        đổi mật khẩu</a></li>
                                    <%--                                    lien--%>
                                    <%--                                        Thien--%>
                                    <li><a class="dropdown-item" href="tai-khoan?action=dangXuat">Đăng xuất</a></li>
                                    <%--                                        thien-end --%>

                                    <%--                                        BUTTON LOG-OUT MODAL --%>
                                    <%--                                    <li>--%>
                                    <%--                                        <button type="button" data-bs-toggle="modal"--%>
                                    <%--                                                data-bs-target="#exampleModal">--%>
                                    <%--                                            <a class="dropdown-item" href="#">Đăng xuất</a>--%>
                                    <%--                                        </button>--%>
                                    <%--                                    </li>--%>
                                    <%--                                        BUTTON LOG-OUT MODAL --%>


                                    <%--                                    lienEnd--%>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- end header section -->

<%--header end--%>

<%--body--%>
<%--<section class="offer_section hero_next_section-margin layout_padding">--%>
    <div class="container">
        <div class="heading_container">
            <h2>
                Thêm một lời hứa, thêm một nụ cười!
            </h2>
            <p>
                Mọi thắc mắc về chính sách, vui lòng LH: 1900 1009 hoặc nuoiem@gmail.com
            </p>
        </div>
        <div class="row">
            <div class="col-lg-10">
                <div class="container mt-5" style="width: 28rem;">
                    <form action="" method="post">
                        <div class="card">
                            <div class="card-body">
                                <table>
                                    <tr>
                                        <td colspan="2">
                                            <div class="mb-3">
                                                <h3 class="card-title">Cam kết</h3>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="mb-3">
                                                <h5 class="card-subtitle mb-3 text-body-secondary">Xin chào: ${tenTaiKhoan}</h5>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="mb-3">
                                                <span class="text">Người làm cam kết: </span><span id-="#"></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="mb-3">
                                                <span class="text">Ngày làm cam kết: </span>

                                            </div>
                                        </td>
                                        <td>
                                            <div class="mb-3">
                                                <span id="currentDate"> </span>(hôm nay)
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="mb-3">
                                                <span class="text">Tên trẻ nhận nuôi: </span>

                                            </div>
                                        </td>
                                        <td>
                                            <div class="mb-3">
                                                <span id="#"></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="mb-3">
                                                <label for="soTien"><span class="text">Số tiền trợ cấp: </label>
                                            </div>
                                        </td>

                                        <td>
                                            <div class="mb-3">
                                                <input type="number" id="soTien" name="soTien" placeholder="Số tiền">
                                            </div>
                                        </td>


                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="mb-3">
                                                <label for="moTa"><span class="text">Mô tả sơ lược: </span></label>

                                            </div>
                                        </td>
                                        <td>
                                            <div class="mb-3">
                                                <span id="moTa"></span>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="mb-3">
                                                <input type="checkbox" id="emDongY">
                                                <label for="emDongY">Tôi đồng ý với <a href="#" style="text-decoration: none">chính
                                                    sách</a>
                                                    của <a href="#" style="text-decoration: none">Nuôi Em</a></label>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <div class="mb-3">
                                                <button type="submit" id="button" class="btn btn-success">Xác nhận</button>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
<%--</section>--%>
<%--body end--%>


<%--about us--%>
<section class="info_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="info_logo">
                    <div>
                        <a href="">
                            <img height="50px" width="50px" src="images/logo.png" alt=""/>
                            <span>
                  Nuôi em
                </span>
                        </a>
                    </div>
                    <p>
                        Dự án cộng đồng mang lại cho trẻ em vùng cao một cuộc sống tốt đẹp hơn. Ngoài ra còn truyền tải
                        đến cá nhân, tổ chức về việc làm thiết thực vì tương lai của các em
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_links ">
                    <h5>
                        Liên hệ
                    </h5>
                    <p class="pr-0 pr-md-4 pr-lg-5">
                        SDT : 0123456789
                    </p>
                    <p class="pr-0 pr-md-4 pr-lg-5">
                        Email : nuoiem@gmail.com
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Thông tin
                    </h5>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Ngân hàng: Vietcombank
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        STK: 012345678910
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Tên người nhận: Tổ chức Nuôi em
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Chi nhánh: Đà Nẵng
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="pl-0 pl-lg-5 pl-md-4">
                    <h5>
                        Khu vực

                    </h5>
                    <p>
                        Hà Giang, Cao Bằng, Lào Cai, Bắc Kạn, Lạng Sơn, Tuyên Quang, Yên Bái, Thái Nguyên, Phú Thọ, Bắc
                        Giang, Lai Châu, Điện Biên, Sơn La, Hòa Bình
                    </p>

                </div>
            </div>
        </div>
    </div>
</section>
<%--about us end--%>


<%--footer--%>
<section class="container-fluid footer_section">
    <p>
        &copy; 2023 Mọi quyền được bảo lưu bởi
        <a href="nuoi-em-trang-chu.jsp">Nuôi em</a>
    </p>
</section>
<%--footer end--%>
<%--script --%>
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
<script>
    var curDate = new Date();

    // Ngày hiện tại
    var curDay = curDate.getDate();

    // Tháng hiện tại
    var curMonth = curDate.getMonth() + 1;

    // Năm hiện tại
    var curYear = curDate.getFullYear();

    // Gán vào thẻ HTML
    document.getElementById('currentDate').innerHTML = curYear + "/" + curMonth + "/" + curDay;
</script>
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
<%--script --%>
</body>
</html>
