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
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<form action="/tai-khoan?action=themTaiKhoan" method="post">
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
    <p>${taiKhoanDaTonTai}</p>
    <p>${saiMatKhau}</p>
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
                           aria-describedby="passwordHelpInline" value="${tenTaiKhoan}">
                </div>
            </div>
            <%--            Lấy thông tin người dùng--%>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenNguoiDung" class="col-form-label">Tên người dùng</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="tenNguoiDung" name="tenNguoiDung" class="form-control"
                           aria-describedby="passwordHelpInline" value="${tenNguoiDung}">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="gioiTinh" class="col-form-label">Giới tính</label>
                </div>
                <div class="col-12 col-md-9">
                    <select name="gioiTinh" class="form-select" id="inputGroupSelect01">
                        <option name="gioiTinh" selected value="0">Nữ</option>
                        <option name="gioiTinh" value="1">Nam</option>
                    </select>
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="email" class="col-form-label">Email</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="email" name="email" class="form-control"
                           aria-describedby="passwordHelpInline" value="${email}">
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
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenTaiKhoan" class="col-form-label">Số điện thoại</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="tel" id="soDienThoai" name="soDienThoai" class="form-control"
                           aria-describedby="passwordHelpInline" value="${soDienThoai}">
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
