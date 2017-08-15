<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo de Session</title>
</head>
<body>

<h1>Exemplo de contador com session</h1>
<p>Conteúdo do meu site</p>
<p>Essa é a página 2</p>

<p>
O tempo máximo de inatividade no site é de 
<%=session.getMaxInactiveInterval() %> segundos
</p>
<%
int contador;

synchronized(session)
{
	try
	{
		contador = (Integer)session.getAttribute("conta");
	}
	catch(Exception e)
	{
		contador = 0;
	}
	contador++;
	session.setAttribute("conta", contador);
}
%>
<a href="entrada.jsp">Entrada</a><br/>

<hr/>
As páginas desse site já foram carregadas <%=contador %> vezes por você.
</body>
</html>