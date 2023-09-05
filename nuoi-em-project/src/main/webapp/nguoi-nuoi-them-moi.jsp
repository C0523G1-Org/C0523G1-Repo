<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/2/2023
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm mạnh thường quân</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<%--trang này giống trang đky tài khoản người nuôi bên anh Thiện, ktra lại--%>
<form method="post" action="/nguoi-nuoi?action=them">

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

    <div class="card">
        <div class="card-header">
            <strong>Thêm mạnh thường quân</strong>
        </div>
        <div class="card-body">
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="tenNguoiNuoi" class="col-form-label">Họ và tên</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="tenNguoiNuoi" name="tenNguoiNuoi" class="form-control" value="${nguoiNuoi.tenNguoiNuoi}"
                           aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label class="col-form-label">Giới tính</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="radio" name="gioiTinh" value="1">Nam
                    <input type="radio" name="gioiTinh" value="0">Nữ
                </div>
            </div>
            <%--        mã tài khoản phải tự sinh, làm sao?????--%>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="maTaiKhoan" class="col-form-label">Mã Tài Khoản</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="maTaiKhoan" name="maTaiKhoan" class="form-control" value="${nguoiNuoi.maTaiKhoan}"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="soDienThoai" class="col-form-label">Số điện thoại</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="soDienThoai" name="soDienThoai" class="form-control" value="${nguoiNuoi.soDienThoai}"
                           aria-describedby="passwordHelpInline">
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
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="email" class="col-form-label">Email</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="email" name="email" class="form-control" value="${nguoiNuoi.email}"
                           aria-describedby="passwordHelpInline">
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
        </div>
        <div class="card-footer text-body-secondary">
            <button type="submit">Xác nhận</button>
            <a href="/nguoi-nuoi" class="btn btn-dark">Đóng</a>
        </div>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
