<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/5/2023
  Time: 9:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thêm giao dịch</title>
    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
</head>
<body>
<form method="post" action="/giao-dich?action=them">

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
            <strong>Thêm giao dịch chuyển tiền</strong>
        </div>
        <div class="card-body">
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="ngayGiaoDich" class="col-form-label">Ngày giao dịch</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="ngayGiaoDich" name="ngayGiaoDich" class="form-control"
                           aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="noiDung" class="col-form-label">Nội dung</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="noiDung" name="noiDung" class="form-control"
                           aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                </div>
            </div>
            <div class="row g-3 align-items-center">
                <div class="col-12 col-md-3">
                    <label for="maCamKet" class="col-form-label">Mã cam kết</label>
                </div>
                <div class="col-12 col-md-9">
                    <input type="text" id="maCamKet" name="maCamKet" class="form-control"
                           aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                </div>
            </div>
        </div>
        <div class="card-footer text-body-secondary">
            <button type="submit">Xác nhận</button>
            <a href="/giao-dich" class="btn btn-dark">Đóng</a>
        </div>
    </div>
</form>

<!-- Main JS-->
<script src="js/main.js"></script>
</body>
</html>
