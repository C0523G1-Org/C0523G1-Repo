<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/1/2023
  Time: 9:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Danh sách người nuôi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body>


<div class="row">
    <div class="col-lg-12">
        <h2 class="title-1 m-b-25 justify-content-center d-flex">Danh sách người nuôi</h2>
        <div class="table-responsive table--no-card m-b-40">
            <table class="table table-borderless table-striped table-earning">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên</th>
                    <th>Giới tính</th>
                    <th>Mã tài khoản</th>
                    <th>Số điện thoại</th>
                    <th>Email</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${danhSach}" var="d" varStatus="loop">
                    <tr>
                        <td><c:out value="${loop.count}"/></td>
                        <td><c:out value="${d.tenNguoiNuoi}"/></td>
                            <%--          Xử lý giới tính  --%>
                        <td>
                        <c:if test="${d.gioiTinh == 1}">Nam</c:if>
                        <c:if test="${d.gioiTinh == 0}">Nữ</c:if>
                        </td>
                        <td><c:out value="${d.maTaiKhoan}"/></td>
                        <td><c:out value="${d.soDienThoai}"/></td>
                        <td><c:out value="${d.email}"/></td>
                        <td>
                            <a class="btn btn-warning" href="nguoi-nuoi?action=sua&maNguoiNuoi=${d.maNguoiNuoi}">
                                Sửa
                            </a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"
                                    onclick="sendInforModal('${d.maNguoiNuoi}','${d.tenNguoiNuoi}')">
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
<%--nút thêm--%>
<div class="row">
    <a class="btn btn-outline-danger" href="/nguoi-nuoi?action=them">Thêm mới</a>
</div>
<%--Modal--%>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/nguoi-nuoi?action=xoa" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Xóa người nuôi</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="xoa_ma" name="xoa_ma">
                    Chắc chắn xóa người nuôi <span id="xoa_ten"></span>?
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
    function sendInforModal(ma, ten) {
        document.getElementById("xoa_ma").value = ma;
        document.getElementById("xoa_ten").innerText = ten;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
        crossorigin="anonymous"></script>
</body>
</html>
