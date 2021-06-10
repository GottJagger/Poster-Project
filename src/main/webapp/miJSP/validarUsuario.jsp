<%-- 
    Document   : validarUsuario
    Created on : 3/06/2021, 10:45:01 p. m.
    Author     : Gott Jagger
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.Usuarios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="3; url= http://localhost:8080/ProyectoPost/Index.html">
        <link rel="stylesheet" href="../miSass/estilos.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
     
            if (sesion.isNew()) {
                Usuarios usuario = new Usuarios();
                String nombreUsuario = request.getParameter("nombreUsuario");
                String Password = request.getParameter("password");

                ArrayList listaUsuarios = (ArrayList) usuario.obtenerUsuarios();
                Iterator iteradorUsuarios = listaUsuarios.iterator();
                while (iteradorUsuarios.hasNext()) {
                    Usuarios usr = (Usuarios) iteradorUsuarios.next();

                    if (usr.getNombreUsusario().equals(nombreUsuario) || usr.getPass().equals(Password)) {
                        out.print("<script> function success() {swal({ title: 'Bienvenido', text: '" + usr.getNombre() + "' a tu poster personal ,icon: 'success', buttons: false});}success(); </script>");
                        session.setAttribute("nombreUsuario", nombreUsuario);
                        break;
                    } else {
                        out.print(" <script>function error() { swal({ title: 'Oops...',text: 'Verifique si la informacion es correcta',icon: 'error',buttons: false}); } error();</script>");
                        break;
                    }
                }
                
            } else {
                out.print(" <script>function error() { swal({ title: 'Oops...',text: 'ya se encuentra conectado',icon: 'warning',buttons: false}); } error();</script>");
            }

        %>
    </body>
</html>
