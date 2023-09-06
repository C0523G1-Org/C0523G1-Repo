<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/5/2023
  Time: 9:17 AM
  To change this template use File | Settings | File Templates.
--%>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <%@ page contentType="text/html; charset=UTF-8" %>
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
    <style>
        * {
            box-sizing: border-box;
            /*border: 1px solid blue;*/
        }

        .header {
            height: 69px;
            background-color: #90953b;
        }

        #login, input {
            width: 20%;
        }

        .header {
            display: grid;
        }

        .content {
            font-size: 2.3rem;
            color: white;
            place-self: center;
        }

        #login {
            background-color:  #90953b;
        }

        .main {
            display: grid;
        }

        .form-child {
            width: 500px;
            place-self: center;
        }

        #login {
            width: 500px;
            place-self: center;
            background-color: white;
            color: black;
        }

        #login:hover {
            background-color:  #90953b;
            color: white;
        }

        .footer-form {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="header">
    <div class="content">Đăng nhập</div>
</div>
<div class="form-main" >
    <div class="container mt-5">
        <form action="/tai-khoan?action=dangNhap" method="post" >
            <div class="main">
                <div class="form-floating mb-3 form-child">
                    ${saiThongTin}
                </div>
                <div class="form-floating mb-3 form-child">
                    <input name="tenTaiKhoan" type="text" class="form-control" id="floatingInput" placeholder="Tên tài khoản" required>
                    <label for="floatingInput">Tên tài khoản</label>
                </div>
                <div class="form-floating mb-3 form-child">
                    <input name="matKhau" type="password" class="form-control" id="floatingPassword" placeholder="Mật khẩu" required>
                    <label for="floatingPassword">Mật khẩu</label>
                </div>
                <div class="form-floating form-child">
                    <button id="login" type="submit" class="btn btn-primary">Đăng nhập</button>
                </div>
            </div>
        </form>
        <div class="footer-form">
            Chưa đăng ký thành viên? <a href="/tai-khoan?action=themTaiKhoan">Đăng ký</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
