<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<th>NAME</th> <td>${info.name} </td>
		</tr>
		<tr>
			<th>ID</th> <td>${info.id} </td>
		</tr>
		<tr>
			<th>PASSWORD</th> <td>${info.pwd} </td>
		</tr>
		<tr>
			<th>ADDR</th> <td>${info.addr} </td>
		</tr>
	</table>
<jsp:include page="footer.jsp" />
</body>
</html>