<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Resultado</h1>
<%
String aux =null;
String operacao = request.getParameter("operacao");
double n1 =0, n2 =0;
double resultado =0;

try
{
	n1 = Double.parseDouble(request.getParameter("n1"));
	n2 = Double.parseDouble(request.getParameter("n2"));
}
catch(NumberFormatException e)
{
	request.setAttribute("tipo", "erro na entrada de dados");
	request.setAttribute("origem", "calculadora.jsp");
	request.setAttribute("linha", 18);
	request.getRequestDispatcher("trataErro.jsp").forward(request, response);
}
if(operacao.equals("soma")) { resultado = n1 + n2; aux = "+"; }
else if(operacao.equals("subtrai")) { resultado = n1 - n2; aux = "-"; }
else if(operacao.equals("multiplica")) { resultado = n1 * n2; aux = "x"; }
else if(operacao.equals("divide")) { resultado = n1 / n2; aux = "/"; }
else
{
	request.setAttribute("tipo", "erro no tipo de operacao");
	request.setAttribute("origem", "calculadora.jsp");
	request.setAttribute("linha", 29);
	request.getRequestDispatcher("trataErro.jsp").forward(request, response);
}
%>

<%=n1 %> <%=aux %> <%=n2 %> = <%=resultado %>
</body>
</html>