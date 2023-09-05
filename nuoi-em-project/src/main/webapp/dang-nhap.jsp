<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/5/2023
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
</head>
<body>
<form action="/tai-khoan?action=dangNhap" method="post">
    <label for="tenTaiKhoan"></label>
    <input type="text" placeholder="Tên tài khoản" name="tenTaiKhoan" id="tenTaiKhoan">
    <label for="matKhau"></label>
    <input type="password" placeholder="Mật khẩu" name="matKhau" id="matKhau">
    <input type="submit" value="Xác nhận">
</form>
<p>${saiThongTin}</p>
</body>
</html>
