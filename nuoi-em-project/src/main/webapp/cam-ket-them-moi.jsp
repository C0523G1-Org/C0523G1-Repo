<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/6/2023
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm mạnh thường quân</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<%--trang này giống trang đky tài khoản người nuôi bên anh Thiện, ktra lại--%>
<form method="post" action="/cam-ket?action=them">
    <div class="card">
        <div class="card-header">
            <strong>Thêm mới cam kết</strong>
        </div>
        <div class="card-body">
            <div class="col-12 col-md-9">
                <div class="col-12 col-md-3">
                    <label for="ngayNhanNuoi" class="col-form-label">Ngày nhận nuôi</label>
                </div>
                <input type="text" id="ngayNhanNuoi" name="ngayNhanNuoi" class="form-control"
                       aria-describedby="passwordHelpInline" value="${camKet.ngayNhanNuoi}"/>
            </div>
            <div class="col-12 col-md-9">
                <div class="col-12 col-md-3">
                    <label for="trangThai" class="col-form-label">Trạng thái</label>
                </div>
                <input type="text" id="trangThai" name="trangThai" class="form-control"
                       aria-describedby="passwordHelpInline" value="${camKet.trangThai}"/>
            </div>
            <div class="col-12 col-md-9">
                <div class="col-12 col-md-3">
                    <label for="maTreEm" class="col-form-label">Trẻ em</label>
                </div>
                <input type="text" id="maTreEm" name="maTreEm" class="form-control"
                       aria-describedby="passwordHelpInline" value="${camKet.maTreEm}"/>
            </div>
            <div class="col-12 col-md-9">
                <div class="col-12 col-md-3">
                    <label for="maNguoiNuoi" class="col-form-label">Người nuôi</label>
                </div>
                <input type="text" id="maNguoiNuoi" name="maNguoiNuoi" class="form-control"
                       aria-describedby="passwordHelpInline" value="${camKet.maNguoiNuoi}"/>
            </div>
            <div class="col-12 col-md-9">
                <div class="col-12 col-md-3">
                    <label for="soTien" class="col-form-label">Số Tiền</label>
                </div>
                <input type="text" id="soTien" name="soTien" class="form-control"
                       aria-describedby="passwordHelpInline" value="${camKet.soTien}"/>
            </div>
        </div>
    </div>
    <div class="card-footer text-body-secondary">
        <button type="submit" class="btn btn-primary">Xác nhận</button>
        <a href="/cam-ket" class="btn btn-danger">Trở về</a>
    </div>
    </div>
</form>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
