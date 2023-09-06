<%--
  Created by IntelliJ IDEA.
  User: TUẤN
  Date: 9/5/2023
  Time: 9:35 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
    <link rel="stylesheet" href="/css/css-nguoi-giam-ho.css">
<body>
<style>
    .header {
        display: flex;
        flex-direction: row;
        width: 100%;
        height: 60px;
        background-color: #35a853;
        margin-bottom: 10px;
    }
</style>
<!-- MAIN CONTENT-->
<div class="header">
    <div></div>
</div>
<div class="main-content">
<h1>Danh Sách Người Giám Hộ</h1>
    <nav class="navbar navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="/nguoi-giam-ho?action=themmoinguoigiamho"><button class="btn btn-outline-primary">Thêm Mới Người Giám
                Hộ</button></a>
        </div>
    </nav>
    <div class="container">
        <div class="row">
            <table id="mytable" class="table table-striped" style="width: 100%">
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên Người Giám Hộ</th>
                    <th>Giới Tính</th>
                    <th>Khu Vực</th>
                    <th>Số Điện Thoại</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="nguoiGiamHo" items="${nguoiGiamHos}" varStatus="lam">
                    <tr>
                        <td><c:out value="${lam.count}"/></td>
                        <td><c:out value="${nguoiGiamHo.tenNguoiGiamHo}"/></td>

                            <%--            xử lý giới tính--%>
                        <c:if test="${nguoiGiamHo.gioiTinh == 1}">
                            <td>Nam</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.gioiTinh == 0}">
                            <td>Nữ</td>
                        </c:if>

                            <%--            xử lý khu vực--%>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 1}">
                            <td>Hà Giang</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 2}">
                            <td>Cao Bằng</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 3}">
                            <td>Lào Cai</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 4}">
                            <td>Bắc Kạn</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 5}">
                            <td>Lạng Sơn</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 6}">
                            <td>Tuyên Quang</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 7}">
                            <td>Yên Bái</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 8}">
                            <td>Thái Nguyên</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 9}">
                            <td>Phú Thọ</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 10}">
                            <td>Bắc Giang</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 11}">
                            <td>Lai Châu</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 12}">
                            <td>Điện Biên</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 13}">
                            <td>Sơn La</td>
                        </c:if>
                        <c:if test="${nguoiGiamHo.maKhuVuc == 14}">
                            <td>Hòa Bình</td>
                        </c:if>
                        <td><c:out value="${nguoiGiamHo.soDienThoai}"/></td>
                        <td>
                            <a href="/nguoi-giam-ho?action=capnhatnguoigiamho&maNguoiGiamHo=${nguoiGiamHo.maNguoiGiamHo}">
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                    Sửa
                                </button>
                            </a>
                        </td>
                        <td>
                            <button type="button" class="btn btn-danger" data-bs-toggle="modal"
                                    data-bs-target="#delete"
                                    onclick="maNguoiGiamHo('${nguoiGiamHo.maNguoiGiamHo}','${nguoiGiamHo.tenNguoiGiamHo}')">
                                Xóa
                            </button>
                        </td>

                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <div class="modal" tabindex="-1" id="delete" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="/nguoi-giam-ho?action=xoa" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Xóa Người Giám Hộ</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <input name="maNguoiGiamHo" id="ma" type="hidden">
                        Bạn có chắc chắn muốn xóa <span id="thongBao"></span> ?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="submit" class="btn btn-primary">Xác Nhận</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.6/js/dataTables.bootstrap5.min.js"></script>

    <script>
        $(document).ready(function () {
            $('#mytable').DataTable();
        });

        function maNguoiGiamHo(maNguoiGiamHo, ten) {
            document.getElementById("ma").value = maNguoiGiamHo;
            document.getElementById("thongBao").innerText = ten;
        }
    </script>

</div>
</body>
</html>
