<%-- 
    Document   : form
    Created on : 19/09/2016, 19:18:53
    Author     : Stephanie Fay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulário</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <%!
            String name = "";
            String surname = "";
            String email = "";
        %>
        
        <%
            Cookie info [] = request.getCookies();
            
            if ( info != null ) {
                for (Cookie c : info) {
                    if (c.getName().equals("name"))
                        name = c.getValue();
                    if (c.getName().equals("surname"))
                        surname = c.getValue();
                    if (c.getName().equals("email"))
                        email = c.getValue();
                }
            }
        %>
        
        <div class="container">
            <form action="show.jsp" method="post">
                <label>Nome:</label>
                <input type="text" name="name" value="<%= name %>"><br>
                <label>Sobrenome:</label>
                <input type="text" name="surname" value="<%= surname %>"><br>
                <label>Email:</label>
                <input type="email" name="email" value="<%= email %>"><br>
                <br>
                <center><button type="submit">Submit</button></center>
            </form>
        </div>

    </body>
</html>
