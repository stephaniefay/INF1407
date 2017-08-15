<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Série de Fibonacci</title>
</head>
<body>

<%!
	int fibo(int n)
	{
		if(n == 0) return 0;
		if(n == 1) return 1;
		return fibo(n-1) + fibo(n-2);
	}
%>

<%
	int n = (int)(Math.random()*10) +1;
	out.print("Fibonacci para " + n + " é " + fibo(n));
%>

</body>
</html>