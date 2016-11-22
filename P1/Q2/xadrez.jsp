<%-- 
    Document   : xadrez
    Created on : 19/09/2016, 19:48:17
    Author     : Stephanie Fay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabuleiro de Xadrez</title>
    </head>
    <body>

    <table>
    <% 
        int flag = 0;
        for (int coluna = 0; coluna < 8; coluna++) {
            out.println("<tr>");
            for (int linha = 0; linha < 8; linha++) {
                if (flag == 0) {
                    out.println("<td bgcolor='#fff' width='30px' height='30px'>   </td>");
                    flag++;
                }
                else if (flag == 1) {
                    out.println("<td bgcolor='#000' width='30px' height='30px'>   </td>");
                    flag--;
                }
            }
            if (flag == 0) flag = 1;
                else flag = 0;
            out.println("</tr>");
        }
    %>
    </table>
    </body>
</html>
