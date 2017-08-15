<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Primeira página JSP</title>
</head>
<body>

<!-- aqui vai HTML -->

<%
// aqui vai Java
for(int i=0; i<10; i++) {
	out.println("Número " + i + "<br/>");
}
%>

<!-- aqui vai HTML -->

<%
// aqui vai Java
%>

</body>
</html>