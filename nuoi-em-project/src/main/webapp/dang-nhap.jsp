<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <title>Đăng nhập</title>
</head>
<style>
    * {
        box-sizing: border-box;
        font-family: 'Montserrat', sans-serif;
        font-size: 1.1rem;
    }

    .header {
        height: 69px;
        background-color: rgba(25, 135, 84, .7);
    }

    .header {
        display: grid;
    }

    .content {
        font-size: 1.6rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    body {
        margin: 0;
        display: grid;
        background-image: url("https://haycafe.vn/wp-content/uploads/2022/01/hinh-anh-tre-em.jpg");
        background-position: center;
        background-size: auto;
        background-repeat: no-repeat;
    }

    .main {
        width: 685px;
        height: 400px;
        border: 1px solid #198754;
        align-self: center;
        border-radius: 19px;
        place-self: center;
        background-color: rgba(0, 0, 0, .5);
    }

    a {
        text-decoration: none;
    }

    .footer-form {
        text-align: center;
    }

    .form-main {
        display: grid;
    }

    a {
        color: white;
    }

    a:hover {
        color: yellow;
    }

    .text {
        color: white;
        text-align: center;
        margin-top: 20px;
    }

    .form-child {
        display: grid;
    }

    .footer-form {
        margin-top: 20px;
        color: white;
    }

    #login, input {
        width: 60%;
        height: 35px;
        border-radius: 7px;
    }

    #login:hover {
        background-color: #198754;
        border: none;
        color: white;
    }

    #login {
        margin-top: 20px;
    }

    #login {
        border-radius: 15px;
        place-self: center;
    }

    .notice {
        padding-top: 15px;
        padding-left: 15px;
        text-align: center;
        color: yellow;
    }
</style>
<body>
<div class="header">
    <div class="content">Đăng nhập</div>
</div>
<div class="main">
    <div class="notice">
        ${saiThongTin}
    </div>
    <div class="form-main">
        <form action="/tai-khoan?action=dangNhap" method="post">
            <div class="form-floating mb3 form-child">
                <div class="text">
                    <label for="floatingInput">Tên tài khoản</label>
                </div>
                <div style="text-align: center; margin-top: .7rem;">
                    <input name="tenTaiKhoan" type="text" class="form-control" id="floatingInput"
                           placeholder="Tên tài khoản" required>
                </div>
            </div>
            <div class="form-floating mb-3 form-child">
                <div class="text"><label for="floatingPassword">Mật khẩu</label></div>
                <div style="text-align: center; margin-top: .7rem;">
                    <input name="matKhau" type="password" class="form-control" id="floatingPassword"
                           placeholder="Mật khẩu" required></div>
            </div>
            <div class="form-floating form-child" style="text-align: center; margin-top: 1rem;">
                <button id="login" type="submit" class="btn btn-primary">Đăng nhập</button>
            </div>
        </form>
    </div>
    <div class="footer-form">
        Chưa đăng ký thành viên? <a href="/tai-khoan?action=themTaiKhoan">Đăng ký</a>
    </div>
    <div class="footer-form">
        Quay về <a href="nuoi-em-trang-chu.jsp">trang chủ</a>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>