<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<p>Mensagens:</p>
${erroAcontecido.tipo }<br/>
${erroAcontecido.mensagem }<br/>
${erroAcontecido.data.dia }/${erroAcontecido.data.mes }/${erroAcontecido.data.ano2 }<br/>
Dados enviados:<br/>
${param.op1 }<br/>
${param.op2 }<br/>
${param.operacao }<br/>

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
${erroAcontecido.tipo }<br/>
${erroAcontecido.mensagem }<br/>
${erroAcontecido.data.dia }/${erroAcontecido.data.mes }/${erroAcontecido.data.ano2 }<br/>
Dados enviados:<br/>
${param.op1 }<br/>
${param.op2 }<br/>
${param.operacao }<br/>
</body>
</html>