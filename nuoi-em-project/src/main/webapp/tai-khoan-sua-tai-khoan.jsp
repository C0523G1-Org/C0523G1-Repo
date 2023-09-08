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
        border-radius: 15px;
        box-shadow: 1px 1px 3px 1px #90953b;
        display: grid;
        background-color: rgba(0, 0, 0, .5);
    }

    .user {
        text-align: center;
    }
    #btn {
        width: 100%;
        border-radius: 15px;
    }

    .user-name {
        font-weight: bold;
    }
</style>
<body>
<div class="header">
    <div class="content"><a href="#">Thay đổi mật khẩu</a></div>
</div>

<div class="container main">
    <div class="user mt-2 mb-0">
        Xin chào: <span class="user-name">${tenTaiKhoan}</span>
    </div>
    <span>${thongBao}</span>
    <div class="form-main">
        <form action="tai-khoan?action=suaTaiKhoan" method="post"
              name="form-1" id="form-1" onsubmit="return(validate());">
            <div class="form-group mb-0 mt-0">
                <label for="matKhau" class="form-label">Mật khẩu mới</label>
                <input type="password" id="matKhau" name="matKhau" class="form-control" placeholder="Nhập mật khẩu"
                       required>
                <span class="form-message text-warning"></span>
            </div>
            <div class="form-group mb-1 mt-1">
                <label for="xacNhanMatKhau" class="form-label">Xác nhận mật khẩu</label>
                <input type="password" id="xacNhanMatKhau" name="xacNhanMatKhau" class="form-control"
                       placeholder="Nhập lại mật khẩu" required>
                <span class="form-message text-warning"></span>
            </div>
            <div>
                <span>${notice}</span>
            </div>
            <div class="mb-3 mt-4">
                <button id="btn" type="submit" class="btn btn-primary">Xác nhận</button>
            </div>
            <div class="mb-3 mt-4">
                <button id="cancel" type="button" class="btn btn-secondary">
                    <a href="nuoi-em-trang-chu.jsp">Hủy bỏ</a>
                </button>
            </div>
            <input type="hidden" value="${tenTaiKhoan}" name="tenTaiKhoan" id="tenTaiKhoan">
            <input type="hidden" value="${maTaiKhoan}" name="maTaiKhoan" id="maTaiKhoan">
            <input type="hidden" value="${matKhau}" name="matKhau" id="matKhau">
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
            Validator.minLength('#matKhau'),
            Validator.isConfirmed('#xacNhanMatKhau', function (){
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
