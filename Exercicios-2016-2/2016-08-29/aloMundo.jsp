<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alo mundo 2</title>
</head>
<body>

<%
out.print("Alo mundo");
%>
<span style="color: #FF0000;">
<%
for(int i=0; i<Math.random()*10; i++)
	out.print("!");
%>
</span>

</body>
</html>