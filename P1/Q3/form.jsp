<%-- 
    Document   : form
    Created on : 19/09/2016, 19:57:42
    Author     : Stephanie Fay
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Saudações!</title>
    <style type="text/css">
    .container {
        width: 500px;
        clear: both;
        margin-left: 30%;
        margin-right: 30%;
    }
    .container input {
        width: 100%;
        clear: both;
    }

    </style>

    </head>
    <body>

        <div class="container">
        <form method="post" action="form.jsp"> 
            <label>Insira seu nome:</label> <input type="text" name="name"><br><br>
            <center><button type="submit">Entrar!</button></center>
            
        </form></div>
        <h1 align="center">
        <%
            String name = request.getParameter("name");
            if (name != null) {
                
            Date date = new Date();
            int hour = date.getHours();
            if (hour < 12) out.print("Bom Dia, " + name);
            else if (hour < 18) out.print("Boa Tarde, " + name);
            else out.print("Boa Noite, " + name);

            }
        %>
        </h1>
        
    </body>
</html>
