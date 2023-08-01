<%@ tag language="java" pageEncoding="UTF-8"%>

<!-- 구글 로그인 버튼 -->
<div class="google_login">
	<div id="g_id_onload"
		data-client_id="742345547790-hcm827chb6v7006pdfjcdssef10iu22l.apps.googleusercontent.com"
		data-callback="handleCredentialResponse"></div>
	<div class="g_id_signin" data-type="standard" data-size="medium"
		data-text="signin_with" data-shape="rectangular" data-width=185></div>
</div>

<script>
	// ---[ 구글 로그인 ]-------------------------------------------------------------------------------------------------------------------------------------------------
	function handleCredentialResponse(response) {
		// decodeJwtResponse() is a custom function defined by you
		// to decode the credential response.
		const responsePayload = parseJwt(response.credential);

		$('#status').append(responsePayload.name);
		//$('#status').append('<li>ID: ' + responsePayload.sub + '</li>');
		//$('#status').append('<li>Email: ' + responsePayload.email + '</li>');
		//$('#status').append('<li>Name: ' + responsePayload.name + '</li>');
		//$('#status').append('<li>Image: <img src=" ' + responsePayload.picture + '"></li>');
		console.log("구글 ID : " + responsePayload.sub);
		console.log("구글 Email : " + responsePayload.email);
		console.log("구글 Name : " + responsePayload.name);
		console.log("구글 프로필 사진 URL: " + responsePayload.picture);
	};

	function parseJwt(token) {
		var base64Url = token.split('.')[1];
		var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
		var jsonPayload = decodeURIComponent(atob(base64).split('').map(
				function(c) {
					return '%'
							+ ('00' + c.charCodeAt(0).toString(16)).slice(-2);
				}).join(''));
		return JSON.parse(jsonPayload);
	};
</script>
