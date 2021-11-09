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
		<c:when test="${mem == null }">
			<script type="text/javascript">
				alert('중복된 아이디 입니다.');
				location.href='membership'
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('${mem.name}님 회원가입을 환영합니다.');
				location.href='login'
			</script>
		</c:otherwise>
	</c:choose>


</body>
</html>