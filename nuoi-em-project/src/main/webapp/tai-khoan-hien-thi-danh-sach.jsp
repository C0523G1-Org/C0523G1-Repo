<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <!-- Title Page-->
    <title>Quản lý tài khoản</title>
    <style>
        a {
            text-decoration: none;
        }
    </style>
</head>
<body class="animsition">
<nav class="navbar navbar-expand-lg bg-light">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/cam-ket">Danh sách cam kết</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/nguoi-nuoi">Danh sách mạnh thường quân</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/nguoi-giam-ho">Danh sách người giám hộ</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="tre-em">Danh sách trẻ em</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="/tai-khoan?action=themTaiKhoan">Tạo tài
                        khoản</a>
                </li>
            </ul>
            <form class="d-flex" method="get" action="nuoi-em-trang-chu.jsp">
                <button class="btn btn-outline-danger" type="submit">Đăng xuất</button>
            </form>
        </div>
    </div>
</nav>
<%----%>
<%----%>
<div class="container">
    <h2 class="mt-5 mb-3">Quản lý tài khoản</h2>
</div>
<div class="container">
    <%--    --%>
    <table class="table table-hover">
        <thead>
        <tr class="table-primary">
            <td class="table-primary">STT</td>
            <td class="table-primary">Tên tài khoản</td>

            <td colspan="3" style="text-align: center" class="table-primary">Quản lý</td>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="tai_khoan" items="${list}" varStatus="loop">
            <tr class="table-light">
                <td class="table-info"><c:out value="${loop.count}">STT</c:out></td>
                <td class="table-info"><c:out value="${tai_khoan.tenTaiKhoan}"></c:out></td>
                <td class="table-info" style="text-align: center">
                    <a href="/tai-khoan?action=suaTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Sửa thông tin </a>
                </td>

<%--                <td class="table-info" style="text-align: center">--%>
<%--                    <button type="button" class="btn btn-outline-info" data-bs-target="modal">--%>
<%--                        <a href="/tai-khoan?action=timThongTinTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">Chi tiết--%>
<%--                            tài--%>
<%--                            khoản </a>--%>
<%--                    </button>--%>
<%--                </td>--%>
                <td class="table-info" style="text-align: center">
                        <button type="button" class="btn btn-outline-info" data-bs-toggle="modal"
                                data-bs-target="#modalThongTin"
                                onclick="guiTenTaiKhoan('${tai_khoan.tenTaiKhoan}')">
                            Chi tiết tài khoản
                        </button>
                </td>
                <td class="table-info" style="text-align: center">
                    <button type="button" class="btn btn-outline-danger" data-bs-toggle="modal"
                            data-bs-target="#exampleModal"
                            onclick="guiThongTin('${tai_khoan.maTaiKhoan}','${tai_khoan.tenTaiKhoan}')">
                        Xóa tài khoản
                    </button>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <%--    --%>
</div>
<%--modal xóa--%>
<div class="modal fade" tabindex="-1" id="exampleModal" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="/tai-khoan?action=xoaTaiKhoan" method="post">
                <div class="modal-header">
                    <h5 class="modal-title"> Xóa tài khoản</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="maTaiKhoanXoa" name="maTaiKhoanXoa">
                    <p>Bạn có chắc muốn xóa <span id="tenTaiKhoanXoa" class="text-danger"></span>?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Hủy</button>
                    <button type="submit" class="btn btn-outline-danger">Xóa</button>
                </div>
            </form>
        </div>
    </div>
</div>
<%--modal xóa end--%>

<%--modal xem thông tin--%>
<div class="modal fade" tabindex="-1" id="modalThongTin" aria-labelledby="xemThongTin" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Thông tin</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <ul class="list-group">
                    <li class="list-group-item active" aria-current="true">Thông tin tài khoản: <span
                            id="tenTK"></span></li>
                        <li class="list-group-item">Mã tài khoản: <span id="maTaiKhoanShow">${tai_khoan_dto.getMaTaiKhoan()}</span></li>
                        <li class="list-group-item">Mật khẩu: <span id="matKhauShow">${tai_khoan_dto.getMatKhau()}</span></li>
                        <li class="list-group-item">Tên chủ tài khoản: <span id="tenNguoiNuoiShow">${tai_khoan_dto.getTenNguoiNuoi()}</span></li>
                        <li class="list-group-item">Giới tính: <span id="gioiTinhShow">${tai_khoan_dto.getGioiTinh()}</span></li>
                        <li class="list-group-item">SDT: <span id="soDienThoaiShow">${tai_khoan_dto.getSoDienThoai()}</span></li>
                </ul>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Quay lại</button>
            </div>
        </div>
    </div>
</div>
<%--modal xem thông tin--%>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
<script>
    function guiThongTin(maTaiKhoan, tenTaiKhoan) {
        document.getElementById("maTaiKhoanXoa").value = maTaiKhoan;
        document.getElementById("tenTaiKhoanXoa").innerText = tenTaiKhoan;
    }
    function guiTenTaiKhoan(tenTaiKhoan) {
        document.getElementById("tenTK").innerText = tenTaiKhoan;
    }
</script>
</body>
</html>
