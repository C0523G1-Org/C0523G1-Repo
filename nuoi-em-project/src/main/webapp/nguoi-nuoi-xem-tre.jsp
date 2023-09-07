<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/5/2023
  Time: 2:24 PM
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

    <title>Danh sách trẻ em đang nhận</title>

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
    <style>
        .custom-list {
            list-style: none; /* Loại bỏ dấu chấm mặc định */
            padding-left: 0; /* Loại bỏ khoảng đệm trái mặc định */
        }

        .custom-list li::before {
            content: "\2022"; /* Ký hiệu dấu chấm • */
            color: #557A46; /* Màu chữ xanh */
            margin-right: 0.5em; /* Khoảng cách giữa dấu chấm và nội dung */
        }
        .hover:hover{
            background-color: #90953b;
        }

    </style>

</head>
<body>
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
                            <a class="nav-link" href="/nuoi-em-dang-nhap.jsp">
                                Trang chủ <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/tre-em">Trẻ em</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Chứng nhận</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Tài chính</a>
                        </li>
                        <%--                        <li class="nav-item">--%>
                        <%--                            <a class="nav-link" href="/tai-khoan?action=dangNhap">Đăng nhập</a>--%>
                        <%--                        </li>--%>
                    </ul>
                </div>
            </div>
        </nav>
    </div>
</header>

<div class="container">


    <div class="row">
        <div class="col-lg-12">
            <h2 class="title-1 m-b-25 justify-content-center d-flex">Danh sách trẻ em</h2>
            <%--            <div class="table-responsive table--no-card m-b-40">--%>

            <c:forEach items="${danhSachTre}" var="d" varStatus="loop">

                <div class="card mb-3 hover" style="max-width: 100%">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="${d.hinhAnh}" class="img-fluid rounded-start" alt="..." width="100%" style="margin-top: 10px; margin-left: 5px">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title"><c:out value="${d.tenTreEm}"/></h5>
                                <p class="card-text">
                                <ul class="custom-list">
                                    <li><strong>Mã trẻ em: </strong><c:out value="${d.maTreEm}"/></li>
                                    <li><strong>Giới tính: </strong>
                                        <c:if test="${d.gioiTinh == 1}">Nam</c:if>
                                        <c:if test="${d.gioiTinh == 0}">Nữ</c:if>
                                    </li>
                                    <c:set var="dateString" value="${d.getNgaySinh()}"/>
                                    <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                                    <li><strong>Ngày sinh: </strong>
                                        <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                                    </li>
                                    <li><strong>Mô tả: </strong>
                                        <c:out value="${d.moTa}"/>
                                    </li>
                                    <li><strong>Tên khu vực: </strong><c:out value="${d.tenKhuVuc}"/></li>
                                    <li><strong>Tên người giám hộ: </strong><c:out value="${d.tenNguoiGiamHo}"/></li>
                                    <li><strong>Số điện thoại: </strong>0<c:out value="${d.soDienThoai}"/></li>
                                </ul>
                                </p>

                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>
        </div>
    </div>
</div>

<script src="js/main.js"></script>


</body>
</html>
