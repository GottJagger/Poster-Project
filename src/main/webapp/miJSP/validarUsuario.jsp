<%-- 
    Document   : validarUsuario
    Created on : 11/06/2021, 12:08:58 a. m.
    Author     : Gott Jagger
--%>



<%@page import="java.util.*"%>
<%@page import="java.util.ArrayList"%>

<%@page import="Logica.*"%>
<%@page session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="3; url= http://localhost:8080/ProyectoPost/index.jsp">
        <link rel="stylesheet" href="../miSass/estilos.css"/>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <title>JSP validar</title>
    </head>
    <body class="bg-dark">
        <%
            if (session.isNew()) {
                System.out.println("la session es nueva");

                Usuarios usuario = new Usuarios();
                String nombreUsuario = request.getParameter("nombreUsuario");
                String Password = request.getParameter("password");

                ArrayList listaUsuarios = (ArrayList) usuario.obtenerUsuarios();
                Iterator iteradorUsuarios = listaUsuarios.iterator();
                while (iteradorUsuarios.hasNext()) {
                    Usuarios usrs = (Usuarios) iteradorUsuarios.next();

                    if (usrs.getNombreUsusario().equals(nombreUsuario) || usrs.getPass().equals(Password)) {

                        out.print("<script> function success() {swal({ title: 'Bienvenido', text: '" + usrs.getNombre() + " a tu poster personal ',icon: 'success', buttons: false});}success(); </script>");

                        session.setAttribute("nombreUsuario", nombreUsuario);
                        System.out.println(session.getAttribute("nombreUsuario"));
                        break;
                    } else {
                        out.print(" <script>function error() { swal({ title: 'Oops...',text: 'Verifique si la informacion es correcta',icon: 'error',buttons: false}); } error();</script>");
                        break;
                    }
                }

            } else {

                out.print(" <script>function error() { swal({ title: 'Oops...',text: 'Ya se enecuentra conectado',icon: 'error',buttons: false}); } error();</script>");
                session.invalidate();
            }

        %>
    </body>
</html>