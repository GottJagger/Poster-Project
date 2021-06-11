<%-- 
    Document   : crearPost
    Created on : 11/06/2021, 2:45:29 a. m.
    Author     : Gott Jagger
--%>

<%@page import="Logica.Post"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="3; url= http://localhost:8080/ProyectoPost/ListarPost.jsp">
        <link rel="stylesheet" href="../miSass/estilos.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </head>
    <body class="bg-dark">
        <%
            Post post = new Post();
            post.setNombreUsuario((String) session.getAttribute("nombreUsuario"));
            post.setTema(request.getParameter("tema"));
            post.setConetidoPost(request.getParameter("conetidoPost"));
            post.setFechaCreacion(request.getParameter("fechaCreacion"));
            post.agregarPost();

            out.print("<script> function success() {swal({ title: 'Felicidades', text: ' Tu post ha sido guardado',icon: 'success', buttons: false});}success(); </script>");
        %>
    </body>
</html>
