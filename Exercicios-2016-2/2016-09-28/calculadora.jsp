<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="dados" class="br.com.meslin.calculadora.bean.Dados" scope="request">
	<!-- alguma coisa que vai ser feita (HTML ou Java) se o objeto não existir -->
	<h1>Coloque os valores e aperte o botão apropriado</h1>
</jsp:useBean>

<form action="../acao/Seletor" method="post">
<!-- dados.getRes() -->
<input type="text" name='op1' value='<jsp:getProperty property="res" name="dados"/>'>
<select name="operacao">
	<option>+</option>
	<option>-</option>
	<option>x</option>
	<option>/</option>
</select>
<input type="text" name="op2">
<input type="submit" value=" = " name="acao">
<br/>
<input type="submit" value="x2" name="acao">
<input type="submit" value="Vx" name="acao">
<input type="submit" value="lnx" name="acao">
</form>

</body>
</html>