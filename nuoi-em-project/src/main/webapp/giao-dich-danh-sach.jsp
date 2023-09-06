<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/5/2023
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Tài chính</title>
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
</head>
<body>
<form action="/giao-dich?action=xem" method="post">
    <h5>Nhập thời gian bạn muốn xem sao kê:</h5>
    <div class="row">
        <div class="col-xl-6">
            <div class="row g-3 align-items-center">
                <div class="col-auto">
                    <label for="thang" class="col-form-label">Tháng</label>
                </div>
                <div class="col-auto">
                    <input type="text" id="thang" class="form-control" name="thang"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
        </div>
        <div class="col-xl-6">
            <div class="row g-3 align-items-center">
                <div class="col-auto">
                    <label for="nam" class="col-form-label">Năm</label>
                </div>
                <div class="col-auto">
                    <input type="text" id="nam" class="form-control" name="nam"
                           aria-describedby="passwordHelpInline">
                </div>
            </div>
        </div>
    </div>
    <button type="submit">Hiển thị</button>

    <div class="row">
        <div class="col-lg-12">
            <h2 class="title-1 m-b-25 justify-content-center d-flex">Lịch sử giao dịch</h2>
            <div class="table-responsive table--no-card m-b-40">
                <table class="table table-borderless table-striped table-earning">
                    <thead>
                    <tr>
                        <th colspan="2">
                            Tổng số tiền:
                        </th>
                        <th colspan="2">

                            ${chenhLech}
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            Tổng thu:
                        </th>
                        <th colspan="2">
                            ${tongThu}
                        </th>
                    </tr>
                    <tr>
                        <th colspan="2">
                            Tổng chi:
                        </th>
                        <th colspan="2">
                            ${tongChi}
                        </th>
                    </tr>
                    <tr>
                        <th>STT</th>
                        <th>Ngày giao dịch</th>
                        <th>Số tiền</th>
                        <th>Nội dung</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:if test="${thongBao!=null}">
                        <h2>${thongBao}</h2>
                    </c:if>
                    <c:forEach items="${danhSachGiaoDich}" var="d" varStatus="loop">
                        <tr>
                            <td><c:out value="${loop.count}"/></td>

                            <c:set var="dateString" value="${d.ngayGiaoDich}"/>
                            <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                            <td>
                                <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                            </td>

                            <td><c:out value="${d.soTien}"/></td>
                            <td><c:out value="${d.noiDungGiaoDich}"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <%--nút thêm--%>
    <div class="row">
        <a class="btn btn-outline-danger" href="/giao-dich?action=them">Thêm mới tiền thu</a>
    </div>
    <div class="row">
        <a class="btn btn-outline-danger" href="/giao-dich?action=themChi">Thêm mới tiền chi</a>
    </div>
</form>
<script src="js/main.js"></script>
</body>
</html>
