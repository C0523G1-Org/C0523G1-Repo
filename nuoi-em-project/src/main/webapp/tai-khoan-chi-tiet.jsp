<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/8/2023
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Thống kê tài khoản</title>
</head>
<style>
</style>
<body>
<input type="hidden" name="maTaiKhoan" id="maTaiKhoan" value="${maTaiKhoan}">
<table border="1px solid black">
    <thead>
    <tr>
        <td>STT</td>
        <td>Tên tài khoản</td>
        <td>Chủ tài khoản</td>
        <td>Email</td>
        <td>Giới tính</td>
        <td>Tên trẻ em</td>
    </tr>
    <c:forEach items="${thongKe}" var="tk" varStatus="loop">
        <tr>
            <td>${loop.count}</td>
            <td>${tk.tenTaiKhoan}</td>
            <td>${tk.tenNguoiNuoi}</td>
            <td>${tk.email}</td>
            <td>
                <c:if test="${tk.gioiTinhNguoiNuoi == 0}">
                    Nữ
                </c:if>
                <c:if test="${tk.gioiTinhNguoiNuoi == 1}">
                    Nam
                </c:if>
            </td>
            <td>${tk.tenTreEm}</td>
        </tr>
    </c:forEach>
    </thead>
</table>
</body>
</html>
