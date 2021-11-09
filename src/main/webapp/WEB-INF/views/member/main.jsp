<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
     <c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{ margin: 0; }

table{ text-align: center; align-items: center; display: flex; justify-content:center; margin-top: 137px; margin-bottom: 70px;  }
td{ background-color: black; color:white; width: 300px; height: 50px; font-size:15px; }
tr{ background-color: black; color:#6B66FF; width: 300px; height: 50px; font-size:30px;  }
th{ font-family: "Bodoni MT"; }
a{ text-decoration: none; color:white; background-color: none; }
tr td a:hover{ font-size: 20px; background-color: gray; color:#B5B2FF; }
td:hover>a{ background-color: gray; } 
td:hover{ background-color: gray; } 
</style>
</head>
<body>

<c:import url="header_m.jsp"></c:import>


<div class="wrap">

	<table >
		<tr>
			<th>KG</th> <th>Information</th> <th>Portal</th>
		</tr>
		<tr>
			<td><a href="http://mgr.kgitbank.co.kr/" class="sub">Kgitbank</a></td>
			<td><a href="https://github.com/" class="sub">Github</a></td>
			<td><a href="https://www.naver.com/" class="sub">Naver</a></td>
		</tr>
		<tr>
		<td><a href="http://kgjr.atosoft.net/" class="sub">Kg-Atosoft</a></td>
			<td><a href="https://www.w3schools.com/" class="sub">W3Schools</a></td>
			<td><a href="https://www.google.co.kr/" class="sub">Google</a></td>
		</tr>
		<tr>
		<td><a href="https://itbankkr.edueroom.co.kr/" class="sub">E-Room</a></td>
		<td><a href="https://jquery.com/" class="sub">JQuery</a></td>
		<td><a href="https://www.youtube.com/" class="sub">YouTube</a></td>
		</tr>
		<tr>
			<td></td>	<td><a href="https://code.jquery.com/" class="sub">Jquery-cdn</a></td> <td></td>
		</tr>
	</table>

</div>

<c:import url="footer.jsp"></c:import>

</body>
</html>