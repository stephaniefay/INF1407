<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
Date agora = new Date();
@SuppressWarnings("deprecation")
int hora = agora.getHours();
if(hora<12) out.print("Bom dia,");
else if(hora<18) out.print("Boa tarde,");
else out.print("Boa noite,");

String nome = request.getParameter("nome");
%>

<%=nome %>!

</body>
</html>