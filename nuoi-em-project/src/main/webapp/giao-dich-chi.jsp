<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/6/2023
  Time: 10:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <!-- Required meta tags-->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Title Page-->
  <title>Thêm khoản chi</title>

  <!-- Fontfaces CSS-->
  <link href="css/font-face.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

  <!-- Bootstrap CSS-->
  <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

  <!-- Vendor CSS-->
  <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
  <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
  <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
  <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
  <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
  <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
  <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

  <!-- Main CSS-->
  <link href="css/theme.css" rel="stylesheet" media="all">
  <style>
    @import url('//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css');

    .info-msg,
    .success-msg,
    .warning-msg,
    .error-msg {
      margin: 10px 0;
      padding: 10px;
      border-radius: 3px 3px 3px 3px;
    }

    .info-msg {
      color: #059;
      background-color: #BEF;
    }

    .success-msg {
      color: #270;
      background-color: #DFF2BF;
    }

    .warning-msg {
      color: #9F6000;
      background-color: #FEEFB3;
    }

    .error-msg {
      color: #D8000C;
      background-color: #FFBABA;
    }
  </style>
</head>
<body class="animsition">
<div class="page-wrapper">
  <!-- HEADER MOBILE-->
  <header class="header-mobile d-block d-lg-none">
    <div class="header-mobile__bar" style="background-color: #90953b">
      <div class="container-fluid">
        <div class="header-mobile-inner">
          <div class="logo" style="background-color: #90953b">
            <img src="images/logo.png" width="50px" height="50px" style="padding-right: 5px">
            <a href="#">
              <h3>Nuôi em</h3>
            </a>
          </div>
          <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
          </button>
        </div>
      </div>
    </div>
    <nav class="navbar-mobile">
      <div class="container-fluid">
        <ul class="navbar-mobile__list list-unstyled">
          <li>
            <a href="#">
              <i class="fas fa-signal"></i>Thống kê</a>
          </li>
          <li class="active has-sub">
            <a class="js-arrow" href="#">
              <i class="fas fa-list"></i>Danh sách</a>
            <ul class="list-unstyled navbar__sub-list js-sub-list">
              <li>
                <a href="/cam-ket">Bảng cam kết</a>
              </li>
              <li>
                <a href="/nguoi-nuoi">Mạnh thường quân</a>
              </li>
              <li>
                <a href="/nguoi-giam-ho">Người giám hộ</a>
              </li>
              <li>
                <a href="/tre-em">Trẻ em</a>
              </li>
              <li>
                <a href="/giao-dich">Tài chính</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="/tai-khoan">
              <i class="fas fa-users"></i>Tài khoản</a>
          </li>
          <li>
            <a href="/nuoi-em-trang-chu.jsp">
              <i class="fas fa-arrow-left"></i>Trở về</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>
  <!-- END HEADER MOBILE-->

  <!-- MENU SIDEBAR-->
  <aside class="menu-sidebar d-none d-lg-block">
    <div class="logo" style="background-color: #90953b">
      <img src="images/logo.png" width="50px" height="50px" style="padding-right: 5px">
      <a href="#">
        <h3>Nuôi em</h3>
      </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1" style="background-color: #78853f">
      <nav class="navbar-sidebar">
        <ul class="list-unstyled navbar__list">
          <li>
            <a href="#">
              <i class="fas fa-signal"></i>Thống kê</a>
          </li>
          <li class="active has-sub">
            <a class="js-arrow" href="#">
              <i class="fas fa-list"></i>Danh sách</a>
            <ul class="list-unstyled navbar__sub-list js-sub-list">
              <li>
                <a href="/cam-ket">Bảng cam kết</a>
              </li>
              <li>
                <a href="/nguoi-nuoi">Mạnh thường quân</a>
              </li>
              <li>
                <a href="/nguoi-giam-ho">Người giám hộ</a>
              </li>
              <li>
                <a href="/tre-em">Trẻ em</a>
              </li>
              <li>
                <a href="/giao-dich">Tài chính</a>
              </li>
            </ul>
          </li>
          <li>
            <a href="/tai-khoan">
              <i class="fas fa-users"></i>Tài khoản</a>
          </li>
          <li>
            <a href="/nuoi-em-trang-chu.jsp">
              <i class="fas fa-arrow-left"></i>Trở về</a>
          </li>
        </ul>
      </nav>
    </div>
  </aside>
  <!-- END MENU SIDEBAR-->

  <!-- PAGE CONTAINER-->
  <div class="page-container">
    <!-- HEADER DESKTOP-->
    <header class="header-desktop" style="background-color: #78853f">
      <div class="section__content section__content--p30">
        <div class="container-fluid">
          <div class="header-wrap">
            <div class="form-header">
            </div>
            <div class="header-button">
              <div class="account-wrap">
                <div class="account-item clearfix js-item-menu">
                  <div class="image">
                    <img src="images/icon/avatar.jpg" alt="Zhang Ming"/>
                  </div>
                  <div class="content">
                    <a class="js-acc-btn" href="#">Admin</a>
                  </div>
                  <div class="account-dropdown js-dropdown">
                    <div class="info clearfix">
                      <div class="image">
                        <a href="#">
                          <img src="images/icon/avatar.jpg" alt="Zhang Ming"/>
                        </a>
                      </div>
                      <div class="content">
                        <h5 class="name">
                          <a href="#">Admin</a>
                        </h5>
                        <span class="email">nuoiem@gmail.com</span>
                      </div>
                    </div>
                    <div class="account-dropdown__body">
                      <div class="account-dropdown__item">
                        <a href="#">
                          <i class="zmdi zmdi-account"></i>Thông tin cá nhân</a>
                      </div>
                    </div>
                    <div class="account-dropdown__footer">
                      <a href="#">
                        <i class="zmdi zmdi-power"></i>Đăng xuất</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>
    <!-- HEADER DESKTOP-->

    <!-- MAIN CONTENT-->
    <div class="main-content">
      <div class="section__content section__content--p30">
        <div class="container-fluid">
          <div class="row">
            <div class="col-lg-12">
              <div class="card">
                <div class="card-header">
                  <strong>Thêm giao dịch tiền chi</strong>
                </div>
                <div class="card-body card-block">


                  <form action="/giao-dich?action=themChi" method="post" name="form-2" id="form-2"
                        class="form-horizontal">

                    <div class="row form-group">
                      <div class="col col-md-3">
                        <label for="ngayGiaoDich" class="col-form-label">Ngày giao dịch</label>
                      </div>
                      <div class="col-12 col-md-9">
                        <input type="text" id="ngayGiaoDich" name="ngayGiaoDich" class="form-control"
                               aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                        <span class="form-message text-warning"></span>
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3">
                        <label for="soTien" class="col-form-label">Số tiền</label>
                      </div>
                      <div class="col-12 col-md-9">
                        <input type="text" id="soTien" name="soTien" class="form-control"
                               aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                        <span class="form-message text-warning"></span>
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col col-md-3">
                        <label for="noiDung" class="col-form-label">Nội dung</label>
                      </div>
                      <div class="col-12 col-md-9">
                        <input type="text" id="noiDung" name="noiDung" class="form-control"
                               aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                        <span class="form-message text-warning"></span>
                      </div>
                    </div>
                    <div class="row form-group">
                      <div class="col-12 col-md-3">
                        <label for="maGiamHo" class="col-form-label">Mã người giám hộ</label>
                      </div>
                      <div class="col-12 col-md-9">
                        <input type="text" id="maGiamHo" name="maGiamHo" class="form-control"
                               aria-describedby="passwordHelpInline" style="text-transform:capitalize">
                        <span class="form-message text-warning"></span>
                      </div>
                    </div>

                    <div class="card-footer">
                      <button class="btn" style="background-color: #ffff00" type="submit">
                        Xác nhận
                      </button>
                      <a href="/giao-dich" class="btn btn-dark">Đóng</a>
                    </div>
                  </form>
                </div>
                <div class="row form-group">
                  <c:if test="${thongBao != null}">
                    <div class="success-msg">
                      <i class="fa fa-check"></i>
                        ${thongBao}
                    </div>
                  </c:if>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<%--validate--%>
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

  Validator.minMoney = function (selector) {
    return {
      selector: selector,
      test: function (value) {
        return value.length >= 500000 ? undefined : 'Vui lòng nhập tối thiểu 500.000đ';
      }
    };
  }
  Validator.khoanChi = function (selector) {
    return {
      selector: selector,
      test: function (value) {
        var regex = /^-\d+$/;
        return regex.test(value) ? undefined : 'Số tiền chi nên vui lòng nhập âm';
      }
    };
  }
</script>

<script>
  Validator({
    form: '#form-2',
    errorSelector: '.form-message',
    rules: [
      Validator.isRequired('#ngayGiaoDich'),
      Validator.isRequired('#maGiamHo'),
      Validator.isRequired('#noiDung'),
      Validator.khoanChi('#soTien'),
    ]
  });
</script>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>





<%--<form method="post" action="/giao-dich?action=themChi">--%>

<%--  <c:if test="${thongBao != null}">--%>
<%--    <div class="alert alert-success d-flex align-items-center" role="alert">--%>
<%--      <svg class="bi flex-shrink-0 me-2" width="0" height="0" role="img"--%>
<%--           aria-label="Success:">--%>
<%--        <use xlink:href="#check-circle-fill"/>--%>
<%--      </svg>--%>
<%--      <div>--%>
<%--        <i class="fa-regular fa-circle-check"></i><label--%>
<%--              style="padding-left: 5px">${thongBao}</label>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--  </c:if>--%>

<%--  <div class="card">--%>
<%--    <div class="card-header">--%>
<%--      <strong>Thêm giao dịch tiền chi</strong>--%>
<%--    </div>--%>
<%--    <div class="card-body">--%>
<%--      <div class="row g-3 align-items-center">--%>
<%--        <div class="col-12 col-md-3">--%>
<%--          <label for="ngayGiaoDich" class="col-form-label">Ngày giao dịch</label>--%>
<%--        </div>--%>
<%--        <div class="col-12 col-md-9">--%>
<%--          <input type="text" id="ngayGiaoDich" name="ngayGiaoDich" class="form-control"--%>
<%--                 aria-describedby="passwordHelpInline" style="text-transform:capitalize">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="row g-3 align-items-center">--%>
<%--        <div class="col-12 col-md-3">--%>
<%--          <label for="soTien" class="col-form-label">Số tiền</label>--%>
<%--        </div>--%>
<%--        <div class="col-12 col-md-9">--%>
<%--          <input type="text" id="soTien" name="soTien" class="form-control"--%>
<%--                 aria-describedby="passwordHelpInline" style="text-transform:capitalize">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="row g-3 align-items-center">--%>
<%--        <div class="col-12 col-md-3">--%>
<%--          <label for="noiDung" class="col-form-label">Nội dung</label>--%>
<%--        </div>--%>
<%--        <div class="col-12 col-md-9">--%>
<%--          <input type="text" id="noiDung" name="noiDung" class="form-control"--%>
<%--                 aria-describedby="passwordHelpInline" style="text-transform:capitalize">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--      <div class="row g-3 align-items-center">--%>
<%--        <div class="col-12 col-md-3">--%>
<%--          <label for="maGiamHo" class="col-form-label">Mã người giám hộ</label>--%>
<%--        </div>--%>
<%--        <div class="col-12 col-md-9">--%>
<%--          <input type="text" id="maGiamHo" name="maGiamHo" class="form-control"--%>
<%--                 aria-describedby="passwordHelpInline" style="text-transform:capitalize">--%>
<%--        </div>--%>
<%--      </div>--%>
<%--    </div>--%>
<%--    <div class="card-footer text-body-secondary">--%>
<%--      <button type="submit">Xác nhận</button>--%>
<%--      <a href="/giao-dich" class="btn btn-dark">Đóng</a>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</form>--%>

<%--<!-- Main JS-->--%>
<%--<script src="js/main.js"></script>--%>
</body>
</html>
