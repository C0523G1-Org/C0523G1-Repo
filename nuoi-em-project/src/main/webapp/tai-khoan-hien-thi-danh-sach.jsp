<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Quản lý tài khoản</title>

    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body class="animsition">
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
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Danh sách</a>
                </li>
            </ul>
            <form class="d-flex" method="get" action="/trang-chu.jsp">
                <button class="btn btn-outline-danger" type="submit">Đăng xuất</button>
            </form>
        </div>
    </div>
</nav>
<%--test--%>
<a href="/tai-khoan?action=themTaiKhoan">them tai khoan</a>
<a href="/tai-khoan?action=dangNhap">dang nhap</a>
<a href="/tai-khoan?action=dangXuat">dang xuat</a>
<%--test--%>
<div class="container">
    <h2 class="mt-5 mb-3">Quản lý tài khoản</h2>
</div>
<div class="container">
    <%--    --%>
    <table class="table table-hover">
        <thead>
        <tr class="table-primary">
            <td class="table-primary">STT</td>
            <td class="table-primary">Tên tài khoản</td>
            <td class="table-primary">Mật khẩu</td>
            <td colspan="2" style="text-align: center" class="table-primary">Quản lý</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tai_khoan" items="${list}" varStatus="loop">
            <tr class="table-light">
                <td class="table-info"><c:out value="${loop.count}">STT</c:out></td>
                <td class="table-info"><c:out value="${tai_khoan.tenTaiKhoan}"></c:out></td>
                <td class="table-info"><c:out value="${tai_khoan.matKhau}"></c:out></td>
                <td class="table-info" style="text-align: center">
                    <a href="/tai-khoan?action=suaTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Sửa thông tin </a>
                </td>
                <td class="table-info" style="text-align: center">
                    <a href="/tai-khoan?action=timThongTinTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Chi tiết tài
                        khoản </a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--    --%>
</div>
<%--main-end--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
