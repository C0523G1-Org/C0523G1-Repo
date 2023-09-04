<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<form action="/tai-khoan?action=themTaiKhoan" method="post">
    <div class="card">
        <div class="card-header">
            <strong>Tạo mới tài khoản</strong>
        </div>
        <div class="card-body">
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenTaiKhoan" class="col-form-label">Tên tài khoản</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="tenTaiKhoan" name="tenTaiKhoan" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <%--            Lấy thông tin người dùng--%>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenTaiKhoan" class="col-form-label">Tên người dùng</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="tenNguoiDung" name="tenNguoiDung" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenTaiKhoan" class="col-form-label">Giới tính</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="gioiTinh" name="gioiTinh" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenTaiKhoan" class="col-form-label">Số điện thoại</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="tel" id="soDienThoai" name="soDienThoai" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <%--            Lấy thông tin người dùng--%>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="matKhau" class="col-form-label">Mật khẩu</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="password" id="matKhau" name="matKhau" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="nhapLaiMatKhau" class="col-form-label">Xác nhân mật khẩu</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="password" id="nhapLaiMatKhau" name="nhapLaiMatKhau" class="form-control"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
        </div>
    </div>
    <div class="card-footer text-body-secondary">
        <button type="submit">Xác nhận</button>
        <a href="/trang-chu.jsp" class="btn btn-dark">Đóng</a>
    </div>
    </div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
