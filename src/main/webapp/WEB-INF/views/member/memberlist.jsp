<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.ta { color: white; }
</style>
</head>
<body>

<jsp:include page="header_m.jsp" />

	<table border="1" class="ta">
		<tr>
			<th>NAME</th> <th>ID</th>
		</tr>
		<c:forEach var="userList" items="${list }" >
			<tr>
				<td><a href="memberInfo?user=${userList.id }">${userList.name }</a></td> <td>${userList.id }</td>
			</tr>
		</c:forEach>
		
	</table>

<jsp:include page="footer.jsp" />

</body>
</html>