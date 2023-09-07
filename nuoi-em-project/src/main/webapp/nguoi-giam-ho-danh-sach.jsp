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
<body>
<!-- MAIN CONTENT-->
<div class="header">
    <nav class="navbar navbar-light " style="background-color: #35a853">
        <form class="container-fluid justify-content-start">
            <button class="btn btn-outline-light me-2" type="button">Trang Chủ</button>
            <button class="btn btn-outline-light float-lg-right" type="button">Đăng Xuất</button>
        </form>
    </nav>
</div>
<div class="main-content">
    <h1>Danh Sách Người Giám Hộ</h1>
    <nav class="navbar navbar-light bg-light">
        <div class="container">
            <a class="navbar-brand" href="/nguoi-giam-ho?action=themmoinguoigiamho">
                <button class="btn btn-outline-primary">Thêm Mới Người Giám
                    Hộ
                </button>
            </a>
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
                        <c:forEach var="khuvuc" items="${khuVuc}">
                            <c:if test="${nguoiGiamHo.maKhuVuc == khuvuc.maKhuVuc}">
                                <td><c:out value="${khuvuc.tenKhuVuc}"/></td>
                            </c:if>
                        </c:forEach>
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
                    <div class="modal-body" style="color: red">
                        <input name="maNguoiGiamHo" id="ma" type="hidden">
                        Bạn có chắc chắn muốn xóa <span id="thongBao"></span> ?
                    </div>
                    <div class="modal-body" style="color: red">
                        Việc này không thể hoàn tác
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                        <button type="submit" class="btn btn-danger">Xác Nhận</button>
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
            $('#mytable').DataTable({
                language: {
                    "decimal": ",",
                    "thousands": ".",
                    "sEmptyTable": "Không có dữ liệu",
                    "sInfo": "Đang hiển thị _START_ đến _END_ của tổng số _TOTAL_ mục",
                    "sInfoEmpty": "Đang hiển thị 0 đến 0 của tổng số 0 mục",
                    "sInfoFiltered": "(được lọc từ tổng số _MAX_ mục)",
                    "sInfoPostFix": "",
                    "sInfoThousands": ",",
                    "sLengthMenu": "Hiển thị _MENU_ mục",
                    "sLoadingRecords": "Đang tải...",
                    "sProcessing": "Đang xử lý...",
                    "sSearch": "Tìm kiếm:",
                    "Show:": "",
                    "entries": "",
                    "oPaginate": {
                        "sFirst": "Đầu",
                        "sLast": "Cuối",
                        "sNext": "Tiếp",
                        "sPrevious": "Trước"
                    },

                }
            });
        });

        function maNguoiGiamHo(maNguoiGiamHo, ten) {
            document.getElementById("ma").value = maNguoiGiamHo;
            document.getElementById("thongBao").innerText = ten;
        }
    </script>

</div>
</body>
</html>