<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>

<!DOCTYPE html>
<html lang="en">

<head>
<style type="text/css">
body {
   background-color: black;
}

#wrapper {
   width: 100%;
   height: 100%;
   position: absolute;
   top: 50%;
   left: 50%;
   text-align: center;
   transform: translate(-50%, -50%);
}

.menu-link {
   width: cover;
   padding: 20px 80px;
   color: #03e9f4;
   text-decoration: none;
   text-transform: uppercase;
   transition: 0.5s;
   letter-spacing: 4px;
   border: 2px solid #03e9f4;
   outline: 0;
   border-radius: 5px;
   font-weight: bold;
}

.menu-link:hover {
   background: #03e9f4;
   color: #fff;
   box-shadow: 0 0 5px #03e9f4, 0 0 25px #03e9f4, 0 0 100px #03e9f4;
}

.log-link {
   padding: 20px 80px;
   color: #FF5675;
   text-decoration: none;
   text-transform: uppercase;
   transition: 0.5s;
   letter-spacing: 4px;
   border: 2px solid #FF5675;
   outline: 0;
   border-radius: 5px;
   font-weight: bold;
}

.log-link:hover {
   background: #FF5675;
   color: #fff;
   box-shadow: 0 0 5px #FF5675, 0 0 25px #FF5675, 0 0 100px #FF5675;
}

ul {
   list-style: none;
   margin-top: 30px;
}

li {
   float: left;
   margin-right: 20px;
}

@font-face {
   font-family: neon;
   src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.neonBox {
   margin: 0;
   padding: 0;
   width: 100%;
   height: 200PX;;
   display: table;
   text-align: center;
   vertical-align: center;
   top: 50%;
   display: flex;
   flex-direction: column;
   justify-content: center;
   align-items: center;
   height: 40vh;
}
.neon, .flux {
            margin: 10px;
        }

@font-face {
  font-family: neon;
  src: url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/707108/neon.ttf);
}

.container {
  display: table-cell;
  text-align: center;
  vertical-align: middle;
}

.neon {
  cursor: pointer;
  font-family: neon;
  color: #FB4264;
  font-size: 6vw;
  line-height: 6vw;
  text-shadow: 0 0 3vw #F40A35;
  margin-top: 60px;
}

.neon-user{
  cursor: pointer;
  font-family: neon;
  color: #fff;
  font-size: 2vw;
  margin-top: 60px;
  text-shadow: 0 0 3vw #F40A35;
}

.neon-user {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon-user {
  0%,
  100% {
    text-shadow: 0 0 1vw #FA1C16, 0 0 3vw #FA1C16, 0 0 10vw #FA1C16, 0 0 10vw #FA1C16, 0 0 .4vw #FED128, .5vw .5vw .1vw #806914;
    color: #FED128;
  }
  50% {
    text-shadow: 0 0 .5vw #800E0B, 0 0 1.5vw #800E0B, 0 0 5vw #800E0B, 0 0 5vw #800E0B, 0 0 .2vw #800E0B, .5vw .5vw .1vw #40340A;
    color: #806914;
  }
}


.flux {
  cursor: pointer;
  font-family: neon;
  color: #426DFB;
  font-size: 5vw;
  line-height: 5vw;
  text-shadow: 0 0 3vw #2356FF;
}
.user {
  cursor: pointer;
  font-family: neon;
  color: #426DFB;
  font-size: 5vw;
  line-height: 5vw;
  text-shadow: 0 0 3vw #2356FF;
}

.neon {
  animation: neon 1s ease infinite;
  -moz-animation: neon 1s ease infinite;
  -webkit-animation: neon 1s ease infinite;
}

@keyframes neon {
  0%,
  100% {
    text-shadow: 0 0 1vw #FA1C16, 0 0 3vw #FA1C16, 0 0 10vw #FA1C16, 0 0 10vw #FA1C16, 0 0 .4vw #FED128, .5vw .5vw .1vw #806914;
    color: #FED128;
  }
  50% {
    text-shadow: 0 0 .5vw #800E0B, 0 0 1.5vw #800E0B, 0 0 5vw #800E0B, 0 0 5vw #800E0B, 0 0 .2vw #800E0B, .5vw .5vw .1vw #40340A;
    color: #806914;
  }
}

.flux {
  animation: flux 2s linear infinite;
  -moz-animation: flux 2s linear infinite;
  -webkit-animation: flux 2s linear infinite;
  -o-animation: flux 2s linear infinite;
}

@keyframes flux {
  0%,
  100% {
    text-shadow: 0 0 1vw #1041FF, 0 0 3vw #1041FF, 0 0 10vw #1041FF, 0 0 10vw #1041FF, 0 0 .4vw #8BFDFE, .5vw .5vw .1vw #147280;
    color: #28D7FE;
  }
  50% {
    text-shadow: 0 0 .5vw #082180, 0 0 1.5vw #082180, 0 0 5vw #082180, 0 0 5vw #082180, 0 0 .2vw #082180, .5vw .5vw .1vw #0A3940;
    color: #146C80;
  }
}

.box1 {
   width: 100%;
   height: 200px;
   display: flex;
   top: 30px;
   justify-content: center;
   align-items: center;
   bottom: 300px;
   
}

.box1 a {
   margin: 10px;
}

.box2 {
   height: 200px;
   display: flex;
   justify-content: center;
   align-items: center;
}

.box2 a {
   margin: 10px;
}

.footer {
   position: fixed;
   background-color: black;
   color: #fff;
   left: 0;
   right: 0;
   bottom: 0;
   height: 6rem;
   font-weight: bold;
   text-align: center;
}

.menu-item a {
  display: inline-block;
  overflow: hidden;
  transition: transform 0.3s;
}

.menu-item a:hover {
  transform: scale(1.2);
}

.log-item a {
  display: inline-block;
  overflow: hidden;
  transition: transform 0.3s;
}

.log-item a:hover {
  transform: scale(1.2);
}

  .center-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }

</style>

</head>

		 <div class="center-content">
        <div class="neonBox">
            <div class="neon">준비중 페이지</div>
            <div class="flux">coming soon</div>
        </div>

        <div class="box1">
            <ul class="menu-nav">
                <li class="menu-item"><a class="menu-link" href="main.do">홈</a></li>
            </ul>
        </div>
    </div>

    <div class="footer">
        <p class="copyright_text">&copy; NPNC corp. | cell. 010-0000-0000
            | email. NPNC@naver.com</p>
    </div>

</body>
</html>