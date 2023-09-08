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
    </div>
    <div class="mb-3">
        <label for="soDienThoai" class="form-label">Số điện thoại</label>
        <input type="text" class="form-control" id="soDienThoai" name="soDienThoai">
    </div>
    <button type="submit" class="btn btn-primary">Thêm Mới</button>
</form>
</body>
</html>
