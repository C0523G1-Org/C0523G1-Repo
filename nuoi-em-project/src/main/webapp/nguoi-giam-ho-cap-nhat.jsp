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
<<<<<<< HEAD
<<<<<<< HEAD
        <div class="mb-3">
            <label for="soDienThoai" class="form-label">Số Điện Thoại</label>
            <input type="text" class="form-control" id="soDienThoai" name="soDienThoai" value="<c:out value='${nguoiGiamHo.soDienThoai}'/>">
=======
=======
>>>>>>> 2feaac9bc429f05198e177c97339e89ee5abf6ea
    </header>
    <!-- HEADER DESKTOP-->

    <!-- MAIN CONTENT-->
    <div class="main-content">
        <div class="section__content section__content--p30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-header">
                                <strong>Cập Nhật Người Giám Hộ</strong>
                            </div>
                            <div class="card-body card-block">
                                <form action="/nguoi-giam-ho?action=capnhat" method="post"
                                      class="form-horizontal" id="capnhat">
                                    <c:if test="${nguoiGiamHo != null}">
                                        <input type="hidden" name="maNguoiGiamHo"
                                               value="<c:out value='${nguoiGiamHo.maNguoiGiamHo}'/>"/>
                                    </c:if>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="tenNguoiGiamHo" class=" form-control-label">Họ và tên</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input type="text" id="tenNguoiGiamHo" required name="tenNguoiGiamHo"
                                                   class="form-control"
                                                   value="<c:out value='${nguoiGiamHo.tenNguoiGiamHo}' />">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label class=" form-control-label">Giới tính</label>
                                        </div>
                                        <div class="col col-md-9">
                                            <div class="form-check-inline form-check">
                                                <label for="inline-radio1" class="form-check-label ">
                                                    <input type="radio" id="inline-radio1" name="gioiTinh" value="1"
                                                           required checked class="form-check-input">Nam
                                                </label>
                                                <label for="inline-radio2" class="form-check-label ">
                                                    <input type="radio" id="inline-radio2" name="gioiTinh" value="0"
                                                           class="form-check-input">Nữ
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="maKhuVuc" class=" form-control-label">Khu vực</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <select name="maKhuVuc" id="maKhuVuc" class="form-control" required>
                                                <c:forEach var="k" items="${khuVuc}">
                                                    <c:if test="${k.getMaKhuVuc()== nguoiGiamHo.maKhuVuc}">
                                                        <option value="${k.getMaKhuVuc()}">${k.getTenKhuVuc()}</option>
                                                    </c:if>
                                                </c:forEach>
                                                <c:forEach var="k" items="${khuVuc}">
                                                    <option value="${k.getMaKhuVuc()}">
                                                            ${k.getTenKhuVuc()}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col col-md-3">
                                            <label for="soDienThoai" class="form-label">Số Điện Thoại</label>
                                        </div>
                                        <div class="col-12 col-md-9">
                                            <input required type="text" class="form-control" id="soDienThoai" name="soDienThoai"
                                                   value="<c:out value='${nguoiGiamHo.soDienThoai}'/>" minlength="10"
                                                   maxlength="11">
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="card-footer">
                                            <button type="submit" class="btn" style="background-color: #ffff00">
                                               Xác nhận
                                            </button>
                                            <a href="/nguoi-giam-ho" class="btn btn-dark">Đóng</a>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <c:if test="${message != null}">
                                            <div class="success-msg">
                                                <i class="fa fa-check"></i>
                                                    ${message}
                                            </div>
                                        </c:if>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright">
                            <p>Copyright © 2023 Team 2. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
<<<<<<< HEAD
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
=======
=======
        <div class="mb-3">
            <label for="soDienThoai" class="form-label">Số Điện Thoại</label>
            <input type="text" class="form-control" id="soDienThoai" name="soDienThoai" value="<c:out value='${nguoiGiamHo.soDienThoai}'/>">
>>>>>>> 0b6235c01a40a04723e22e9081d0a895b21566b6
>>>>>>> 2feaac9bc429f05198e177c97339e89ee5abf6ea
        </div>
        <button type="submit" class="btn btn-danger">Cập nhật</button>
    </form>
</div>
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> 2feaac9bc429f05198e177c97339e89ee5abf6ea

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>

<<<<<<< HEAD
>>>>>>> ed129efa91ed9546098e8d79fa6ae39e0310a89c
=======
=======
>>>>>>> 0b6235c01a40a04723e22e9081d0a895b21566b6
>>>>>>> 2feaac9bc429f05198e177c97339e89ee5abf6ea
</body>
</html>
