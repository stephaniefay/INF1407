<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo de Application</title>
</head>
<body>

<h1>Exemplo de contador com application</h1>
<p>Conteúdo do meu site</p>
<p>Entrada</p>
<%
int contador;
	
synchronized(application)
{
	try
	{
		contador = (Integer)application.getAttribute("conta");
	}
	catch(Exception e)
	{
		contador = 0;
	}
	contador++;
	application.setAttribute("conta", contador);
}
%>
<a href="pag2.jsp">Página 2</a><br/>
<hr/>
As páginas desse site já foram carregadas <%=contador %> vezes por você.
</body>
</html>