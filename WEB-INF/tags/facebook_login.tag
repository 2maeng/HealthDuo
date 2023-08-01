<%@ tag language="java" pageEncoding="UTF-8"%>

<!-- Facebook API와의 통신을 위한 HTML 요소 -->
<div id="fb-root"></div>
<!-- Facebook SDK(소프트웨어 개발 키트)를 불러옴 -->
<script async defer crossorigin="anonymous"
   src="https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v17.0&appId=590307866459528&autoLogAppEvents=1"
   nonce="dQT4DJgb"></script>

<!-- 페이스북 로그인 버튼 -->
<fb:login-button scope="public_profile,email"
   data-button-type="login_with" data-width="185" data-size="medium"
   onlogin="checkLoginState();">
</fb:login-button>

<script>
   // ---[ 페이스북 로그인 ]-------------------------------------------------------------------------------------------------------------------------------------------------
   // This is called with the results from from FB.getLoginStatus().ß
   function statusChangeCallback(response) {
      console.log('페북 로그인 상태 : ' + response.status);
      // response 객체는 현재 로그인 상태를 나타내는 정보를 보여준다. 
      // 앱에서 현재의 로그인 상태에 따라 동작하면 된다.
      if (response.status === 'connected') {
         // 페이스북을 통해서 로그인이 되어있다.
         testAPI();
      }
      // FB.getLoginStatus()를 호출
   }
   // onlogin 핸들러.
   function checkLoginState() {
      FB.getLoginStatus(function(response) { //로그인 상태를 가져온 뒤, 
         statusChangeCallback(response); ////statusChangeCallback() 함수에 결과를 전달
      });
   }

   window.fbAsyncInit = function() {
      FB.init({
         appId : '590307866459528',
         cookie : true, // 쿠키가 세션을 참조할 수 있도록 허용
         xfbml : true, // 소셜 플러그인이 있으면 처리
         version : 'v2.1' // 버전 2.1 사용
      });

      FB.getLoginStatus(function(response) {
         statusChangeCallback(response);
      });
   };

   // 로그인이 성공한 다음에는 간단한 그래프API를 호출한다.
   // 이 호출은 statusChangeCallback()에서 이루어진다.
   function testAPI() {
      console.log(testAPI);
      FB.api('/me?fields=id,name,age_range,birthday,gender,email', function(
            response) {
         console.log('페이스북 이메일 : ' + response.email);
         console.log('페이스북 이름 : ' + response.name);
         document.getElementById('status').innerHTML = response.name;
      });
   }
</script>