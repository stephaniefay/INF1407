<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Exemplo de Cookies</title>
</head>
<body>

<%
int contador;

Cookie listaPossiveisCookies[] = request.getCookies();
Cookie cookieJSP = null;
if (listaPossiveisCookies != null) 
{
	//quando não existe cookies associados o método getCookies() retorna null
  	int numCookies = listaPossiveisCookies.length;
  	for (int i = 0 ; i < numCookies ; ++i)  
  	{
			//procura pelo cookie
  		if (listaPossiveisCookies[i].getName().equals("conta")) 
  		{  
  			cookieJSP = listaPossiveisCookies[i];
			break;
  		}
  	}
}

if(cookieJSP==null)
	contador = 0;
else
	contador = Integer.parseInt(cookieJSP.getValue());
contador++;

cookieJSP = new Cookie("conta", new Integer(contador).toString());
//tempo de vida = 7 dias (604800 segundos)
cookieJSP.setMaxAge(7 * 24 * 60 * 60);
//o cookie pode ser transferido por HTTP padrão
cookieJSP.setSecure(false);                   
//grava o cookie na máquina do usuário 
response.addCookie(cookieJSP);
%>
<a href="entrada.jsp">Entrada</a><br/>
<hr/>
As páginas desse site já foram carregadas <%=contador %> vezes por você.
</body>
</html>