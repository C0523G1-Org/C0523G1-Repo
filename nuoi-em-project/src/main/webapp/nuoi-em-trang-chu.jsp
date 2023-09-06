<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <!-- Basic -->
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <!-- Site Metas -->
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Nuôi em</title>

    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css"/>

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css"/>

    <!-- fonts style -->
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700|Poppins:400,700|Roboto:400,700&display=swap"
          rel="stylesheet"/>


    <!-- Custom styles for this template -->
    <link href="css/style.css" rel="stylesheet"/>
    <!-- responsive style -->
    <link href="css/responsive.css" rel="stylesheet"/>
</head>


<body>
<div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
        <div class="container">
            <nav class="navbar navbar-expand-lg custom_nav-container ">
                <a class="navbar-brand" href="index.html">
                    <img src="images/logo.png" width="50px" height="50px" alt=""/>
                    <span>
              Nuôi em
            </span>
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
                        <ul class="navbar-nav  ">
                            <li class="nav-item active">
                                <a class="nav-link" href="index.html">
                                    Trang chủ <span class="sr-only">(current)</span></a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/tre-em">Trẻ em</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Chứng nhận</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/tai-chinh">Tài chính</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="/tai-khoan?action=dangNhap">Đăng nhập</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
        <div class="container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    <%--                    <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>--%>
                    <%--                    <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>--%>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        Chào mừng đến với dự án cộng đồng <br/>
                                        <span>
                                            Nuôi em
                                        </span>
                                    </h1>
                                    <p>
                                        Tiếng cười của một đứa trẻ khiến ta liên tưởng đến một bản nhạc sôi động, vui
                                        nhộn nhất mà ta được nghe thấy trên thế gian này.
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn-1">
                                            Đọc thêm
                                        </a>
                                        <a href="" class="btn-2">
                                            Liên hệ
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        Mỗi người một chút <br/>
                                        <span>
                                            Ít thôi nhưng đều đặn
                                        </span>
                                    </h1>
                                    <p>
                                        Nếu bạn đồng hành cùng Cơm Có Thịt, thì đó chỉ là do mệnh lệnh từ trái tim của
                                        bạn
                                    </p>
                                    <div class="btn-box">
                                        <a href="" class="btn-1">
                                            Đọc thêm
                                        </a>
                                        <a href="" class="btn-2">
                                            Liên hệ
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="detail-box">
                                    <h1>
                                        Cùng em đến trường - chắp cánh ước mơ <br/>
                                        <span>
                                           cho trẻ
                                        </span>
                                    </h1>
                                    <p>
                                        Chúng tôi mong muốn các em học sinh, các cô của điểm trường có điều kiện học tốt
                                        hơn. Các em đến trường, đến lớp đầy đủ để trước tiên trường lớp là nơi để các em
                                        được vui chơi an toàn trong khi bố mẹ đi nương và sau đó là các em được tiếp thu
                                        kiến thức, sau này sẽ thay đổi bản làng tốt đẹp hơn
                                    </p>
                                    <div class="btn-box">
                                        <a href="https://trangtraiviet.danviet.vn/ngoi-truong-chap-canh-uoc-mo-cho-tre-em-vung-cao-20230311214552551.htm"
                                           class="btn-1">
                                            Đọc thêm
                                        </a>
                                        <a href="" class="btn-2">
                                            Liên hệ
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end slider section -->
</div>

<!-- offer section -->

<section class="offer_section hero_next_section-margin layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>
                Những gì chúng tôi cung cấp
            </h2>
            <p>
                Dù ở đâu cũng không ngừng ngại, sự ủng hộ của các mạnh thường quân là những cơ hội để các em phát triển
            </p>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="content-box">
                    <div class="img-box">
                        <svg xmlns="http://www.w3.org/2000/svg" height="512pt" version="1.1"
                             viewBox="-38 0 512 512.00142" width="512pt">
                            <g id="surface1">
                                <path d="M 435.488281 138.917969 L 435.472656 138.519531 C 435.25 133.601562 435.101562 128.398438 435.011719 122.609375 C 434.59375 94.378906 412.152344 71.027344 383.917969 69.449219 C 325.050781 66.164062 279.511719 46.96875 240.601562 9.042969 L 240.269531 8.726562 C 227.578125 -2.910156 208.433594 -2.910156 195.738281 8.726562 L 195.40625 9.042969 C 156.496094 46.96875 110.957031 66.164062 52.089844 69.453125 C 23.859375 71.027344 1.414062 94.378906 0.996094 122.613281 C 0.910156 128.363281 0.757812 133.566406 0.535156 138.519531 L 0.511719 139.445312 C -0.632812 199.472656 -2.054688 274.179688 22.9375 341.988281 C 36.679688 379.277344 57.492188 411.691406 84.792969 438.335938 C 115.886719 468.679688 156.613281 492.769531 205.839844 509.933594 C 207.441406 510.492188 209.105469 510.945312 210.800781 511.285156 C 213.191406 511.761719 215.597656 512 218.003906 512 C 220.410156 512 222.820312 511.761719 225.207031 511.285156 C 226.902344 510.945312 228.578125 510.488281 230.1875 509.925781 C 279.355469 492.730469 320.039062 468.628906 351.105469 438.289062 C 378.394531 411.636719 399.207031 379.214844 412.960938 341.917969 C 438.046875 273.90625 436.628906 199.058594 435.488281 138.917969 Z M 384.773438 331.523438 C 358.414062 402.992188 304.605469 452.074219 220.273438 481.566406 C 219.972656 481.667969 219.652344 481.757812 219.320312 481.824219 C 218.449219 481.996094 217.5625 481.996094 216.679688 481.820312 C 216.351562 481.753906 216.03125 481.667969 215.734375 481.566406 C 131.3125 452.128906 77.46875 403.074219 51.128906 331.601562 C 28.09375 269.097656 29.398438 200.519531 30.550781 140.019531 L 30.558594 139.683594 C 30.792969 134.484375 30.949219 129.039062 31.035156 123.054688 C 31.222656 110.519531 41.207031 100.148438 53.765625 99.449219 C 87.078125 97.589844 116.34375 91.152344 143.234375 79.769531 C 170.089844 68.402344 193.941406 52.378906 216.144531 30.785156 C 217.273438 29.832031 218.738281 29.828125 219.863281 30.785156 C 242.070312 52.378906 265.921875 68.402344 292.773438 79.769531 C 319.664062 91.152344 348.929688 97.589844 382.246094 99.449219 C 394.804688 100.148438 404.789062 110.519531 404.972656 123.058594 C 405.0625 129.074219 405.21875 134.519531 405.453125 139.683594 C 406.601562 200.253906 407.875 268.886719 384.773438 331.523438 Z M 384.773438 331.523438 "
                                      style=" stroke:none;fill-rule:nonzero;fill:rgb(0%,0%,0%);fill-opacity:1;"/>
                                <path d="M 217.996094 128.410156 C 147.636719 128.410156 90.398438 185.652344 90.398438 256.007812 C 90.398438 326.367188 147.636719 383.609375 217.996094 383.609375 C 288.351562 383.609375 345.59375 326.367188 345.59375 256.007812 C 345.59375 185.652344 288.351562 128.410156 217.996094 128.410156 Z M 217.996094 353.5625 C 164.203125 353.5625 120.441406 309.800781 120.441406 256.007812 C 120.441406 202.214844 164.203125 158.453125 217.996094 158.453125 C 271.785156 158.453125 315.546875 202.214844 315.546875 256.007812 C 315.546875 309.800781 271.785156 353.5625 217.996094 353.5625 Z M 217.996094 353.5625 "
                                      style=" stroke:none;fill-rule:nonzero;fill:rgb(0%,0%,0%);fill-opacity:1;"/>
                                <path d="M 254.667969 216.394531 L 195.402344 275.660156 L 179.316406 259.574219 C 173.449219 253.707031 163.9375 253.707031 158.070312 259.574219 C 152.207031 265.441406 152.207031 274.953125 158.070312 280.816406 L 184.78125 307.527344 C 187.714844 310.460938 191.558594 311.925781 195.402344 311.925781 C 199.246094 311.925781 203.089844 310.460938 206.023438 307.527344 L 275.914062 237.636719 C 281.777344 231.769531 281.777344 222.257812 275.914062 216.394531 C 270.046875 210.523438 260.535156 210.523438 254.667969 216.394531 Z M 254.667969 216.394531 "
                                      style=" stroke:none;fill-rule:nonzero;fill:rgb(0%,0%,0%);fill-opacity:1;"/>
                            </g>
                        </svg>
                    </div>
                    <div class="detail-box">
                        <h6>
                            An toàn
                        </h6>
                        <p>
                            Ai nuôi bé nào đi thăm bé đó.
                            Tuyệt đối không đưa trẻ ra khỏi địa bàn
                        </p>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="content-box">
                    <div class="img-box">
                        <svg version="1.1" id="Capa_3" xmlns="http://www.w3.org/2000/svg"
                             xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 512 512"
                             style="enable-background:new 0 0 512 512;" xml:space="preserve">
                <g>
                    <g>
                        <path d="M44.07,403.93C42.21,402.07,39.63,401,37,401s-5.21,1.069-7.07,2.93C28.07,405.79,27,408.37,27,411s1.07,5.21,2.93,7.069
                 C31.79,419.93,34.37,421,37,421s5.21-1.07,7.07-2.931C45.93,416.21,47,413.63,47,411S45.93,405.79,44.07,403.93z"/>
                    </g>
                </g>
                            <g>
                                <g>
                                    <path d="M445.627,115.988c-0.004-0.003-0.008-0.007-0.013-0.01l-66.666-45.032c-12.782-8.634-28.008-11.83-42.585-9.68
                 c0.651-3.141,0.992-6.369,0.992-9.651c0-12.579-4.899-24.405-13.794-33.301l-4.521-4.521C310.146,4.898,298.319,0,285.74,0
                 c-12.579,0-24.406,4.898-33.302,13.794c-8.895,8.896-13.793,20.722-13.793,33.302c0,12.579,4.899,24.405,13.793,33.3l4.521,4.522
                 c5.665,5.664,12.521,9.7,20,11.89l-67.283,50.694c-4.282,3.226-7.391,7.463-9.218,12.145c-4.842-0.978-9.974-0.704-14.882,1.049
                 l-65.179,23.26c2.381-5.627,3.698-11.809,3.698-18.293v-6.394c0-25.968-21.127-47.095-47.095-47.095s-47.095,21.127-47.095,47.095
                 v6.394c0,18.069,10.234,33.785,25.205,41.68C38.195,214.491,27,231.198,27,249.722V369c0,5.522,4.477,10,10,10s10-4.478,10-10
                 v-18.3h39.443c2.082,0,4.015-0.638,5.616-1.727l45.219-30.695c4.445-3.017,9.634-4.611,15.005-4.611
                 c14.731,0,26.716,11.984,26.716,26.715v61.974l-28,11.205V363.5c0-3.601-1.936-6.923-5.067-8.699
                 c-3.131-1.775-6.976-1.731-10.066,0.117L85.2,385.228c-6.292,3.764-10.2,10.657-10.2,17.989V492H47v-41.98c0-5.522-4.477-10-10-10
                 s-10,4.478-10,10V502c0,5.522,4.477,10,10,10h48c5.523,0,10-4.478,10-10v-98.783c0-0.337,0.18-0.654,0.468-0.826L131,381.135V502
                 c0,5.522,4.477,10,10,10h334c5.523,0,10-4.478,10-10V188.722C485,159.263,470.284,132.089,445.627,115.988z M271.102,70.777
                 l-4.521-4.523c-5.118-5.117-7.936-11.921-7.936-19.158c0-7.238,2.818-14.042,7.936-19.159C271.698,22.818,278.502,20,285.74,20
                 s14.041,2.818,19.159,7.937l4.521,4.521c10.564,10.563,10.564,27.754,0,38.318C298.855,81.34,281.665,81.34,271.102,70.777z
                  M221.712,163.475l99.208-74.748c13.748-10.357,32.569-10.842,46.833-1.208l55.437,37.447l-48.926,39.357l-38.37-25.919
                 c-2.77-1.872-6.292-2.236-9.387-0.968l-97.01,39.726c-3.602,1.472-7.809,0.071-9.808-3.262c-0.009-0.016-0.019-0.031-0.028-0.047
                 C217.598,170.372,218.479,165.91,221.712,163.475z M49.905,165.663v-6.394c0-14.94,12.155-27.095,27.095-27.095
                 s27.095,12.154,27.095,27.095v6.394c0,14.94-12.155,27.096-27.095,27.096S49.905,180.604,49.905,165.663z M107,262.333v52.327
                 L83.371,330.7H47v-27.033v-53.945c0-10.97,6.941-20.816,17.272-24.503l128.025-45.688c3.565-1.271,7.557,0.168,9.487,3.425
                 c2.121,3.578,1.097,8.226-2.33,10.581l-88.118,60.555C108.622,255.957,107,259.039,107,262.333z M152.284,293.667
                 c-9.012,0-17.726,2.574-25.284,7.442v-33.515l83.782-57.575c4.767-3.276,8.207-7.813,10.173-12.877
                 c1.854,0.38,3.748,0.583,5.655,0.583c3.516,0,7.068-0.664,10.467-2.056l92.058-37.697l39.736,26.841
                 c8.849,6.784,14.13,17.469,14.13,28.625V292h-19.667c-2.213,0-4.363,0.734-6.115,2.087L257.817,370.9L199,394.395v-54.013
                 C199,314.623,178.043,293.667,152.284,293.667z M465,492H151v-56.894l115.534-46.153c0.862-0.344,1.671-0.806,2.405-1.373
                 L366.747,312H465V492z M465,292h-20v-78.867c0-5.522-4.477-10-10-10s-10,4.478-10,10V292h-22v-78.562
                 c0-13.213-4.771-25.998-13.125-36.005l50.453-40.585C455.89,149.477,465,168.391,465,188.722V292z"/>
                                </g>
                            </g>
                            <g>
                                <g>
                                    <path d="M427,352.333h-23.333c-5.523,0-10,4.478-10,10c0,5.522,4.477,10,10,10H417V411c0,5.522,4.477,10,10,10s10-4.478,10-10
                 v-48.667C437,356.811,432.523,352.333,427,352.333z"/>
                                </g>
                            </g>
                            <g>
                                <g>
                                    <path d="M434.07,442.951c-1.86-1.861-4.44-2.931-7.07-2.931s-5.21,1.07-7.07,2.931c-1.86,1.859-2.93,4.439-2.93,7.069
                 s1.07,5.21,2.93,7.07s4.44,2.93,7.07,2.93s5.21-1.069,7.07-2.93c1.86-1.861,2.93-4.44,2.93-7.07S435.93,444.81,434.07,442.951z"/>
                                </g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
                            <g>
                            </g>
              </svg>
                    </div>
                    <div class="detail-box">
                        <h6>
                            Sự quan tâm
                        </h6>
                        <p>
                            “Trẻ em hôm nay, thế giới ngày mai”
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="content-box">
                    <div class="img-box">
                        <svg height="512" viewBox="0 0 44 60" width="512" xmlns="http://www.w3.org/2000/svg">
                            <g id="007---Vegan-Certified">
                                <path id="Shape"
                                      d="m2.51 27.21c.41 1.53-.65 3.91.44 5.78s3.73 2.2 4.78 3.26c.66341509.9402255 1.22965215 1.94538 1.69 3l-5.3 15.47c-.24986143.8046502.03135368 1.6795957.70323859 2.1879887.6718849.5083929 1.59032712.541188 2.29676141.0820113l3.32-2.35 1.17 3.89c.2470407.8346382 1.0055339 1.4136582 1.8757731 1.4319309s1.652369-.5283981 1.9342269-1.3519309l5.18-14.91c.894629.3801265 1.905371.3801265 2.8 0l5.14 14.95c.2818579.8235328 1.0639877 1.3702036 1.9342269 1.3519309s1.6287324-.5972927 1.8757731-1.4319309l1.17-3.89 3.32 2.32c.7064343.4591767 1.6248765.4263816 2.2967614-.0820113.6718849-.508393.9531-1.3833385.7032386-2.1879887l-5.26-15.44c.4621021-1.0517589 1.0247145-2.0564238 1.68-3 1.09-1.12 3.74-1.42 4.79-3.29s.05-4.3.44-5.78 2.51-3.03 2.51-5.22-2.14-3.82-2.51-5.22.65-3.91-.44-5.78-3.73-2.2-4.78-3.26-1.38-3.74-3.27-4.8-4.3 0-5.78-.43-3.02-2.51-5.22-2.51-3.81 2.13-5.22 2.51c-1.56.41-3.9-.66-5.78.43s-2.19 3.72-3.26 4.79-3.74 1.38-4.74 3.27 0 4.3-.44 5.78-2.56 3.01-2.56 5.22 2.13 3.79 2.51 5.21zm11.06 30.79-1.17-3.91c-.1976033-.6096465-.6753934-1.0876735-1.2849419-1.2855789-.6095485-.1979053-1.27701924-.0917163-1.7950581.2855789l-3.32 2.32c5.36-15.61 4.9-14.41 5-14.41 1.84 1.07 4.3 0 5.78.43.7212439.3095798 1.3946823.7203773 2 1.22zm21.11-5c-.5317197-.3750147-1.2126328-.4679309-1.8253891-.2490894-.6127563.2188416-1.0807556.7220836-1.2546109 1.3490894l-1.17 3.9-5.26-15.31c.6003733-.5039265 1.2749967-.9120736 2-1.21 1.57-.42 3.9.65 5.78-.44.1-.06-.35-1.22 5 14.36zm-31.56-33.3c1.43-2 1.63-2.66 1.4-5.25s-.09-2.77 2.24-3.84 2.79-1.54 3.85-3.86 1.39-2.46 3.85-2.23 3.23 0 5.25-1.4 2.47-1.49 4.58 0 2.71 1.62 5.25 1.4 2.78-.09 3.85 2.23 1.55 2.79 3.85 3.86 2.47 1.34 2.24 3.84 0 3.24 1.4 5.25 1.49 2.47 0 4.58-1.63 2.66-1.4 5.25.09 2.77-2.24 3.85-2.78 1.53-3.85 3.85-1.34 2.46-3.85 2.24-3.23 0-5.25 1.39-2.47 1.49-4.58 0c-1.0423154-.9426353-2.3946995-1.4693533-3.8-1.48-1.44 0-3.07.41-3.91-.07-1.15-.67-1.46-3.09-2.85-4.47s-3.82-1.72-4.47-2.84.27-3.4-.24-5.29-2.44-3.38-2.44-4.71c.15146417-.856136.53941752-1.6528259 1.12-2.3z"/>
                                <path id="Shape"
                                      d="m22 37c8.2842712 0 15-6.7157288 15-15s-6.7157288-15-15-15-15 6.7157288-15 15 6.7157288 15 15 15zm0-28c7.1797017 0 13 5.8202983 13 13s-5.8202983 13-13 13-13-5.8202983-13-13c0-3.4478144 1.3696389-6.7544152 3.8076118-9.1923882 2.437973-2.4379729 5.7445738-3.8076118 9.1923882-3.8076118z"/>
                                <path id="Shape"
                                      d="m15.05 25.23c.5326668-.0266663.9506671-.4666665.95-1-.04701-1.7723836.6491214-3.4837067 1.92-4.72 1.51-1.5 3.29-1.9 5.48-2.27 1.5112798-.2598751 2.9558943-.8173263 4.25-1.64 1.3 5-1.07 11.2-6 12.84-1.1557039.3803653-2.3633585.5793921-3.58.59 1.4512518-2.7056317 3.503907-5.0422376 6-6.83.2152922-.1561269.3595264-.3915809.400811-.6543011.0412846-.2627203-.0237813-.5310643-.180811-.7456989-.3245963-.4421183-.9447379-.5402702-1.39-.22-3.2408451 2.2460799-5.7761199 5.3674853-7.31 9-.1029087.2892167-.0672774.6096747.0966476.8692226.1639249.2595479.4379782.4294236.7433524.4607774 5.23.56 9.93-1.56 12.26-6.6 1.5594824-3.3648605 1.7106785-7.2131594.42-10.69-.1144927-.2847517-.3534014-.5011592-.6480543-.5870183-.2946529-.0858592-.6124138-.0316601-.8619457.1470183-1.3294676 1.0397446-2.8903874 1.7430162-4.55 2.05-2.45.41-4.63.91-6.56 2.82-1.6608428 1.6355323-2.5634345 3.8901991-2.49 6.22.0103478.2671046.1272025.5189482.3244812.6993174.1972788.1803692.4585583.2742482.7255188.2606826z"/>
                            </g>
                        </svg>
                    </div>
                    <div class="detail-box">
                        <h6>
                            Chứng nhận
                        </h6>
                        <p>
                            Tổ chức đã được tin cậy
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="content-box">
                    <div class="img-box">
                        <svg height="496pt" viewBox="-24 0 496 496" width="496pt" xmlns="http://www.w3.org/2000/svg">
                            <path d="m416 80c-17.648438 0-32 14.351562-32 32v101.230469l-16.65625 21.195312c-2.511719-10.554687-12.023438-18.425781-23.34375-18.425781h-1.046875c-6.632813 0-13.023437 2.785156-17.546875 7.625l-98.644531 105.695312c-1.042969 1.113282-1.867188 2.367188-2.761719 3.574219-.894531-1.207031-1.71875-2.460937-2.761719-3.574219l-98.644531-105.695312c-4.523438-4.839844-10.914062-7.625-17.546875-7.625h-1.046875c-11.320312 0-20.832031 7.871094-23.34375 18.433594l-16.65625-21.203125v-101.230469c0-17.648438-14.351562-32-32-32s-32 14.351562-32 32v136c0 1.335938.335938 2.65625.976562 3.832031l48 88c.367188.664063.832032 1.289063 1.367188 1.824219l62.632812 62.632812c4.464844 4.464844 7.023438 10.648438 7.023438 16.96875v66.742188c0 4.414062 3.585938 8 8 8h192c4.414062 0 8-3.585938 8-8v-66.742188c0-6.320312 2.558594-12.496093 7.023438-16.96875l62.632812-62.632812c.535156-.535156 1-1.160156 1.367188-1.824219l48-88c.640624-1.175781.976562-2.496093.976562-3.832031v-136c0-17.648438-14.351562-32-32-32zm-291.710938 312.976562-61.816406-61.816406-46.472656-85.199218v-133.960938c0-8.824219 7.175781-16 16-16s16 7.175781 16 16v104c0 1.792969.601562 3.527344 1.710938 4.945312l88 112 12.578124-9.882812-54.289062-69.101562v-13.960938c0-4.40625 3.59375-8 8-8h1.046875c2.210937 0 4.335937.929688 5.847656 2.535156l98.65625 105.695313c4.152344 4.464843 6.449219 10.28125 6.449219 16.386719v91.382812h-80v-26.742188c0-10.691406-4.160156-20.730468-11.710938-28.28125zm11.710938 71.023438h80v16h-80zm96 16v-16h80v16zm200-234.039062-46.472656 85.191406-61.816406 61.816406c-7.550782 7.558594-11.710938 17.597656-11.710938 28.289062v26.742188h-80v-91.382812c0-6.105469 2.296875-11.921876 6.457031-16.378907l98.65625-105.695312c1.503907-1.613281 3.628907-2.542969 5.839844-2.542969h1.046875c4.40625 0 8 3.59375 8 8v13.960938l-54.289062 69.09375 12.578124 9.882812 88-112c1.109376-1.410156 1.710938-3.144531 1.710938-4.9375v-104c0-8.824219 7.175781-16 16-16s16 7.175781 16 16zm0 0"/>
                            <path d="m224 256c70.574219 0 128-57.425781 128-128s-57.425781-128-128-128-128 57.425781-128 128 57.425781 128 128 128zm0-16c-58.121094 0-106.015625-44.511719-111.457031-101.230469l18.769531-18.769531h12.6875c2.121094 0 4.160156-.839844 5.65625-2.34375l13.65625-13.65625h12.6875c2.121094 0 4.160156-.839844 5.65625-2.34375l32-32c1.503906-1.496094 2.34375-3.535156 2.34375-5.65625v-12.6875l13.65625-13.65625c1.503906-1.496094 2.34375-3.535156 2.34375-5.65625v-15.59375c14.238281 1.019531 27.71875 4.699219 40 10.554688v17.726562l-13.65625 13.65625c-1.503906 1.496094-2.34375 3.535156-2.34375 5.65625v12.6875l-13.65625 13.65625c-1.503906 1.496094-2.34375 3.535156-2.34375 5.65625v16c0 2.121094.839844 4.160156 2.34375 5.65625l13.65625 13.65625v12.6875c0 2.121094.839844 4.160156 2.34375 5.65625l16 16c1.496094 1.503906 3.535156 2.34375 5.65625 2.34375h12.6875l23.480469 23.480469c-20.222657 29.273437-53.976563 48.519531-92.167969 48.519531zm112-112c0 17.648438-4.214844 34.296875-11.519531 49.167969l-22.824219-22.824219c-1.496094-1.503906-3.535156-2.34375-5.65625-2.34375h-12.6875l-11.3125-11.3125v-12.6875c0-2.121094-.839844-4.160156-2.34375-5.65625l-13.65625-13.65625v-9.375l13.65625-13.65625c1.503906-1.496094 2.34375-3.535156 2.34375-5.65625v-12.6875l13.65625-13.65625c1.503906-1.496094 2.34375-3.535156 2.34375-5.65625v-11.785156c28.976562 20.265625 48 53.824218 48 91.785156zm-120-111.59375v12.28125l-13.65625 13.65625c-1.503906 1.496094-2.34375 3.535156-2.34375 5.65625v12.6875l-27.3125 27.3125h-12.6875c-2.121094 0-4.160156.839844-5.65625 2.34375l-13.65625 13.65625h-12.6875c-2.121094 0-4.160156.839844-5.65625 2.34375l-9.679688 9.679688c5.710938-53.511719 49.289063-95.765626 103.335938-99.617188zm0 0"/>
                            <path d="m240 164.6875v-20.6875c0-2.121094-.839844-4.160156-2.34375-5.65625l-16-16c-1.496094-1.503906-3.535156-2.34375-5.65625-2.34375h-16c-2.121094 0-4.160156.839844-5.65625 2.34375l-13.65625 13.65625h-28.6875c-4.414062 0-8 3.585938-8 8v40c0 4.414062 3.585938 8 8 8h12.6875l13.65625 13.65625c1.496094 1.503906 3.535156 2.34375 5.65625 2.34375h12.6875l13.65625 13.65625c1.496094 1.503906 3.535156 2.34375 5.65625 2.34375h16c2.121094 0 4.160156-.839844 5.65625-2.34375l16-16c1.503906-1.496094 2.34375-3.535156 2.34375-5.65625v-16c0-2.121094-.839844-4.160156-2.34375-5.65625zm0 32-11.3125 11.3125h-9.375l-13.65625-13.65625c-1.496094-1.503906-3.535156-2.34375-5.65625-2.34375h-12.6875l-13.65625-13.65625c-1.496094-1.503906-3.535156-2.34375-5.65625-2.34375h-8v-24h24c2.121094 0 4.160156-.839844 5.65625-2.34375l13.65625-13.65625h9.375l11.3125 11.3125v20.6875c0 2.121094.839844 4.160156 2.34375 5.65625l13.65625 13.65625zm0 0"/>
                        </svg>
                    </div>
                    <div class="detail-box">
                        <h6>
                            Môi trường hạnh phúc
                        </h6>
                        <p>
                            Lan tỏa tình yêu thương của cộng đồng, xã hội tới những em nhỏ có hoàn cảnh khó khăn
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- end offer section -->

<!-- about section -->
<section class="about_section">
    <div class="container-fluid">
        <div class="row" style="margin-left: 0; margin-right: 0">
            <div class="col-md-6">
                <div class="img-box">
                    <img src="  images/about-img.jpg" alt="">
                </div>
            </div>
            <div class="col-md-5 col-lg-4">
                <div class="detail-box">
                    <div class="heading_container">
                        <h2>
                            Một vài thứ về chúng tôi
                        </h2>
                    </div>
                    <p>
                        Nuôi Em là một dự án phi lợi nhuận được tổ chức bởi những bạn trẻ tình nguyện viên ở khắp cả
                        nước. Chúng tôi mong muốn thắp sáng nụ cười cho những đứa trẻ vùng núi cao đang trong tình cảnh
                        khó khăn.
                        Niềm vui mỗi ngày của bạn là gì? Đọc sách, nghe nhạc, lướt web,...Bạn có từng nghĩ niềm vui của
                        bạn là nhận nuôi một em nhỏ, nó vừa ý nghĩa cho cộng đồng vừa tạo động lực phấn đấu cho bản
                        thân.
                        Bạn sẽ được nhận nuôi một em nhỏ mà không cần phải gặp mặt trực tiếp, vì có khi bạn ở cách xa bé
                        hàng trăm cây số. Chỉ cần mỗi tháng bỏ ra 500.000 đồng, bạn đã có thể giúp các em có một năm học
                        bớt khắc nghiệt hơn, với những bữa ăn có thịt có canh.
                        Trong thời gian nuôi em, bạn có thể liên lạc với dự án, với ba mẹ hoặc thầy cô ở địa bàn để cập
                        nhật thông tin về các em. Đặc biệt, dự án sẽ có những đợt thăm em, bạn được đến tận nơi và thăm
                        những em nhỏ do bạn nhận nuôi trực tiếp. Mình tin rằng khoảnh khắc đó thật sự xúc động!
                        Niềm vui của các bạn sẽ đem lại hạnh phúc cho những thiên thần nhỏ!
                    </p>
                    <div>
                        <a href="">
                            Xem thêm
                        </a>
                    </div>

                </div>
            </div>
        </div>
    </div>


</section>

<!-- end about section -->

<!-- client section -->

<section class="client_section layout_padding">
    <div class="container layout_padding2-top">
        <div class="heading_container">
            <h2>
                Đội ngũ phát triển
            </h2>
        </div>
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <div class="client_container layout_padding">
                        <div class="img-box">
                            <img src="images/thien.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h4>
                                Bùi Bảo Thiện
                            </h4>
                            <h6>
                                Trưởng nhóm
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="client_container layout_padding">
                        <div class="img-box">
                            <img src="images/lien.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h4>
                                Đoàn Thị Mỹ Liên
                            </h4>
                            <h6>
                                Thành viên
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="client_container layout_padding">
                        <div class="img-box">
                            <img src="images/hung.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h4>
                                Huỳnh Lương Phước Hưng
                            </h4>
                            <h6>
                                Thành viên
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="client_container layout_padding">
                        <div class="img-box">
                            <img src="images/lam.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h4>
                                Trần Văn Lâm
                            </h4>
                            <h6>
                                Thành viên
                            </h6>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="client_container layout_padding">
                        <div class="img-box">
                            <img src="images/minh.png" alt="">
                        </div>
                        <div class="detail-box">
                            <h4>
                                Trương Văn Huệ Minh
                            </h4>
                            <h6>
                                Thành viên
                            </h6>
                        </div>
                    </div>
                </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="sr-only">Next</span>
            </a>
        </div>

    </div>
</section>

<!-- end client section -->

<!-- info section -->
<section class="info_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="info_logo">
                    <div>
                        <a href="">
                            <img height="50px" width="50px" src="images/logo.png" alt=""/>
                            <span>
                  Nuôi em
                </span>
                        </a>
                    </div>
                    <p>
                        Dự án cộng đồng mang lại cho trẻ em vùng cao một cuộc sống tốt đẹp hơn. Ngoài ra còn truyền tải
                        đến cá nhân, tổ chức về việc làm thiết thực vì tương lai của các em
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_links ">
                    <h5>
                        Liên hệ
                    </h5>
                    <p class="pr-0 pr-md-4 pr-lg-5">
                        SDT : 0123456789
                    </p>
                    <p class="pr-0 pr-md-4 pr-lg-5">
                        Email : nuoiem@gmail.com
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="info_insta">
                    <h5>
                        Thông tin
                    </h5>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Ngân hàng: Vietcombank
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        STK: 012345678910
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Tên người nhận: Tổ chức Nuôi em
                    </p>
                    <p class="pr-0 pr-md-4 pr-md-5">
                        Chi nhánh: Đà Nẵng
                    </p>
                </div>
            </div>
            <div class="col-md-3">
                <div class="pl-0 pl-lg-5 pl-md-4">
                    <h5>
                        Khu vực

                    </h5>
                    <p>
                        Hà Giang, Cao Bằng, Lào Cai, Bắc Kạn, Lạng Sơn, Tuyên Quang, Yên Bái, Thái Nguyên, Phú Thọ, Bắc
                        Giang, Lai Châu, Điện Biên, Sơn La, Hòa Bình
                    </p>

                </div>
            </div>
        </div>
    </div>
</section>

<!-- end info_section -->

<!-- footer section -->
<section class="container-fluid footer_section">
    <p>
        &copy; 2023 Mọi quyền được bảo lưu bởi
        <a href="#">Nuôi em</a>
    </p>
</section>
<!-- footer section -->

<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

<script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
        var map = new google.maps.Map(document.getElementById("map"), {
            zoom: 11,
            center: {
                lat: 40.645037,
                lng: -73.880224
            }
        });

        var image = "images/maps-and-flags.png";
        var beachMarker = new google.maps.Marker({
            position: {
                lat: 40.645037,
                lng: -73.880224
            },
            map: map,
            icon: image
        });
    }
</script>
<!-- google map js -->

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
</script>
<!-- end google map js -->

<script>
    function openNav() {
        document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
        document.getElementById("myNav").style.width = "0%";
    }
</script>
</body>
</html>
