<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="../acao/Seletor" method="post">
<!-- dados.getRes() -->
<input type="text" name='op1' value='${requestScope.dados.res }'>
<select name="operacao">
	<option>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>
<input type="text" name="op2">
<input type="submit" value=" = " name="acao">
<br/>
<input type="submit" value="x2" name="acao">
<input type="submit" value="Vx" name="acao">
<input type="submit" value="lnx" name="acao">
</form>

<p>Mensagens:</p>
<c:out value="${erroAcontecido.tipo }"/><br/>
<c:out value="${erroAcontecido.mensagem }">Sem mensagem de erro</c:out>

${erroAcontecido.data.dia }/${erroAcontecido.data.mes }/${erroAcontecido.data.ano2 }<br/>
Dados enviados:<br/>
<c:out value="${param.op1 }" escapeXml="true">sem valor informado</c:out><br/>
<c:out value="${param.op2 }" escapeXml="true" default="sem valor informado"/><br/>
${param.operacao }<br/>
</body>
</html>