<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 9/6/2023
  Time: 8:36 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách cam kết</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h2 class="title-1 m-b-25 justify-content-center d-flex">Danh sách cam kết</h2>
            <div class="table-responsive table--no-card m-b-40">
                <table class="table table-borderless table-striped table-earning">
                    <thead>
                    <tr>
                        <th>STT</th>
                        <th>Số tiền</th>
                        <th>Ngày nhận nuôi</th>
                        <th>Trạng thái</th>
                        <th>Trẻ em</th>
                        <th>Người nuôi</th>
                        <th>Sửa</th>
                        <th>Xóa</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${danhSach}" var="d" varStatus="loop">
                        <tr>
                            <td><c:out value="${loop.count}"/></td>
                            <td><c:out value="${d.soTien}"/></td>
                            <td><c:out value="${d.ngayNhanNuoi}"/></td>
                                <%--   Xử lý trạng thái  --%>
                            <td>
                                <c:if test="${d.trangThai == 1}">Nhận nuôi</c:if>
                            </td>
                            <td><c:out value="${d.maTreEm}"/></td>
                            <td><c:out value="${d.maNguoiNuoi}"/></td>
                            <td>
                                <a class="btn btn-primary" href="cam-ket?action=sua&maCamKet=${d.maCamKet}">
                                    Sửa
                                </a>
                            </td>
                            <td>
                                <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal"
                                        onclick="sendInforModal('${d.maCamKet}')">
                                    Xóa
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<%--nút thêm--%>
<div class="row">
    <a class="btn btn-outline-danger" href="/cam-ket?action=them">Thêm mới</a>
</div>
<%--Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/cam-ket?action=xoa" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa cam kết</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="xoa_ma" name="xoa_ma">
                    Chắc chắn xóa cam kết này <span id="xoa_ten"></span>?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-primary">Xóa</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    function sendInforModal(ma) {
        document.getElementById("xoa_ma").value = ma;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
