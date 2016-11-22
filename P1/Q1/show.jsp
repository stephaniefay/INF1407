<%-- 
    Document   : show
    Created on : 19/09/2016, 19:32:45
    Author     : Stephanie Fay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exibe Informações</title>
    </head>
    <body>
        
        <%
            Cookie name = new Cookie("name", request.getParameter("name"));
            Cookie surname = new Cookie("surname", request.getParameter("surname"));
            Cookie email = new Cookie("email", request.getParameter("email"));
            
            name.setMaxAge(30 * 24 * 60 * 60);
            surname.setMaxAge(30 * 24 * 60 * 60);
            email.setMaxAge(30 * 24 * 60 * 60);

            name.setSecure(false);
            surname.setSecure(false);
            email.setSecure(false);

            response.addCookie(name);
            response.addCookie(surname);
            response.addCookie(email);

        %>
        

        <h1>Informações Coletadas:</h1>
        
        Nome: <%= request.getParameter("name") %><br>
        Sobrenome: <%= request.getParameter("surname") %><br>
        Email: <%= request.getParameter("email") %><br>
        
        <br><br>
        <a href="form.jsp">Voltar para página anterior</a>
                
        
    </body>
</html>
