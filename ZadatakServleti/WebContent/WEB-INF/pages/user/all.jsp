<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> USERS</title>
</head>
<body>
<h1> ALL USERS</h1>
<c:set value="${pageContext.request.contextPath}" var="context"></c:set>
<jsp:include page="/WEB-INF/pages/template/menu.jsp"></jsp:include>
	<table>
		<tr>
			<th>NAME:</th>
			<th>FIRST NAME:</th>
			<th>LAST NAME:</th>
		</tr>
		<c:forEach items="${applicationScope.users}" var="userAccount">
			<tr>
				<td>${userAccount.username}</td>
				<td>${userAccount.name}</td>
				<td>${userAccount.lastName}</td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>