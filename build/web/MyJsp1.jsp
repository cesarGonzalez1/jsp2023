<%-- 
    Document   : MyJsp1
    Created on : 7 mar 2023, 21:50:28
    Author     : cesaaaaar
--%>
<%@page import="org.cesar.Datos"%>
<%@page import="org.cesar.negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>JSP Numeros</title>
    </head>
    <body>
     
          <h1> Numeritos </h1> 
          <%
              negocio negocio=new negocio();
              int numero = (int)(Math.random()*1000);
              String cad= String.format("?numero%d", numero);
          %>
          <a href="tabla.jsp<%=cad%>">regresar a numeros </a>
          <a href="tabla.jsp">regresar a numeros v1 </a>
          <div class="container">
             
  
  
          <table class="table table-dark table-striped">
              <tr>
                  <td>Nombre</td>
                  <td>Cal</td>
              </tr>
              <%
                  if(negocio.getLista() != null && !negocio.getLista().isEmpty())
                  {
                  for(Datos datos: negocio.getLista())
                  {
                  %>
                  <tr>
                      <td><%=datos.getNombre()%></td>
                      <td><%=datos.getCalf()%></td>
                  </tr>
                  <%
              }
              }
                  %>
          </table>
          
          </div>
        
    </body>
</html>
