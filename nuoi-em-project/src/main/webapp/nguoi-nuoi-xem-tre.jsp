<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/5/2023
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Danh sách trẻ em đang nhận</title>
    <!-- Bootstrap CSS-->
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
</head>
<body>
<%--<form action="/nguoi-nuoi?action=xemTre" method="post">--%>
<%--    <input type="hidden" id="maNguoiNuoi" name="maNguoiNuoi">--%>
<%--&lt;%&ndash;    <label for="maNguoiNuoi">Nhập Mã Người Nuôi:</label>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <input type="text" id="maNguoiNuoi" name="maNguoiNuoi"><br>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <button type="submit">Hiển thị</button>&ndash;%&gt;--%>

    <div class="row">
        <div class="col-lg-12">
            <h2 class="title-1 m-b-25 justify-content-center d-flex">Danh sách trẻ em</h2>
            <div class="table-responsive table--no-card m-b-40">
                <table class="table table-borderless table-striped table-earning">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Mã trẻ em</th>
                        <th>Tên trẻ em</th>
                        <th>Giới tính</th>
                        <th>Ngày sinh</th>
                        <th>Mô tả</th>
                        <th>Tên khu vực</th>
                        <th>Tên người giám hộ</th>
                        <th>Số điện thoại</th>
                        <th>Hình ảnh</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${thongBao!=null}">
                        <h2>${thongBao}</h2>
                    </c:if>
                    <c:forEach items="${danhSachTre}" var="d" varStatus="loop">
                        <tr>
                            <td><c:out value="${loop.count}"/></td>
                            <td><c:out value="${d.maTreEm}"/></td>
                            <td><c:out value="${d.tenTreEm}"/></td>
                                <%--          Xử lý giới tính  --%>
                            <td>
                                <c:if test="${d.gioiTinh == 1}">Nam</c:if>
                                <c:if test="${d.gioiTinh == 0}">Nữ</c:if>
                            </td>

                            <c:set var="dateString" value="${d.getNgaySinh()}"/>
                            <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                            <td>
                                <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                            </td>

                            <td><c:out value="${d.moTa}"/></td>
                            <td><c:out value="${d.tenKhuVuc}"/></td>
                            <td><c:out value="${d.tenNguoiGiamHo}"/></td>
                            <td>0<c:out value="${d.soDienThoai}"/></td>
                            <td><img height="50px" width="50px" src="${d.hinhAnh}" alt=""></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
<%--</form>--%>

<script src="js/main.js"></script>
</body>
</html>
