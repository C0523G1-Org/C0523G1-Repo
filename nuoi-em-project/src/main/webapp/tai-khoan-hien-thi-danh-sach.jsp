<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>Quản lý tài khoản</title>
    <!-- Fontfaces CSS-->
    <%--    <link href="css/font-face.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">--%>

    <%--    <!-- Bootstrap CSS-->--%>
    <%--    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">--%>

    <%--    <!-- Vendor CSS-->--%>
    <%--    <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/wow/animate.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/slick/slick.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">--%>
    <%--    <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">--%>

    <%--    <!-- Main CSS-->--%>
    <%--    <link href="css/theme.css" rel="stylesheet" media="all">--%>


</head>
<body class="animsition">
<a href="/tai-khoan?action=themTaiKhoan">them tai khoan</a>
<a href="/tai-khoan?action=dangNhap">dang nhap</a>
<a href="/tai-khoan?action=dangXuat">dang xuat</a>
<div class="main">
    <table class="table-primary">
        <thead class="table-secondary">
        Danh sách tài khoản
        </thead>
        <tbody>
        <tr class="table-success">
            <td class="table-success">STT</td>
            <td class="table-success">Tên tài khoản</td>
            <td class="table-success">Chủ tài khoản</td>
            <td colspan="2">Quản lý</td>
        </tr>
        <c:forEach var="tai_khoan" items="${list}" varStatus="loop">
            <tr class="table-success">
                <td class="table-info"><c:out value="${loop.count}">STT</c:out></td>
                <td class="table-info"><c:out value="${tai_khoan.tenTaiKhoan}"></c:out></td>
                <td class="table-info"><c:out value="${tai_khoan.matKhau}"></c:out></td>
                <td class="table-info"><a href="/tai-khoan?action=suaTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}">sua
                    tai khoan </a></td>
                <td class="table-info"><a href="/tai-khoan?action=timThongTinTaiKhoan&maTaiKhoan=${tai_khoan.getMaTaiKhoan()}"> tim thong
                    tin </a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
