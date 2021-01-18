<%-- 
    Document   : notaMedia
    Created on : 15-ene-2021, 21:03:19
    Author     : DAW-B
--%>

<%@page import="clases.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nota Media</h1>
        <%
            float nota1 = Float.parseFloat(request.getParameter("nota1"));
            float nota2 = Float.parseFloat(request.getParameter("nota2"));
            float nota3 = Float.parseFloat(request.getParameter("nota3"));
            String nombre = request.getParameter("nombre");
            
            Alumno a = new Alumno(nota1, nota2, nota3, nombre);
        %>
        <p>Nombre: <%= a.getNombre() %></p>
        <p> Nota media: <%= a.getMedia() %></p>
        <% if (a.getMedia() >= 5) { %>
        <p style="color: green">Aprobado</p>
        <% } else {%>
        <p style="color: red">Suspenso</p>
        <%}%>

    </body>
</html>
