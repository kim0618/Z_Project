<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:choose>
		<c:when test="${login == null }">
			<script type="text/javascript">
				alert('아이디 또는 비밀번호가 다릅니다.');
				location.href='login'
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('${login.name}님 환영합니다.');
				location.href='main'
			</script>
		</c:otherwise>
	</c:choose>

</body>
</html>