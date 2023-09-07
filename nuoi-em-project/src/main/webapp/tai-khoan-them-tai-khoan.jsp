<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 9/3/2023
  Time: 6:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@100;200;300;400;500;600;700&display=swap"
          rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="UTF-8">
    <title>Đăng ký thành viên</title>
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
    }

    a {
        text-decoration: none;
        color: #ffffff;
    }

    .header {
        display: grid;
        height: 70px;
        background-color: rgba(25, 135, 84, 1.1);
    }

    .content {
        font-size: 2rem;
        color: white;
        place-self: center;
        text-shadow: 2px 2px 4px #000000
    }

    .container {
        display: grid;
    }

    .main {
        margin-top: 1.5rem;
        border: 1px solid black;
        height: 42rem;
        width: 30rem;
        border-radius: 12px;
        box-shadow: 3px 3px 3px 1px #29272a;
        display: grid;
        background-color: rgba(0, 0, 0, .55);
        place-self: center;
    }

    .form-group {
        text-align: center;
        display: grid;
    }

    .form-control {
        width: 80%;
        place-self: center;
    }

    .gender {
        margin-top: 10px;
        padding-bottom: 0;
    }

    #btn {
        width: 80%;
        place-self: center;
    }

    form {
        display: grid;
    }

    .gender {
        display: flex;
        flex-direction: row;
        place-self: center;
        margin: .3rem;
    }

    .log-in {
        place-self: center;
    }
</style>
<body>
<div class="header">
    <div class="content">Đăng ký</div>
</div>
<div class="container">
    <div class="main">
        <form action="/tai-khoan?action=themTaiKhoan" method="post" name="form-1"
              id="form-1" onsubmit="return(validate());">
            <div class="form-group mb-1 mt-3">
                <label for="tenNguoiDung" class="form-label">Họ và tên</label>
                <input id="tenNguoiDung" name="tenNguoiDung" value="${tenNguoiDung}" type="text" class="form-control"
                       required>
                <span class="form-message text-warning"></span>
            </div>
            <div class="form-group mb-1 mt-3">
                <label for="tenTaiKhoan" class="form-label">Tên tài khoản</label>
                <input id="tenTaiKhoan" name="tenTaiKhoan" value="${tenTaiKhoan}" type="text" class="form-control"
                       required>
                <span class="form-message text-warning"></span>
                <span>${taiKhoanDaTonTai}</span>
            </div>
            <div class="form-group mb-1 mt-3">
                <label for="email" class="form-label">Địa chỉ Email</label>
                <input id="email" name="email" type="email" value="${email}" class="form-control" required
                       placeholder="vd. abc@mail.com">
                <span class="form-message text-warning"></span>
                <span>${emailTonTai}</span>
            </div>
            <div class="form-group mb-1 mt-3">
                <label for="soDienThoai" class="form-label">Số điện thoại</label>
                <input id="soDienThoai" name="soDienThoai" value="${soDienThoai}" type="tel" class="form-control"
                       required>
                <span class="form-message text-warning"></span>
            </div>
            <div class="gender">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gioiTinh" id="1" value="1" checked>
                    <label class="form-check-label" for="1">
                        Nam
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="gioiTinh" id="0" value="0">
                    <label class="form-check-label" for="0">
                        Nữ
                    </label>
                </div>
            </div>
            <div class="form-group mb-0 mt-0">
                <label for="matKhau" class="form-label">Mật khẩu</label>
                <input type="password" id="matKhau" name="matKhau" class="form-control" placeholder="Nhập mật khẩu"
                       required>
                <span class="form-message text-warning"></span>
            </div>
            <div class="form-group mb-1 mt-1">
                <label for="nhapLaiMatKhau" class="form-label">Xác nhận mật khẩu</label>
                <input type="password" id="nhapLaiMatKhau" name="nhapLaiMatKhau" class="form-control"
                       placeholder="Nhập lại mật khẩu" required>
                <span class="form-message text-warning"></span>
            </div>
            <button id="btn" type="submit" class="btn btn-success mt-2">Đăng ký</button>
            <div class="log-in mt-2 mb-2">Đã có tài khoản?
                <button id="login" type="button" class="btn btn-primary">
                    <a href="/dang-nhap.jsp">Đăng nhập!</a></button>
            </div>
        </form>
    </div>
</div>
<script>
    function Validator(options) {

        function validate(inputElement, rule) {
            var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
            var errorMessage = rule.test(inputElement.value)
            if (errorMessage) {
                errorElement.innerText = errorMessage;
                inputElement.parentElement.classList.add('invalid');
            } else {
                errorElement.innerText = '';
                inputElement.parentElement.classList.remove('invalid');
            }
        }

        var formElement = document.querySelector(options.form);
        if (formElement) {

            options.rules.forEach(function (rule) {
                var inputElement = formElement.querySelector(rule.selector);
                if (inputElement) {
                    inputElement.onblur = function () {
                        validate(inputElement, rule)
                    }
                    inputElement.oninput = function () {
                        var errorElement = inputElement.parentElement.querySelector('.form-message');
                        errorElement.innerText = '';
                        inputElement.parentElement.classList.remove('invalid');
                    }
                }
            });
        }
    }

    //dinh nghia rules
    //nguyen tac cua rules
    //1. khi co loi -> tra ra message loi
    //2. khi hop le thi thoi (undefined)
    Validator.isRequired = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                return value.trim() ? undefined : 'Vui lòng nhập trường này';
            }
        };
    }
    Validator.isEmail = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                return regex.test(value) ? undefined : 'Trường này phải là email hợp lệ';
            }
        };
    }
    Validator.minLength = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                return value.length >= 6 ? undefined : 'Vui lòng nhập tối thiểu 6 ký tự';
            }
        };
    }
    Validator.isConfirmed = function (selector, getConfirmValue) {
        return {
            selector: selector,
            test: function (value) {
                return value === getConfirmValue() ? undefined : 'Giá trị nhập vào không trùng khớp';
            }
        };
    }
    Validator.isTelNumber = function (selector) {
        return {
            selector: selector,
            test: function (value) {
                var regex = /^\d{10,}$/;
                return regex.test(value) ? undefined : 'Số điện thoại không hợp lệ';
            }
        };
    }
</script>
<script>
    Validator({
        form: '#form-1',
        errorSelector: '.form-message',
        rules: [
            Validator.isRequired('#tenNguoiDung'),
            Validator.isRequired('#tenTaiKhoan'),
            Validator.isRequired('#soDienThoai'),
            Validator.isEmail('#email'),
            Validator.minLength('#matKhau'),
            Validator.isTelNumber('#soDienThoai'),
            Validator.isConfirmed('#nhapLaiMatKhau', function (){
                return document.querySelector('#form-1 #matKhau').value;
            }),
        ]
    });
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
        crossorigin="anonymous"></script>
</body>
</html>
