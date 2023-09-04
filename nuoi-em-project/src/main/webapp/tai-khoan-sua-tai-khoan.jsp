<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="tai-khoan?action=suaTaiKhoan" method="post">
    <input type="hidden" name="id" id="id" value="${maTaiKhoan}">
    <input type="password" name="matKhau" id="matKhau">Mat khau moi
    <input type="password" name="xacNhanMatKhau" id="xacNhanMatKhau">Xac nhan mat khau
    <input type="submit" value="Xác nhận">
</form>
</body>
</html>
