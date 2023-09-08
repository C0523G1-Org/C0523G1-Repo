<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/6/2023
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <title>Tài chính</title>

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
                    <ul class="navbar-nav  ">
                        <li class="nav-item active">
                            <a class="nav-link" href="#">
                                Trang chủ <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tre-em">Trẻ em</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Chứng nhận</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tai-chinh">Tài chính</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tai-khoan?action=dangNhap">Đăng nhập</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!-- end header section -->


<div class="container">

    <div class="row">
        <div class="col-xl-6" style="text-align: center">
            <div style="border-bottom: 1px solid green;">
                <img src="images/anh-trang-tai-chinh/5.png" alt="logo" style="width: 100px">
                <strong>DỰ ÁN NUÔI EM</strong><br>
            </div>


            <br>
            <p>Trang tài chính của dự án Nuôi Em
                Được cập nhật bởi chính 5 bạn TNV là anh chị Nuôi Em.

                Dự án Nuôi Em không có kiểm toán, không phải là Quỹ, không có số tài khoản Quỹ nhưng sẽ tìm mọi cách
                "chặt chẽ" và "minh bạch" hơn cả kiểm toán.</p>
        </div>
        <div class="col-xl-6">
            <p>
                Trong những nỗ lực công khai tài chính, các bạn sẽ thấy dự án Nuôi Em là một dự án rất "kỳ lạ".
                Không quá trú trọng hết vào mặt "giấy tờ" - cái mà dự án cho rằng rất nhiều cách để làm được.</p>

            <p> Dự án còn "tự làm khó mình" khi nghĩ ra rất nhiều cách và còn cùng lắng nghe các cách khác mọi người góp
                ý để ngày càng minh bạch hơn theo-rất-nhiều-cách và luôn luôn cập nhật những cách làm mới. Nếu có cách
                nào
                bạn cứ liên hệ với chúng tôi ở phía dưới.</p>

            <p> Dự án còn vinh dự được nhiều anh chị em ở tổ chức phi chính phủ, phi lợi nhuận, tổ chức kiểm toán uy tín
                tham gia nuôi em sau này còn tham gia hỗ trợ kiểm soát, giúp tối ưu về mặt tài chính giúp dự án.</p>

            <p> Khi đồng ý nuôi em, cũng có nghĩa bạn đã hoàn toàn nắm rõ thông tin về Chương trình, uỷ quyền, đồng
                thuận,
                tin tưởng về cách thức quản lý tài chính, triển khai thực hiện do Nhóm Nuôi em đang vận hành, triển
                khai, đồng thời trao quyền để Nhóm quyết định những vấn đề liên quan đến Chương trình.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/2.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Update hàng ngày</h5>
                            <p class="card-text"><b>vào buổi tối</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/3.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Sao kê theo</h5>
                            <p class="card-text"><b>từng tháng</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/4.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Giám sát bởi</h5>
                            <p class="card-text"><b>20+ bạn TNV</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div>
        <form action="/tai-chinh?action=xem" method="post">
            <h5>Nhập thời gian bạn muốn xem sao kê:</h5>
            <div class="row">
                <div class="col-12 col-xl-6">
                    <div class="row g-3 align-items-center">
                        <div class="col-auto">
                            <label for="thang" class="col-form-label">Tháng:</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="thang" class="form-control" name="thang" value="9"
                                   aria-describedby="passwordHelpInline">
                        </div>
                    </div>
                </div>
                <div class="col-12 col-xl-6">
                    <div class="row g-3 align-items-center">
                        <div class="col-auto">
                            <label for="nam" class="col-form-label">Năm:</label>
                        </div>
                        <div class="col-auto">
                            <input type="text" id="nam" class="form-control" name="nam" value="2023"
                                   aria-describedby="passwordHelpInline">
                        </div>
                    </div>
                </div>
            </div>
            <button type="submit" class="btn btn-success">Hiển thị</button>

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="title-1 m-b-25 justify-content-center d-flex">Lịch sử giao dịch</h2>
                    <div class="table-responsive table--no-card m-b-40">
                        <table class="table table-success table-striped">
                            <thead>
                            <div>
                                <tr style="background-color: lightgoldenrodyellow">
                                    <th colspan="2">
                                        Tổng số tiền:
                                    </th>
                                    <th colspan="2">
                                        <fmt:formatNumber value="${chenhLech}" type="currency" currencySymbol=""
                                                          maxFractionDigits="0"/>
                                    </th>
                                </tr>
                                <tr style="background-color: lightgoldenrodyellow">
                                    <th colspan="2">
                                        Tổng thu:
                                    </th>
                                    <th colspan="2">
                                        <fmt:formatNumber value="${tongThu}" type="currency" currencySymbol=""
                                                          maxFractionDigits="0"/>
                                    </th>
                                </tr>
                                <tr style="background-color: lightgoldenrodyellow">
                                    <th colspan="2">
                                        Tổng chi:
                                    </th>
                                    <th colspan="2">
                                        <fmt:formatNumber value="${tongChi}" type="currency" currencySymbol=""
                                                          maxFractionDigits="0"/>
                                    </th>
                                </tr>
                            </div>

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
                                        <fmt:formatNumber value="${d.soTien}" type="currency" currencySymbol=""
                                                          maxFractionDigits="0"/>
                                    </td>
                                    <td><c:out value="${d.noiDungGiaoDich}"/></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </form>
    </div>


</div>

<!-- info section -->
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

<<<<<<< HEAD
<!-- end info_section -->

=======
>>>>>>> 1973b34bfb9d3afe3ab7160d24e4010f400aaeeb
<!-- footer section -->
<section class="container-fluid footer_section">
    <p>
        &copy; 2023 Mọi quyền được bảo lưu bởi
        <a href="#">Nuôi em</a>
    </p>
</section>
<!-- footer section -->

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<<<<<<< HEAD

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
=======
>>>>>>> 1973b34bfb9d3afe3ab7160d24e4010f400aaeeb

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
<script src="js/main.js"></script>

</body>
</html>
