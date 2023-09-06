<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <title>Đăng ký thành viên</title>
</head>
<style>
    * {
        font-family: 'Montserrat', sans-serif
    }
    body {
        background-image: url("https://happy.vietnam.vn/wp-content/uploads/2023/08/04-Tre-Em-Vung-Cao.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        color: white;
    }
    a {
        text-decoration: none;
        color: #ffffff;
    }

    .header {
        display: grid;
        height: 70px;
        background-color: #198754;
    }

    .content {
        font-size: 2rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    .main {
        margin-top: 50px;
        border: 1px solid #90953b;
        height: 540px;
        width: 460px;
        border-radius: 12px;
        box-shadow: 1px 1px 3px 1px #90953b;
        display: grid;
        background-color: rgba(0, 0, 0, .5);
    }
    #btn {
        width: 100%;
        place-self: center;
    }
</style>
<body>
<div class="header">
    <div class="content">Đăng ký</div>
</div>
<div class="container main">
    <form action="/tai-khoan?action=themTaiKhoan" method="post">
<%--        Tai khoan da ton tai--%>
        ${taiKhoanDaTonTai}
<%--        Tai khoan da ton tai--%>
<%--       Dang ky thanh cong --%>
    <c:if test="${thongBao != null}">
        <div class="alert alert-success d-flex align-items-center" role="alert">
            <svg class="bi flex-shrink-0 me-2" width="0" height="0" role="img"
                 aria-label="Success:">
                <use xlink:href="#check-circle-fill"/>
            </svg>
            <div>
                <i class="fa-regular fa-circle-check"></i><label
                    style="padding-left: 5px">${thongBao}</label>
            </div>
        </div>
    </c:if>
<%--        --%>
        <div class="mb-1 mt-3">
            <label for="tenNguoiDung" class="form-label">Họ và tên</label>
            <input id="tenNguoiDung" name="tenNguoiDung" value="${tenNguoiDung}" type="text" class="form-control" required>
        </div>
        <div class="mb-1">
            <label for="tenTaiKhoan" class="form-label">Tên tài khoản</label>
            <input id="tenTaiKhoan" name="tenTaiKhoan" value="${tenTaiKhoan}" type="text" class="form-control" required>
        </div>
        <div class="mb-1">
            <label for="email" class="form-label">Địa chỉ Email</label>
            <input id="email" name="email" type="email" value="${email}" class="form-control" required>
<%--            sai validate email--%>
            <c:if test="${loi1 != null}">
                <div class="alert alert-danger d-flex align-items-center"
                     role="alert" style="top: 5px">
                    <svg class="bi flex-shrink-0 me-2" width="0" height="0"
                         role="img" aria-label="Danger:">
                        <use xlink:href="#check-circle-fill"/>
                    </svg>
                    <div>
            <span class="error">
                <i class="uil uil-ban"></i><label
                    style="padding-left: 5px">${loi1}</label>
            </span>
                    </div>
                </div>
            </c:if>
<%--            sai validate email--%>
        </div>
        <div class="mb-1">
            <label for="soDienThoai" class="form-label">Số điện thoại</label>
            <input  id="soDienThoai" name="soDienThoai" value="${soDienThoai}" type="tel" class="form-control" required>
<%--            sai validate sdt--%>
            <c:if test="${loi != null}">
                <div class="alert alert-danger d-flex align-items-center"
                     role="alert" style="top: 5px">
                    <svg class="bi flex-shrink-0 me-2" width="0" height="0"
                         role="img" aria-label="Danger:">
                        <use xlink:href="#check-circle-fill"/>
                    </svg>
                    <div>
            <span class="error">
                <i class="uil uil-ban"></i><label
                    style="padding-left: 5px">${loi}</label>
            </span>
                    </div>
                </div>
            </c:if>
<%--            sai validate sdt--%>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="gioiTinh" id="1" value="1" checked>
            <label class="form-check-label" for="1">
                Nam
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="radio" name="gioiTinh" id="0" value="0">
            <label class="form-check-label" for="0">
                Nữ
            </label>
        </div>
        <div class="mb-2 input-group">
            <input type="password" name="matKhau" class="form-control" placeholder="Nhập mật khẩu" required>
            <input type="password" name="nhapLaiMatKhau" class="form-control" placeholder="Xác nhận mật khẩu" required>
        </div>
        <button id="btn" type="submit" class="btn btn-success">Đăng ký</button>
        <div class="log-in mt-4">Đã có tài khoản?
            <button id="login" type="submit" class="btn btn-primary">
                <a href="/dang-nhap.jsp">Đăng nhập!</a></button>
        </div>
        ${thanhCong}
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
