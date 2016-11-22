<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>

<html>
    <head>
        <title>Calculadora</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
        <style>
            .celula {
                width: 400px;
                float: left;
            }
            
            #esquerda {
                text-align: center;
            }
            
        </style>
    
    </head>
    <body>

        <div class="celula" id="esquerda">
            <form action="Seletor" method="post">
                <input type="text" name="op1" value="${requestScope.dados.res }">
                <select name="operacao">
                    <option>+</option>
                    <option>-</option>
                    <option>*</option>
                    <option>/</option>
                </select>
                <input type="text" name="op2">
                <input type="submit" value=" = " name="acao">
                <br>
                <input type="submit" value=" ln(x) " name="acao">
                <input type="submit" value=" x^2 " name="acao">
                <input type="submit" value=" sqrt(x) " name="acao">
                <input type="submit" value=" log(x) " name="acao">
            </form>
        </div>
        
        <div class="celula">
            Memória do Cálculo: <br>
            <c:choose>
                <c:when test="${requestScope.dados.op}">
                    <c:out value="${requestScope.dados.op1 } ${requestScope.dados.operacao } ${requestScope.dados.op2 } ${requestScope.dados.acao} ${requestScope.dados.res }" escapeXml="true" default=" "/><br/>
                </c:when>
                <c:otherwise>
                    <c:out value=" ${requestScope.dados.acao} ${requestScope.dados.op1} = ${requestScope.dados.res}" escapeXml="true" default=" "/><br>
                </c:otherwise>
            </c:choose>
            
        </div>

    </body>
</html>
