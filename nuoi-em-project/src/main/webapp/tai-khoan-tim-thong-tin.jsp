<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%--hiển thị thông tin tài khoản + người nuôi ?--%>
<table>
    <tr>
        <td>Ma tai khoan</td>
        <td>Ten tai khoan</td>
        <td>Ten nguoi nuoi</td>
        <td>Gioi tinh</td>
        <td>So dien thoai</td>
    </tr>
    <tr>
        <td><c:out value="${taiKhoanDto.getMaTaiKhoan()}"/></td>
        <td><c:out value="${taiKhoanDto.getTenTaiKhoan()}"/></td>
        <td><c:out value="${taiKhoanDto.getTenNguoiNuoi()}"/></td>
        <td><c:out value="${taiKhoanDto.getGioiTinh()}"/></td>
        <td><c:out value="${taiKhoanDto.getSoDienThoai()}"/></td>
    </tr>
</table>
</body>
</html>
