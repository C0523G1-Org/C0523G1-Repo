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

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <title>Thay đổi mật khẩu</title>
</head>
<style>
    * {
        font-family: 'Montserrat', sans-serif
    }
    body {
        background-image: url("https://happy.vietnam.vn/wp-content/uploads/2023/08/04-Tre-Em-Vung-Cao.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        color: white;
    }
    a {
        text-decoration: none;
        color: #ffffff;
    }

    .header {
        display: grid;
        height: 70px;
        background-color: #198754;
    }

    .content {
        font-size: 2rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    .main {
        margin-top: 50px;
        border: 1px solid #90953b;
        height: 400px;
        width: 460px;
        border-radius: 12px;
        box-shadow: 1px 1px 3px 1px #90953b;
        display: grid;
        background-color: rgba(0, 0, 0, .5);
    }
    #btn {
        width: 100%;
        place-self: center;
    }
    .user-name {
        font-weight: bold;

    }
</style>
<body>
<div class="header">
    <div class="content"><a href="nuoi-em-trang-chu.jsp">Trang chủ</a></div>
</div>
<div class="container main">
    <div class="user mt-2 mb-0">
        Xin chào: <span class="user-name">${tenNguoiDung}</span>
    </div>
    <form action="tai-khoan?action=suaTaiKhoan" method="post">
        <input type="hidden" name="maTaiKhoan" id="maTaiKhoan" value="${maTaiKhoan}">
        <div class="mb-1">
            <label for="matKhau" class="form-label">Mật khẩu mới</label>
            <input type="password" id="matKhau" name="matKhau" class="form-control" required>
        </div>
        <div class="mb-3">
            <label for="xacNhanMatKhau" class="form-label">Xác nhận mật khẩu</label>
            <input type="password" id="xacNhanMatKhau" name="xacNhanMatKhau" class="form-control" required>
        </div>
        <div class="mb-3">
            <button id="btn" type="submit" class="btn btn-primary">Xác nhận</button>
        </div>
        <div class="mb-3">
            <button id="btn" type="button" class="btn btn-secondary"><a href="trang-chu">Hủy</a></button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
