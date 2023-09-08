<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/7/2023
  Time: 9:10 AM
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
    <title>Đăng ký thành công</title>
</head>
<style>
    * {
        font-family: 'Montserrat', sans-serif;
        font-size: .9rem
    }

    body {
        background-image: url("https://happy.vietnam.vn/wp-content/uploads/2023/08/04-Tre-Em-Vung-Cao.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        color: white;
        display: grid;
        margin: 0;
        padding: 0;
    }

    a {
        text-decoration: none;
        color: #ffffff;
    }

    .header {
        display: grid;
        height: 70px;
        background-color: rgba(25, 135, 84, .8);
    }

    .content {
        font-size: 2rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    .container {
        display: grid;
        margin-top: 4rem;
    }

    .main {
        border: 1px solid black;
        height: 10rem;
        width: 70rem;
        border-radius: 12px;
        box-shadow: 3px 3px 3px 1px #29272a;
        display: grid;
        background-color: rgba(0, 0, 0, .55);
        place-self: center;
    }
    .notice, .notice a, .notice .user {
        place-self: center;
        font-family: 'Montserrat', sans-serif;
        font-size: 1.2rem
    }
    a {
        color: #198754;
    }
    a:hover {
        color: #342ff6;
    }
    .notice .user {
        color: yellow;
    }
</style>
<body>
<div class="header">
    <div class="content">Đăng ký</div>
</div>
<div class="container">
    <div class="main">
            <span class="notice">Đăng ký tài khoản: <span class="user">${tenTaiKhoan}</span> thành công, bấm <a href="nuoi-em-trang-chu.jsp"> vào đây</a> để quay về trang chủ hoặc <a
                    href="dang-nhap.jsp">đăng nhập</a></span>
</div>
</div>
</body>
</html>
