<%--
  Created by IntelliJ IDEA.
  User: TUẤN
  Date: 9/5/2023
  Time: 10:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm Mới Người Giám Hộ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
</head>
<body>
<h2 style="text-align: center">Thêm Mới Người Giám Hộ</h2>
<form action="/nguoi-giam-ho?action=them" method="post">
    <div class="mb-3">
        <label for="tenNguoiGiamHo" class="form-label">Họ và tên</label>
        <input type="text" class="form-control" id="tenNguoiGiamHo" aria-describedby="tenNguoiGiamHo" name="tenNguoiGiamHo">
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gioiTinh" id="gioiTinh1" value="1">
        <label class="form-check-label" for="gioiTinh1">Nam</label>
    </div>
    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gioiTinh" id="gioiTinh2" value="0">
        <label class="form-check-label" for="gioiTinh2">Nữ</label>
    </div>
<<<<<<< HEAD
    <div class="col-12 col-md-9">
        <label for="maKhuVuc">
            <select name="maKhuVuc" id="maKhuVuc" class="form-control">
                <option disabled selected>Chọn khu vực</option>
                <c:forEach var="k" items="${khuVuc}">
                    <option value="${k.getMaKhuVuc()}">
                            ${k.getTenKhuVuc()}
                    </option>
                </c:forEach>
            </select>
        </label>
=======
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
                                        <a href="/nuoi-em-trang-chu.jsp">
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
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Thêm mới người giám hộ</strong>
                            </div>
                            <div class="card-body card-block">
                                <form action="/nguoi-giam-ho?action=them" method="post"
                                      class="form-horizontal">

                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="tenNguoiGiamHo" class=" form-control-label">Họ và tên</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="tenNguoiGiamHo" required name="tenNguoiGiamHo"
                                                   class="form-control">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label class=" form-control-label">Giới tính</label>
                                        </div>
                                        <div class="col col-md-9">
                                            <div class="form-check-inline form-check">
                                                <label for="inline-radio1" class="form-check-label ">
                                                    <input type="radio" id="inline-radio1" name="gioiTinh" value="1"
                                                           required checked class="form-check-input">Nam
                                                </label>
                                                <label for="inline-radio2" class="form-check-label ">
                                                    <input type="radio" id="inline-radio2" name="gioiTinh" value="0"
                                                           class="form-check-input">Nữ
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="maKhuVuc" class=" form-control-label">Khu vực</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="maKhuVuc" id="maKhuVuc" class="form-control" required>
                                                <option disabled selected>Chọn khu vực</option>
                                                <c:forEach var="k" items="${khuVuc}">
                                                    <option value="${k.getMaKhuVuc()}">
                                                            ${k.getTenKhuVuc()}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="soDienThoai" class="form-label">Số điện thoại</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" class="form-control" id="soDienThoai" name="soDienThoai" required>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="card-footer">
                                            <button type="submit" class="btn" style="background-color: #ffff00">
                                                 Xác nhận
                                            </button>
                                            <a href="/nguoi-giam-ho" class="btn btn-dark">Đóng</a>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <c:if test="${message != null}">
                                            <div class="success-msg">
                                                <i class="fa fa-check"></i>
                                                    ${message}
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
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
    </div>
    <div class="mb-3">
        <label for="soDienThoai" class="form-label">Số điện thoại</label>
        <input type="text" class="form-control" id="soDienThoai" name="soDienThoai">
    </div>
    <button type="submit" class="btn btn-primary">Thêm Mới</button>
</form>
</body>
</html>
