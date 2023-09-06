<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Chi tiết tài khoản</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<%--hiển thị thông tin tài khoản + người nuôi ?--%>
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Danh sách cam kết</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Danh sách mạnh thường quân</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Danh sách người giám hộ</a>
                </li>
            </ul>
            <form class="d-flex" method="get" action="/trang-chu.jsp">
                <button class="btn btn-outline-danger" type="submit">Đăng xuất</button>
            </form>
        </div>
    </div>
</nav>

<div class="container">
    <%--    --%>
    <table class="table table-hover">
        <thead>
        <tr class="table-primary">
            <td class="table-primary">Mã tài khoản</td>
            <td class="table-primary">Tên tài khoản</td>
            <td class="table-primary">Tên người nuôi</td>
            <td class="table-primary">Giới tính</td>
            <td class="table-primary">Số điện thoại</td>

        </tr>
        </thead>
        <tbody>
        <tr>
            <td><c:out value="${taiKhoanDto.getMaTaiKhoan()}"/></td>
            <td><c:out value="${taiKhoanDto.getTenTaiKhoan()}"/></td>
            <td><c:out value="${taiKhoanDto.getTenNguoiNuoi()}"/></td>
            <td><c:out value="${taiKhoanDto.getGioiTinh()}"/></td>
            <td><c:out value="${taiKhoanDto.getSoDienThoai()}"/></td>
        </tr>
        </tbody>
    </table>
        <div>THỐNG KÊ CỦA TÀI KHOẢN: </div>
    <a class="nav-link active" aria-current="page" href="/tai-khoan?action=hienThi">
        <button class="btn btn-primary" type="submit">
            Quay lại danh sách tài khoản
        </button>
    </a>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>

</body>
</html>
