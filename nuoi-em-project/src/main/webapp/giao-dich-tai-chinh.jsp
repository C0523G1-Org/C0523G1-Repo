<%--
  Created by IntelliJ IDEA.
  User: mylie
  Date: 9/6/2023
  Time: 11:06 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Tài chính</title>
    <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">
</head>
<body>
<div class="container">

    <div class="row">
        <div class="col-xl-6" style="text-align: center">
            <div style="border-bottom: 1px solid green;">
                <img src="logo.png" alt="logo" style="width: 100px">
                <strong>DỰ ÁN NUÔI EM</strong><br>
            </div>


            <br>
            <p>Trang tài chính của dự án Nuôi Em
                Được cập nhật bởi chính 5 bạn TNV là anh chị Nuôi Em.

                Dự án Nuôi Em không có kiểm toán, không phải là Quỹ, không có số tài khoản Quỹ nhưng sẽ tìm mọi cách
                "chặt chẽ" và "minh bạch" hơn cả kiểm toán.</p>
        </div>
        <div class="col-xl-6">
            <p>
                Trong những nỗ lực công khai tài chính, các bạn sẽ thấy dự án Nuôi Em là một dự án rất "kỳ lạ".
                Không quá trú trọng hết vào mặt "giấy tờ" - cái mà dự án cho rằng rất nhiều cách để làm được.</p>

            <p> Dự án còn "tự làm khó mình" khi nghĩ ra rất nhiều cách và còn cùng lắng nghe các cách khác mọi người góp
                ý để ngày càng minh bạch hơn theo-rất-nhiều-cách và luôn luôn cập nhật những cách làm mới. Nếu có cách
                nào
                bạn cứ liên hệ với chúng tôi ở phía dưới.</p>

            <p> Dự án còn vinh dự được nhiều anh chị em ở tổ chức phi chính phủ, phi lợi nhuận, tổ chức kiểm toán uy tín
                tham gia nuôi em sau này còn tham gia hỗ trợ kiểm soát, giúp tối ưu về mặt tài chính giúp dự án.</p>

            <p> Khi đồng ý nuôi em, cũng có nghĩa bạn đã hoàn toàn nắm rõ thông tin về Chương trình, uỷ quyền, đồng
                thuận,
                tin tưởng về cách thức quản lý tài chính, triển khai thực hiện do Nhóm Nuôi em đang vận hành, triển
                khai, đồng thời trao quyền để Nhóm quyết định những vấn đề liên quan đến Chương trình.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/2.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Update hàng ngày</h5>
                            <p class="card-text"><b>vào buổi tối</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/3.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Sao kê theo</h5>
                            <p class="card-text"><b>từng tháng</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4">
            <div class="card mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="images/anh-trang-tai-chinh/4.png" class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Giám sát bởi</h5>
                            <p class="card-text"><b>20+ bạn TNV</b></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div>
    <form action="/tai-chinh?action=xem" method="post">
        <h5>Nhập thời gian bạn muốn xem sao kê:</h5>
        <div class="row">
            <div class="col-12 col-xl-6">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="thang" class="col-form-label">Tháng:</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="thang" class="form-control" name="thang"
                               aria-describedby="passwordHelpInline">
                    </div>
                </div>
            </div>
            <div class="col-12 col-xl-6">
                <div class="row g-3 align-items-center">
                    <div class="col-auto">
                        <label for="nam" class="col-form-label">Năm:</label>
                    </div>
                    <div class="col-auto">
                        <input type="text" id="nam" class="form-control" name="nam"
                               aria-describedby="passwordHelpInline">
                    </div>
                </div>
            </div>
        </div>
        <button type="submit" class="btn btn-success">Hiển thị</button>

        <div class="row">
            <div class="col-lg-12">
                <h2 class="title-1 m-b-25 justify-content-center d-flex">Lịch sử giao dịch</h2>
                <div class="table-responsive table--no-card m-b-40">
                    <table class="table table-success table-striped">
                        <thead>
                        <div>
                            <tr style="background-color: lightgoldenrodyellow">
                                <th colspan="2">
                                    Tổng số tiền:
                                </th>
                                <th colspan="2">
                                    ${chenhLech}
                                </th>
                            </tr>
                            <tr style="background-color: lightgoldenrodyellow">
                                <th colspan="2">
                                    Tổng thu:
                                </th>
                                <th colspan="2">
                                    ${tongThu}
                                </th>
                            </tr>
                            <tr style="background-color: lightgoldenrodyellow">
                                <th colspan="2">
                                    Tổng chi:
                                </th>
                                <th colspan="2">
                                    ${tongChi}
                                </th>
                            </tr>
                        </div>

                        <tr>
                            <th>STT</th>
                            <th>Ngày giao dịch</th>
                            <th>Số tiền</th>
                            <th>Nội dung</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:if test="${thongBao!=null}">
                            <h2>${thongBao}</h2>
                        </c:if>
                        <c:forEach items="${danhSachGiaoDich}" var="d" varStatus="loop">
                            <tr>
                                <td><c:out value="${loop.count}"/></td>

                                <c:set var="dateString" value="${d.ngayGiaoDich}"/>
                                <fmt:parseDate value="${dateString}" var="date" pattern="yyyy-MM-dd"/>
                                <td>
                                    <fmt:formatDate value="${date}" pattern="dd/MM/yyyy"/>
                                </td>

                                <td><c:out value="${d.soTien}"/></td>
                                <td><c:out value="${d.noiDungGiaoDich}"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </form>
</div>


</div>
<script src="js/main.js"></script>

</body>
</html>
