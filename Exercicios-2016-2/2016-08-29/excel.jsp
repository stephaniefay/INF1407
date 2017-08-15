<%@ page language="java" contentType="appllication/vnd.excel"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
	<tr>
		<td>1,1</td>
		<td>1,2</td>
		<td>1,3</td>
	</tr>
	<tr>
		<td>2,1</td>
		<td>2,2</td>
		<td>2,3</td>
	</tr>
</table>

<table border="1">
<%
for(int i=0; i< 10; i++)
{
	out.print("<tr>");
	for(int j=0; j<5; j++)
	{
		out.print("<td>" + i + ", " + j + "</td>");
	}
	out.print("</tr>");
}
%>
</table>

</body>
</html>