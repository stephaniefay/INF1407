<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Deu erro</h1>

<%
String tipo;
String origem;
int linha;

tipo = (String)request.getAttribute("tipo");
origem = (String)request.getAttribute("origem");
linha = (int)request.getAttribute("linha");
%>

Ocorreu um erro em "<%=tipo %>".<br/>
O erro aconteceu na linha <%=linha %> 
da página <%=origem %>.<br/>
</body>
</html>