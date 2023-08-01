<%@ tag language="java" pageEncoding="UTF-8"%>

<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- jQuery 사용 -->
    <script
      src="https://code.jquery.com/jquery-3.7.0.min.js"
      integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
      crossorigin="anonymous"
    ></script>

    <!-- slick slider css -->
    <!-- CDN 사용-->
    <link
      rel="stylesheet"
      type="text/css"
      href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
    />
    <!--XEICON CND 사용-->
    <link
      rel="stylesheet"
      href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css"
    />
    <!--script-->
     <!--slick slider 사용가능 -->
    <script
      type="text/javascript"
      src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"
    ></script>


    <style>
      div img {
        width: auto;
        height: auto;
        text-align: center;
      }
      .slider {
        position: relative;
        align-items: center;
      }
      .slider button {
        position: absolute;
        z-index: 10;
        top: 50%;
        transform: translateY(-50);
        width: 81px;
        height: 81px;
        border-radius: 100%;
        background: rgba(0, 0, 0, 0.5);
        border: none;
      }

      .slider button:before {
        font-family: 'xeicon';
        color: #fff;
        font-size: 45px ;
      }
      .slider button.slick-prev {
        left: 50px;
        font-size: 0;
        color: transparent;
      }
      .slider button.slick-prev:before {
        content: "\e93d";
        font-family: 'xeicon';
      }
      .slider button.slick-next {
        right: 50px;
        font-size: 0;
        color: transparent;
      }
      .slider button.slick-next:before {
        content: "\e940";
        font-family: 'xeicon';
      }
      .slider_img {
        align-items: center;
      }
      img {
      	margin-left:auto;
      	margin-right:auto;
      }
    </style>

<!-- HTML 구조 -->
    <section class="slider">
      <div class="slider_img">
        <img
          src="images/logo.png"
          alt="프로젝트 로고"
        />
      </div>
      <div class="slider_img">
        <img
          src="images/about-img.png"
          alt="팀로고"
        />
      </div>
    </section>
 
    <script>
      //$가 있고 선택자가 있으면 jQuery 입니다.
      $(".slider").slick({
        autoplay:true,
        autoplaySpeed: 2000
    });
 
    </script>