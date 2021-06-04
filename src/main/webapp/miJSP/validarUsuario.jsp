<%-- 
    Document   : validarUsuario
    Created on : 3/06/2021, 10:45:01 p. m.
    Author     : Gott Jagger
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Logica.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Usuarios usuario = new Usuarios();
            String nombreUsuario = request.getParameter("nombreUsuario");

            ArrayList listaUsuarios = (ArrayList) usuario.obtenerUsuarios();
            Iterator iteradorUsuarios = listaUsuarios.iterator();
            while (iteradorUsuarios.hasNext()) {
                Usuarios usuarioRegistro = (Usuarios) iteradorUsuarios.next();
                if (usuarioRegistro.getNombreUsusario().equals(usuario.getNombreUsusario()) || usuarioRegistro.getPass().equals(usuario.getPass())) {
                    out.print(" <script>function error() { swal({ title: 'Oops...',text: 'El usuario ya se encuentra registrado',icon: 'error',buttons: false}); } error();</script>");
                    break;
                } else {
                    out.print("<script> function success() {swal({ title: 'Felicitaciones', text: 'A sido registrado en el sistema',icon: 'success', buttons: false});}success(); </script>");
                    break;
                }
            }
        %>
    </body>
</html>
