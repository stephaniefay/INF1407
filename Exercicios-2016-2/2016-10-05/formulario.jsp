<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="Formulario" method="get">
Oi <c:out value="${sessionScope.nick }" escapeXml="true">Usuário sem nome</c:out>, fala alguma coisa:
<input type="text" name="texto"/>
<input type="submit" value="Vai"/>
</form>

</body>
</html>