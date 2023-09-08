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
    <title>Thay đổi mật khẩu</title>
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
        grid-template-rows: 0fr;
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
        margin-bottom: 0;
    }

    .content {
        font-size: 2rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    .container {
        display: grid;
        margin-top: 0;
    }

    .main {
        text-align: center;
        margin-top: 0;
        border: 1px solid black;
        height: 10rem;
        width: 70rem;
        border-radius: 12px;
        box-shadow: 3px 3px 3px 1px #29272a;
        display: grid;
        background-color: rgba(0, 0, 0, .70);
        place-self: center;
    }

    .notice, .notice a, .notice .user, #count-down {
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
    <div class="content">Thay đổi mật khẩu</div>
</div>
<div class="container mb-5">
    <div class="main mb-5">
            <span class="notice">Thay đổi mật khẩu cho tài khoản: <span class="user">${tenTaiKhoan}</span> thành công,
                bấm <a href="nuoi-em-trang-chu.jsp" method="post"> vào đây</a> để quay về trang chủ nếu trình duyệt không
                tự chuyển trang sau <span id="count-down"></span> giây </span>
    </div>
</div>
<%--<input type="hidden" value="${tenTaiKhoan}" name="tenTaiKhoan" id="tenTaiKhoan">--%>
<%--<input type="hidden" value="${maTaiKhoan}" name="maTaiKhoan" id="maTaiKhoan">--%>
<%--<input type="hidden" value="${matKhau}" name="matKhau" id="matKhau">--%>
<script>
    // Khoảng thời gian chờ trước khi chuyển hướng (đơn vị là mili giây)
    var khoangThoiGian = 6000; // Ví dụ: chuyển hướng sau 6 giây

    // Hàm chuyển hướng
    function chuyenHuong() {
        window.location.href = "nuoi-em-trang-chu.jsp"; // Thay đổi đường dẫn tới trang HTML mới
    }

    // Gọi hàm chuyển hướng sau khoảng thời gian đã định
    setTimeout(chuyenHuong, khoangThoiGian);
</script>
<script>
    function countdown() {
        var count = 5; // Giá trị đếm ngược ban đầu
        // Tạo một vòng lặp setInterval để đếm ngược
        var countdownInterval = setInterval(function() {
            // In giá trị đếm ngược ra trang HTML
            document.getElementById('count-down').innerText = count;

            // Giảm giá trị đếm ngược
            count--;

            // Kiểm tra nếu đếm ngược đã đạt đến 0, dừng vòng lặp
            if (count < 0) {
                clearInterval(countdownInterval); // Dừng vòng lặp setInterval
            }
        }, 1000); // Đếm ngược mỗi giây (1000 milliseconds)
    }
    // Gọi hàm countdown để bắt đầu đếm ngược
    countdown();
</script>
</body>
</html>
