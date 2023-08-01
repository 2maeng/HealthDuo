<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="NPNC"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <NPNC:basic_head />

    <style type="text/css">
    	.contact_section {
    		background-color: #E1F6FA;
    	}
        .signupPhoto {
            width: 500px;
            height: 700px;
            border-radius: 10px;
            padding: 30px 0px 30px 80px;
        }

        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            background-color: #fff;
        }

        .signupForm {
            width: 40%;
            padding-top: 100px;
        }
        .container {
        	border: 2px solid lightgray; 
        	border-radius: 30px;
        
        }

    </style>

</head>

<body>

    <NPNC:basic_body_header />

    <div class="contact_section layout_padding">
        <div class="container">
            <img class="signupPhoto" src="images/signup.png">
            <div class="signupForm">
                <h1 class="contact_taital">회원가입</h1>
                <div class="email_text">
                    <form class="form-group" action="signup.do" method="post">
                        <input class="email-bt" type="text" name="mid" placeholder="아이디 입력" required> <br>
                        <input class="email-bt" type="text" name="nickName" placeholder="닉네임 입력" required> <br>
                        <input class="email-bt" type="text" name="name" placeholder="이름 입력" required> <br>
                        <input class="email-bt" type="password" name="mpw" placeholder="비밀번호 입력" required> <br>
                        <input class="email-bt" type="text" name="email" placeholder="이메일 입력" required> <br>
                        <input class="send_btn_total" type="submit" value="회원가입"> <br>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <NPNC:basic_body_footer />

    <NPNC:basic_body_javascript />

</body>

</html>