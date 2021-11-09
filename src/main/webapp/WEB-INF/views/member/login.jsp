<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COMMIT_PROJECT</title>
<style type="text/css">
.mainTable {
	margin: auto;
}
.wrap2{ width: 1080px; margin: auto;  }
.loginbox{ height: 300px; display: flex; justify-content: center; align-items: center; margin-top: 0px;  }
.login { background-color: black;    }
.lo{ background-color: black; color: white; align-items: center;   }
.id { height: 40px; width: 300px; padding: 10px; border-radius: 10px; border-color: white;  }
.pw { height: 40px; width: 300px; padding: 10px; border-radius: 10px; border-color: white; }
.log{ width: 120px; height: 50px; border-radius: 10px; border-color: white; background-color: black; color: white;}
.mem { color:white; margin-left: 80px; width: 120px; height: 50px; border-radius: 10px; border-color: white; }
h1{ color:white; font-family: "Cambria Math"; margin:auto; text-align: center; margin-top:90px;}
.d{  height: 350px; margin-top:150px; }
</style>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="d">
	<h1>LOGIN</h1>
	<div class="wrap2 login loginbox">
		<form action="chkUser" class="login">
			<input type="text" name="id" placeholder="id" class="lo id"><br><br>
			<input type="password" name="pwd" placeholder="password" class="lo pw"><br><br>
			<input type="submit" value="로그인" class="log">
			<a href="membership"><input type="button" value="회원가입" onclick="" class="mem"></a>
		</form>
	</div>
	</div>
	<jsp:include page="footer.jsp" />

<%
/*		boolean bool = false;
		Cookie[] cookieArr = request.getCookies();
		for(Cookie c : cookieArr){
			out.print("name : "+c.getName()+" : ");
			out.print("value : "+c.getValue()+"<br>");
			if(c.getName().equals("testCookie")){
				bool = true;
			}
			
		}
		Cookie cookie = new Cookie("testCookie","myCookie");
		cookie.setMaxAge(5);
		
		response.addCookie(cookie);*/
	%>
	<%/*if(bool == false){*/ %>
<!-- <script type="text/javascript">
		window.open("j_popup.jsp","","width=450,height=270,top=500,left=500")
	</script>-->	
	<%/*} */%>

</body>
</html>
