<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="refresh" content="5">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>Nick</td>
		<td>Texto</td>
		<td>IP</td>
	</tr>

	<c:choose>
		<c:when test="${!empty applicationScope.lista }">
			<c:forEach var="item" items="${applicationScope.lista }">
				<tr>
					<td><c:out value="${item.nick }" escapeXml="true">anônimo</c:out></td>
					<td><c:out value="${item.texto }" escapeXml="true" default="sem texto"/></td>
					<td><c:out value="${item.ip }" escapeXml="true"/></td>
				</tr>
			</c:forEach>	
		</c:when>
		<c:otherwise>
			<tr><td colspan='3'>Sem conversação</td></tr>
		</c:otherwise>
	</c:choose>
</table>

</body>
</html>