<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COMMIT MEMBERSHIP</title>

<style type="text/css">
.wrap1 { margin: auto; background-color: #000000; width: 1080px; align-items: center; display: flex; justify-content: center;
			margin-top: 40px; margin-bottom: -40px;
		 }
	th{ color:white;  }
	td{ text-align: center; align-items: center; }
	.table{ width: 450px; height: 500px; }
	.id { height: 30px; width: 180px; padding: 10px; border-radius: 10px; border-color: white; color:white; }
	.pw { height: 30px; width: 180px; padding: 10px; border-radius: 10px; border-color: white; color:white;  }
	.name { height: 30px; width: 180px; padding: 10px; border-radius: 10px; border-color: white; color:white;  }
	.addr { height: 30px; width: 180px; padding: 10px; border-radius: 10px; border-color: white; color:white;  }
	.member{ height: 30px; width: 150px; border-radius: 10px; border-color: white; color:white; }
	.log{ height: 30px; width: 100px; border-radius: 10px; border-color: white; color:white; margin-left: 10px; }
	.mem{ color:white; font-family: "Cambria Math"; font-size: 30px;}
</style>

</head>
<body>
	<jsp:include page="header.jsp" />
	
	
	<div class="wrap1">
	<form action="membershipchk" method="post">
		<table style="align-items: center;" class="table">
		<tr>
			<td colspan="2"><h1 class="mem">MEMBERSHIP</h1></td>
		</tr>
		<tr>
		<th>아이디 : </th> <td><input type="text" name="id" placeholder="id" class="id"></td>
		</tr>
		<tr>
		<th>비밀번호 : </th> <td><input type="text" name="pwd" placeholder="password" class="pw"></td>
		</tr>
		<tr>
		<th>이름 : </th> <td><input type="text" name="name" placeholder="name" class="name"></td>
		</tr>
		<tr>
		<th>주소 : </th> <td><input type="text" name="addr" placeholder="addr" class="addr"></td>
		</tr>
		<tr>
			<td><a href="login"><input type="button" value="로그인" class="log"></a></td>
			<td><input type="submit" value="회원가입" class="member"></td>
		</tr>
		</table>
		</form>
	</div>
	
	
	
	
	
	<jsp:include page="footer.jsp" />
	
	

</body>
</html>