<%-- 
    Document   : registroUsuario
    Created on : 3/06/2021, 3:51:11 p. m.
    Author     : Gott Jagger
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Logica.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="3; url= http://localhost:8080/ProyectoPost/Registro.html">
        <link rel="stylesheet" href="../miSass/estilos.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

    </head>
    <body class="bg-dark">

        <%
            Usuarios usuario = new Usuarios();
            usuario.setId(request.getParameter("identificacion"));
            usuario.setNombre(request.getParameter("nombre"));
            usuario.setNombreUsusario(request.getParameter("nombreUsuario"));
            usuario.setPass(request.getParameter("password"));

            ArrayList listaUsuarios = (ArrayList) usuario.obtenerUsuarios();
            Iterator iteradorUsuarios = listaUsuarios.iterator();
            while (iteradorUsuarios.hasNext()) {
                Usuarios usuarioRegistro = (Usuarios) iteradorUsuarios.next();
                if (usuarioRegistro.getId().equals(usuario.getId()) || usuarioRegistro.getNombreUsusario().equals(usuario.getNombreUsusario())) {
                    out.print(" <script>function error() { swal({ title: 'Oops...',text: 'El usuario ya se encuentra registrado',icon: 'error',buttons: false}); } error();</script>");
                    break;
                } else {
                    usuario.agregarUsuario();
                    out.print("<script> function success() {swal({ title: 'Felicitaciones', text: 'A sido registrado en el sistema',icon: 'success', buttons: false});}success(); </script>");
                    break;
                }
            }

        %>

    </body>
</html>
