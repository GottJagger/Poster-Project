<%-- 
    Document   : logout
    Created on : 11/06/2021, 2:07:09 a. m.
    Author     : Gott Jagger
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>


        <%

            session.invalidate();
            response.sendRedirect("http://localhost:8080/ProyectoPost/index.jsp");
        %>
    </body>
</html>
