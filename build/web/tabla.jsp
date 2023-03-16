<%-- 
    Document   : tabla
    Created on : 14 mar 2023, 19:25:07
    Author     : cesaaaaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Numeros</title>
    </head>
    <body>
        <h1>Mayormenor</h1>
        <% 
        int x = (int)(Math.random()*100);
        if(x<50)
        {
        
        
        %>
        <h1>Es menor a 50</h1>
        <%
            }
             else
{
            %>
            <h1>Es mayor o igual a 50</h1>
            <%
                }  
                %>
                <h1>El valor es <%= x %></h1>
                <a href="MyJsp1.jsp">regresar a tabla </a>
    </body>
</html>
