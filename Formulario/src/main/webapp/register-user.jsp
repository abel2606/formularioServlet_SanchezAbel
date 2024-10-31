<%-- 
    Document   : register-user
    Created on : 31 oct 2024, 00:00:08
    Author     : Abe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href=""/>
        <title>Register user</title>
    </head>
    <body>
        <h1>Bienvenido</h1>
        <h2>Hemos obtenido los siguientes datos:</h2>
        <%
            Map<String ,String[]> datosFormulario = request.getParameterMap();
            for(String parametro: datosFormulario.keySet()){
            %>
            <div>
                <span><%=parametro%></span>
                <label>: </label><span><%= String.join(",",datosFormulario.get(parametro)) %></span>
            </div>
            
            <%}%>
        
    </body>
</html>
