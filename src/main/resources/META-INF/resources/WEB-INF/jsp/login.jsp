<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p th:if="${param.error}" class="error">Invalid email or password</p>
	<form action="login" method="POST">
		Username: <input type="text" name="username" /><br />
		<br /> 
		Password:   <input type="password" name="password" /><br />
		<br /> <input type="submit" value="login" />

		<!-- <input type="hidden" name="_csrf" value="69bce4f5-65c0-4e34-bbb0-cd3bcdabb140" /></form>
 -->
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
		<%-- <sec:authentication var="principal" property="principal" /> --%>
		<%-- ${principal.username} --%>
		
<fb:login-button 
  scope="public_profile,email"
  onlogin="checkLoginState();">
</fb:login-button>
</div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId      : '1339582046163524',
      cookie     : true,
      xfbml      : true,
      version    : 'v2.8'
    });
    FB.AppEvents.logPageView();   
  };

  (function(d, s, id){
     var js, fjs = d.getElementsByTagName(s)[0];
     if (d.getElementById(id)) {return;}
     js = d.createElement(s); js.id = id;
     js.src = "//connect.facebook.net/en_US/sdk.js";
     fjs.parentNode.insertBefore(js, fjs);
   }(document, 'script', 'facebook-jssdk'));
</script>

	</form>
</body>
</html>