<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Contador</title>
</head>
<body>

<%
	int cont1 =0;
%>

<%!
	int cont2 =0;
%>

<%
	cont1++;
	synchronized(this)
	{
		cont2++;
	}
	out.print("Essa página foi carregada " + cont1 + " vezes.<br/>");
	out.print("Essa página foi carregada " + cont2 + " vezes.<br/>");
%>

<span style="font-size: 31px;">
Essa página foi carregada <% out.print(cont2); %> vezes.<br/>
Essa página foi carregada <%=cont2 %> vezes.<br/>
</span>

</body>
</html>