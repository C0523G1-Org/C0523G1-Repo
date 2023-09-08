<%--
  Created by IntelliJ IDEA.
  User: TUẤN
  Date: 9/6/2023
  Time: 6:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid">
    <nav class="navbar bg-body-tertiary">
        <div class="container-fluid">
            <a href="/nguoi-giam-ho"><button type="submit" class="btn btn-danger" >Trở về</button></a>
        </div>
    </nav>
    <form action="/nguoi-giam-ho?action=capnhat" method="post">
        <c:if test="${nguoiGiamHo != null}">
            <input type="hidden" name="maNguoiGiamHo" value="<c:out value='${nguoiGiamHo.maNguoiGiamHo}' />"/>
        </c:if>
        <div class="mb-3">
            <label for="tenNguoiGiamHo" class="form-label">Tên Người Giám Hộ</label>
            <input type="text" class="form-control" id="tenNguoiGiamHo" aria-describedby="name" name="tenNguoiGiamHo"
                   value="<c:out value='${nguoiGiamHo.tenNguoiGiamHo}' />">
        </div>
        <div class="mb-3">
            <label for="gioiTinh" class="form-label">Giới Tính</label>
            <input type="number" class="form-control" id="gioiTinh" name="gioiTinh" value="<c:out value='${nguoiGiamHo.gioiTinh}'/>">
        </div>
        <div class="mb-3">
            <label for="maKhuVuc" class="form-label">Mã Khu Vực</label>
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
        </div>
        <div class="mb-3">
            <label for="soDienThoai" class="form-label">Số Điện Thoại</label>
            <input type="text" class="form-control" id="soDienThoai" name="soDienThoai" value="<c:out value='${nguoiGiamHo.soDienThoai}'/>">
        </div>
        <button type="submit" class="btn btn-danger">Cập nhật</button>
    </form>
</div>
</body>
</html>
