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
* { margin: 0; background-color: black; }
.wrap { width: 1080px; margin: auto; }
.header { width: 1080px; height: 200px; background-color: black; text-align: center; }

.navdiv{width:100%; background-color: black; }
nav{ background-color: black; width: 1000px; margin-top: 80px; }
nav ul { list-style: none; display: flex; justify-content: flex-end; }
nav ul li { margin: 0 3px; padding: 10px 10px; font-family: "Cambria Math"; font-size: 20px; }
nav ul li a { text-decoration: none; color: white;  }
nav ul li a:hover {
    color: skyblue; padding-bottom: 3px; /* a태그 밑줄과 글씨 간격*/
    border-bottom: 1px solid skyblue; transition: all 0.25s;
}
.title { text-align: center; background-color: black; margin: 10px; display: flex; justify-content: center; margin-top: 50px; }
.content{ margin-top: 50px; }
img{ width: 350px; height: 250px; }
</style> </head> <body>
<div class="wrap">
    <div class="header"> <a href="#top" class="title"><img src="resources/cm.png"> </a> </div>
</div>
<div class="navdiv">
<div class="wrap">
<nav>
    <ul>
	<li><a href="main">HOME</a></li>
	<li><a href="${contextPath }/destiny/NewWebMain.html">DESTINY</a></li> 
	<li><a href="NewWeb/NewWebMain.html">BOARD</a></li> 
	<li><a href="memberlist">MEMBER LIST</a></li> 
	<li><a href="logout">LOGOUT</a></li> 
	</ul>
</nav>
</div>
</div>
<hr>
</body> </html>
